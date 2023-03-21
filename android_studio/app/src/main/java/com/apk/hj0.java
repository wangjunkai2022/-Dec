package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import com.apk.vi0;
import com.bytedance.msdk.api.reward.RewardItem;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Http2Writer.kt */
/* loaded from: classes7.dex */
public final class hj0 implements Closeable {

    /* renamed from: else  reason: not valid java name */
    public static final Logger f1867else = Logger.getLogger(wi0.class.getName());

    /* renamed from: case  reason: not valid java name */
    public final boolean f1868case;

    /* renamed from: do  reason: not valid java name */
    public final rk0 f1869do;

    /* renamed from: for  reason: not valid java name */
    public boolean f1870for;

    /* renamed from: if  reason: not valid java name */
    public int f1871if;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public final vi0.Cif f1872new;

    /* renamed from: try  reason: not valid java name */
    public final sk0 f1873try;

    public hj0(@NotNull sk0 sk0Var, boolean z) {
        nd0.m1875new(sk0Var, "sink");
        this.f1873try = sk0Var;
        this.f1868case = z;
        rk0 rk0Var = new rk0();
        this.f1869do = rk0Var;
        this.f1871if = 16384;
        this.f1872new = new vi0.Cif(0, false, rk0Var, 3);
    }

    /* renamed from: break  reason: not valid java name */
    public final void m1127break(int i, int i2, int i3, int i4) throws IOException {
        if (f1867else.isLoggable(Level.FINE)) {
            f1867else.fine(wi0.f5312try.m2914if(false, i, i2, i3, i4));
        }
        if (!(i2 <= this.f1871if)) {
            StringBuilder m1016super = Cgoto.m1016super("FRAME_SIZE_ERROR length > ");
            m1016super.append(this.f1871if);
            m1016super.append(": ");
            m1016super.append(i2);
            throw new IllegalArgumentException(m1016super.toString().toString());
        }
        if ((((int) 2147483648L) & i) == 0) {
            jh0.m1330implements(this.f1873try, i2);
            this.f1873try.writeByte(i3 & 255);
            this.f1873try.writeByte(i4 & 255);
            this.f1873try.writeInt(i & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            return;
        }
        throw new IllegalArgumentException(Cgoto.m1003implements("reserved bit set: ", i).toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f1870for = true;
        this.f1873try.close();
    }

    /* renamed from: default  reason: not valid java name */
    public final synchronized void m1128default(boolean z, int i, int i2) throws IOException {
        if (!this.f1870for) {
            m1127break(0, 8, 6, z ? 1 : 0);
            this.f1873try.writeInt(i);
            this.f1873try.writeInt(i2);
            this.f1873try.flush();
        } else {
            throw new IOException("closed");
        }
    }

    /* renamed from: extends  reason: not valid java name */
    public final synchronized void m1129extends(int i, @NotNull ti0 ti0Var) throws IOException {
        nd0.m1875new(ti0Var, RewardItem.KEY_ERROR_CODE);
        if (!this.f1870for) {
            if (ti0Var.f4721do != -1) {
                m1127break(i, 4, 3, 0);
                this.f1873try.writeInt(ti0Var.f4721do);
                this.f1873try.flush();
            } else {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        } else {
            throw new IOException("closed");
        }
    }

    /* renamed from: finally  reason: not valid java name */
    public final synchronized void m1130finally(int i, long j) throws IOException {
        if (this.f1870for) {
            throw new IOException("closed");
        }
        if (j != 0 && j <= 2147483647L) {
            m1127break(i, 4, 8, 0);
            this.f1873try.writeInt((int) j);
            this.f1873try.flush();
        } else {
            throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
        }
    }

    public final synchronized void flush() throws IOException {
        if (!this.f1870for) {
            this.f1873try.flush();
        } else {
            throw new IOException("closed");
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final synchronized void m1131for(@NotNull lj0 lj0Var) throws IOException {
        nd0.m1875new(lj0Var, "peerSettings");
        if (!this.f1870for) {
            int i = this.f1871if;
            if ((lj0Var.f2823do & 32) != 0) {
                i = lj0Var.f2824if[5];
            }
            this.f1871if = i;
            if (((lj0Var.f2823do & 2) != 0 ? lj0Var.f2824if[1] : -1) != -1) {
                vi0.Cif cif = this.f1872new;
                int i2 = (lj0Var.f2823do & 2) != 0 ? lj0Var.f2824if[1] : -1;
                cif.f5127goto = i2;
                int min = Math.min(i2, 16384);
                int i3 = cif.f5126for;
                if (i3 != min) {
                    if (min < i3) {
                        cif.f5124do = Math.min(cif.f5124do, min);
                    }
                    cif.f5128if = true;
                    cif.f5126for = min;
                    int i4 = cif.f5125else;
                    if (min < i4) {
                        if (min == 0) {
                            cif.m2811do();
                        } else {
                            cif.m2813if(i4 - min);
                        }
                    }
                }
            }
            m1127break(0, 0, 4, 1);
            this.f1873try.flush();
        } else {
            throw new IOException("closed");
        }
    }

    /* renamed from: package  reason: not valid java name */
    public final void m1132package(int i, long j) throws IOException {
        while (j > 0) {
            long min = Math.min(this.f1871if, j);
            j -= min;
            m1127break(i, (int) min, 9, j == 0 ? 4 : 0);
            this.f1873try.mo477class(this.f1869do, min);
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public final synchronized void m1133throw(int i, @NotNull ti0 ti0Var, @NotNull byte[] bArr) throws IOException {
        nd0.m1875new(ti0Var, RewardItem.KEY_ERROR_CODE);
        nd0.m1875new(bArr, "debugData");
        if (!this.f1870for) {
            if (ti0Var.f4721do != -1) {
                m1127break(0, bArr.length + 8, 7, 0);
                this.f1873try.writeInt(i);
                this.f1873try.writeInt(ti0Var.f4721do);
                if (!(bArr.length == 0)) {
                    this.f1873try.write(bArr);
                }
                this.f1873try.flush();
            } else {
                throw new IllegalArgumentException("errorCode.httpCode == -1".toString());
            }
        } else {
            throw new IOException("closed");
        }
    }

    /* renamed from: throws  reason: not valid java name */
    public final synchronized void m1134throws(boolean z, int i, @NotNull List<ui0> list) throws IOException {
        nd0.m1875new(list, "headerBlock");
        if (!this.f1870for) {
            this.f1872new.m2815try(list);
            long j = this.f1869do.f4108if;
            long min = Math.min(this.f1871if, j);
            int i2 = (j > min ? 1 : (j == min ? 0 : -1));
            int i3 = i2 == 0 ? 4 : 0;
            if (z) {
                i3 |= 1;
            }
            m1127break(i, (int) min, 1, i3);
            this.f1873try.mo477class(this.f1869do, min);
            if (i2 > 0) {
                m1132package(i, j - min);
            }
        } else {
            throw new IOException("closed");
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final synchronized void m1135try(boolean z, int i, @Nullable rk0 rk0Var, int i2) throws IOException {
        if (!this.f1870for) {
            m1127break(i, i2, 0, z ? 1 : 0);
            if (i2 > 0) {
                sk0 sk0Var = this.f1873try;
                nd0.m1874if(rk0Var);
                sk0Var.mo477class(rk0Var, i2);
            }
        } else {
            throw new IOException("closed");
        }
    }
}
