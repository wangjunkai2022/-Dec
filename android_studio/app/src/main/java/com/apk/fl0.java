package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.internal.CollapsingTextHelper;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

/* compiled from: RealBufferedSource.kt */
/* loaded from: classes7.dex */
public final class fl0 implements tk0 {
    @JvmField
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final rk0 f1399do;
    @JvmField
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final ll0 f1400for;
    @JvmField

    /* renamed from: if  reason: not valid java name */
    public boolean f1401if;

    public fl0(@NotNull ll0 ll0Var) {
        nd0.m1875new(ll0Var, "source");
        this.f1400for = ll0Var;
        this.f1399do = new rk0();
    }

    /* renamed from: break  reason: not valid java name */
    public int m849break() {
        mo856native(4L);
        int readInt = this.f1399do.readInt();
        return ((readInt & 255) << 24) | (((-16777216) & readInt) >>> 24) | ((16711680 & readInt) >>> 8) | ((65280 & readInt) << 8);
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: case  reason: not valid java name */
    public byte[] mo850case() {
        this.f1399do.mo638const(this.f1400for);
        return this.f1399do.mo850case();
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: catch  reason: not valid java name */
    public String mo851catch(@NotNull Charset charset) {
        nd0.m1875new(charset, "charset");
        this.f1399do.mo638const(this.f1400for);
        return this.f1399do.mo851catch(charset);
    }

    @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f1401if) {
            return;
        }
        this.f1401if = true;
        this.f1400for.close();
        rk0 rk0Var = this.f1399do;
        rk0Var.skip(rk0Var.f4108if);
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: do  reason: not valid java name */
    public rk0 mo852do() {
        return this.f1399do;
    }

    @Override // com.apk.tk0
    /* renamed from: else  reason: not valid java name */
    public boolean mo853else() {
        if (!this.f1401if) {
            return this.f1399do.mo853else() && this.f1400for.mo72import(this.f1399do, (long) 8192) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* renamed from: for  reason: not valid java name */
    public long m854for(byte b, long j, long j2) {
        boolean z = true;
        if (!this.f1401if) {
            if (!((0 > j || j2 < j) ? false : false)) {
                throw new IllegalArgumentException(("fromIndex=" + j + " toIndex=" + j2).toString());
            }
            while (j < j2) {
                long m2290extends = this.f1399do.m2290extends(b, j, j2);
                if (m2290extends != -1) {
                    return m2290extends;
                }
                rk0 rk0Var = this.f1399do;
                long j3 = rk0Var.f4108if;
                if (j3 >= j2 || this.f1400for.mo72import(rk0Var, 8192) == -1) {
                    return -1L;
                }
                j = Math.max(j, j3);
            }
            return -1L;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: goto  reason: not valid java name */
    public String mo855goto(long j) {
        if (j >= 0) {
            long j2 = j == RecyclerView.FOREVER_NS ? Long.MAX_VALUE : j + 1;
            byte b = (byte) 10;
            long m854for = m854for(b, 0L, j2);
            if (m854for != -1) {
                return nl0.m1891do(this.f1399do, m854for);
            }
            if (j2 < RecyclerView.FOREVER_NS && m862throw(j2) && this.f1399do.m2289default(j2 - 1) == ((byte) 13) && m862throw(1 + j2) && this.f1399do.m2289default(j2) == b) {
                return nl0.m1891do(this.f1399do, j2);
            }
            rk0 rk0Var = new rk0();
            rk0 rk0Var2 = this.f1399do;
            rk0Var2.m2300throws(rk0Var, 0L, Math.min(32, rk0Var2.f4108if));
            StringBuilder m1016super = Cgoto.m1016super("\\n not found: limit=");
            m1016super.append(Math.min(this.f1399do.f4108if, j));
            m1016super.append(" content=");
            m1016super.append(rk0Var.m2296private().mo1242new());
            m1016super.append(CollapsingTextHelper.ELLIPSIS_NORMAL);
            throw new EOFException(m1016super.toString());
        }
        throw new IllegalArgumentException(Cgoto.m1000for("limit < 0: ", j).toString());
    }

    @Override // com.apk.ll0
    @NotNull
    /* renamed from: if */
    public ml0 mo71if() {
        return this.f1400for.mo71if();
    }

    @Override // com.apk.ll0
    /* renamed from: import */
    public long mo72import(@NotNull rk0 rk0Var, long j) {
        nd0.m1875new(rk0Var, "sink");
        if (j >= 0) {
            if (!this.f1401if) {
                rk0 rk0Var2 = this.f1399do;
                if (rk0Var2.f4108if == 0 && this.f1400for.mo72import(rk0Var2, 8192) == -1) {
                    return -1L;
                }
                return this.f1399do.mo72import(rk0Var, Math.min(j, this.f1399do.f4108if));
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j).toString());
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f1401if;
    }

    @Override // com.apk.tk0
    /* renamed from: native  reason: not valid java name */
    public void mo856native(long j) {
        if (!m862throw(j)) {
            throw new EOFException();
        }
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: new  reason: not valid java name */
    public uk0 mo857new(long j) {
        if (m862throw(j)) {
            return this.f1399do.mo857new(j);
        }
        throw new EOFException();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer byteBuffer) {
        nd0.m1875new(byteBuffer, "sink");
        rk0 rk0Var = this.f1399do;
        if (rk0Var.f4108if == 0 && this.f1400for.mo72import(rk0Var, 8192) == -1) {
            return -1;
        }
        return this.f1399do.read(byteBuffer);
    }

    @Override // com.apk.tk0
    public byte readByte() {
        mo856native(1L);
        return this.f1399do.readByte();
    }

    @Override // com.apk.tk0
    public int readInt() {
        mo856native(4L);
        return this.f1399do.readInt();
    }

    @Override // com.apk.tk0
    public short readShort() {
        mo856native(2L);
        return this.f1399do.readShort();
    }

    @Override // com.apk.tk0
    /* renamed from: return  reason: not valid java name */
    public long mo858return() {
        byte m2289default;
        mo856native(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!m862throw(i2)) {
                break;
            }
            m2289default = this.f1399do.m2289default(i);
            if ((m2289default < ((byte) 48) || m2289default > ((byte) 57)) && ((m2289default < ((byte) 97) || m2289default > ((byte) 102)) && (m2289default < ((byte) 65) || m2289default > ((byte) 70)))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9a-fA-F] character but was 0x");
            sb0.m2438while(16);
            sb0.m2438while(16);
            String num = Integer.toString(m2289default, 16);
            nd0.m1872for(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(num);
            throw new NumberFormatException(sb.toString());
        }
        return this.f1399do.mo858return();
    }

    @Override // com.apk.tk0
    public void skip(long j) {
        if (!(!this.f1401if)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j > 0) {
            rk0 rk0Var = this.f1399do;
            if (rk0Var.f4108if == 0 && this.f1400for.mo72import(rk0Var, 8192) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, this.f1399do.f4108if);
            this.f1399do.skip(min);
            j -= min;
        }
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: static  reason: not valid java name */
    public InputStream mo859static() {
        return new Cdo();
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: super  reason: not valid java name */
    public String mo860super() {
        return mo855goto(RecyclerView.FOREVER_NS);
    }

    @Override // com.apk.tk0
    /* renamed from: switch  reason: not valid java name */
    public int mo861switch(@NotNull cl0 cl0Var) {
        nd0.m1875new(cl0Var, "options");
        if (!this.f1401if) {
            while (true) {
                int m1892if = nl0.m1892if(this.f1399do, cl0Var, true);
                if (m1892if == -2) {
                    if (this.f1400for.mo72import(this.f1399do, 8192) == -1) {
                        break;
                    }
                } else if (m1892if != -1) {
                    this.f1399do.skip(cl0Var.f650do[m1892if].mo1239for());
                    return m1892if;
                }
            }
            return -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* renamed from: throw  reason: not valid java name */
    public boolean m862throw(long j) {
        rk0 rk0Var;
        if (j >= 0) {
            if (!this.f1401if) {
                do {
                    rk0Var = this.f1399do;
                    if (rk0Var.f4108if >= j) {
                        return true;
                    }
                } while (this.f1400for.mo72import(rk0Var, 8192) != -1);
                return false;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j).toString());
    }

    @NotNull
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("buffer(");
        m1016super.append(this.f1400for);
        m1016super.append(')');
        return m1016super.toString();
    }

    @NotNull
    /* renamed from: try  reason: not valid java name */
    public byte[] m863try(long j) {
        if (m862throw(j)) {
            return this.f1399do.m2295package(j);
        }
        throw new EOFException();
    }

    /* compiled from: RealBufferedSource.kt */
    /* renamed from: com.apk.fl0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends InputStream {
        public Cdo() {
        }

        @Override // java.io.InputStream
        public int available() {
            fl0 fl0Var = fl0.this;
            if (!fl0Var.f1401if) {
                return (int) Math.min(fl0Var.f1399do.f4108if, (long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            fl0.this.close();
        }

        @Override // java.io.InputStream
        public int read() {
            fl0 fl0Var = fl0.this;
            if (!fl0Var.f1401if) {
                rk0 rk0Var = fl0Var.f1399do;
                if (rk0Var.f4108if == 0 && fl0Var.f1400for.mo72import(rk0Var, 8192) == -1) {
                    return -1;
                }
                return fl0.this.f1399do.readByte() & ExifInterface.MARKER;
            }
            throw new IOException("closed");
        }

        @NotNull
        public String toString() {
            return fl0.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(@NotNull byte[] bArr, int i, int i2) {
            nd0.m1875new(bArr, "data");
            if (!fl0.this.f1401if) {
                sb0.m2433throw(bArr.length, i, i2);
                fl0 fl0Var = fl0.this;
                rk0 rk0Var = fl0Var.f1399do;
                if (rk0Var.f4108if == 0 && fl0Var.f1400for.mo72import(rk0Var, 8192) == -1) {
                    return -1;
                }
                return fl0.this.f1399do.read(bArr, i, i2);
            }
            throw new IOException("closed");
        }
    }
}
