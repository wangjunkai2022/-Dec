package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.baidu.tts.client.SpeechSynthesizer;
import com.google.android.material.slider.BasicLabelFormatter;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Buffer.kt */
/* loaded from: classes7.dex */
public final class rk0 implements tk0, sk0, Cloneable, ByteChannel {
    @JvmField
    @Nullable

    /* renamed from: do  reason: not valid java name */
    public gl0 f4107do;

    /* renamed from: if  reason: not valid java name */
    public long f4108if;

    /* renamed from: abstract  reason: not valid java name */
    public short m2287abstract() throws EOFException {
        int readShort = readShort() & 65535;
        return (short) (((readShort & 255) << 8) | ((65280 & readShort) >>> 8));
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: case */
    public byte[] mo850case() {
        return m2295package(this.f4108if);
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: catch */
    public String mo851catch(@NotNull Charset charset) {
        nd0.m1875new(charset, "charset");
        return m2288continue(this.f4108if, charset);
    }

    @Override // com.apk.jl0
    /* renamed from: class */
    public void mo477class(@NotNull rk0 rk0Var, long j) {
        gl0 gl0Var;
        int i;
        gl0 gl0Var2;
        gl0 m1140if;
        nd0.m1875new(rk0Var, "source");
        if (rk0Var != this) {
            sb0.m2433throw(rk0Var.f4108if, 0L, j);
            while (j > 0) {
                gl0 gl0Var3 = rk0Var.f4107do;
                nd0.m1874if(gl0Var3);
                int i2 = gl0Var3.f1605for;
                nd0.m1874if(rk0Var.f4107do);
                if (j < i2 - gl0Var.f1606if) {
                    gl0 gl0Var4 = this.f4107do;
                    if (gl0Var4 != null) {
                        nd0.m1874if(gl0Var4);
                        gl0Var2 = gl0Var4.f1604else;
                    } else {
                        gl0Var2 = null;
                    }
                    if (gl0Var2 != null && gl0Var2.f1608try) {
                        if ((gl0Var2.f1605for + j) - (gl0Var2.f1607new ? 0 : gl0Var2.f1606if) <= 8192) {
                            gl0 gl0Var5 = rk0Var.f4107do;
                            nd0.m1874if(gl0Var5);
                            gl0Var5.m980new(gl0Var2, (int) j);
                            rk0Var.f4108if -= j;
                            this.f4108if += j;
                            return;
                        }
                    }
                    gl0 gl0Var6 = rk0Var.f4107do;
                    nd0.m1874if(gl0Var6);
                    int i3 = (int) j;
                    if (i3 > 0 && i3 <= gl0Var6.f1605for - gl0Var6.f1606if) {
                        if (i3 >= 1024) {
                            m1140if = gl0Var6.m978for();
                        } else {
                            m1140if = hl0.m1140if();
                            byte[] bArr = gl0Var6.f1603do;
                            byte[] bArr2 = m1140if.f1603do;
                            int i4 = gl0Var6.f1606if;
                            uc0.m2696for(bArr, bArr2, 0, i4, i4 + i3, 2);
                        }
                        m1140if.f1605for = m1140if.f1606if + i3;
                        gl0Var6.f1606if += i3;
                        gl0 gl0Var7 = gl0Var6.f1604else;
                        nd0.m1874if(gl0Var7);
                        gl0Var7.m979if(m1140if);
                        rk0Var.f4107do = m1140if;
                    } else {
                        throw new IllegalArgumentException("byteCount out of range".toString());
                    }
                }
                gl0 gl0Var8 = rk0Var.f4107do;
                nd0.m1874if(gl0Var8);
                long j2 = gl0Var8.f1605for - gl0Var8.f1606if;
                rk0Var.f4107do = gl0Var8.m977do();
                gl0 gl0Var9 = this.f4107do;
                if (gl0Var9 == null) {
                    this.f4107do = gl0Var8;
                    gl0Var8.f1604else = gl0Var8;
                    gl0Var8.f1602case = gl0Var8;
                } else {
                    nd0.m1874if(gl0Var9);
                    gl0 gl0Var10 = gl0Var9.f1604else;
                    nd0.m1874if(gl0Var10);
                    gl0Var10.m979if(gl0Var8);
                    if (gl0Var8.f1604else != gl0Var8) {
                        gl0 gl0Var11 = gl0Var8.f1604else;
                        nd0.m1874if(gl0Var11);
                        if (gl0Var11.f1608try) {
                            int i5 = gl0Var8.f1605for - gl0Var8.f1606if;
                            gl0 gl0Var12 = gl0Var8.f1604else;
                            nd0.m1874if(gl0Var12);
                            int i6 = 8192 - gl0Var12.f1605for;
                            gl0 gl0Var13 = gl0Var8.f1604else;
                            nd0.m1874if(gl0Var13);
                            if (gl0Var13.f1607new) {
                                i = 0;
                            } else {
                                gl0 gl0Var14 = gl0Var8.f1604else;
                                nd0.m1874if(gl0Var14);
                                i = gl0Var14.f1606if;
                            }
                            if (i5 <= i6 + i) {
                                gl0 gl0Var15 = gl0Var8.f1604else;
                                nd0.m1874if(gl0Var15);
                                gl0Var8.m980new(gl0Var15, i5);
                                gl0Var8.m977do();
                                hl0.m1139do(gl0Var8);
                            }
                        }
                    } else {
                        throw new IllegalStateException("cannot compact".toString());
                    }
                }
                rk0Var.f4108if -= j2;
                this.f4108if += j2;
                j -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }

    public Object clone() {
        rk0 rk0Var = new rk0();
        if (this.f4108if != 0) {
            gl0 gl0Var = this.f4107do;
            nd0.m1874if(gl0Var);
            gl0 m978for = gl0Var.m978for();
            rk0Var.f4107do = m978for;
            m978for.f1604else = m978for;
            m978for.f1602case = m978for;
            for (gl0 gl0Var2 = gl0Var.f1602case; gl0Var2 != gl0Var; gl0Var2 = gl0Var2.f1602case) {
                gl0 gl0Var3 = m978for.f1604else;
                nd0.m1874if(gl0Var3);
                nd0.m1874if(gl0Var2);
                gl0Var3.m979if(gl0Var2.m978for());
            }
            rk0Var.f4108if = this.f4108if;
        }
        return rk0Var;
    }

    @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // com.apk.sk0
    /* renamed from: const */
    public long mo638const(@NotNull ll0 ll0Var) throws IOException {
        nd0.m1875new(ll0Var, "source");
        long j = 0;
        while (true) {
            long mo72import = ll0Var.mo72import(this, 8192);
            if (mo72import == -1) {
                return j;
            }
            j += mo72import;
        }
    }

    @NotNull
    /* renamed from: continue  reason: not valid java name */
    public String m2288continue(long j, @NotNull Charset charset) throws EOFException {
        nd0.m1875new(charset, "charset");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0 && j <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
            if (this.f4108if >= j) {
                if (i == 0) {
                    return "";
                }
                gl0 gl0Var = this.f4107do;
                nd0.m1874if(gl0Var);
                int i2 = gl0Var.f1606if;
                if (i2 + j > gl0Var.f1605for) {
                    return new String(m2295package(j), charset);
                }
                int i3 = (int) j;
                String str = new String(gl0Var.f1603do, i2, i3, charset);
                int i4 = gl0Var.f1606if + i3;
                gl0Var.f1606if = i4;
                this.f4108if -= j;
                if (i4 == gl0Var.f1605for) {
                    this.f4107do = gl0Var.m977do();
                    hl0.m1139do(gl0Var);
                }
                return str;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Cgoto.m1000for("byteCount: ", j).toString());
    }

    @JvmName(name = "getByte")
    /* renamed from: default  reason: not valid java name */
    public final byte m2289default(long j) {
        sb0.m2433throw(this.f4108if, j, 1L);
        gl0 gl0Var = this.f4107do;
        if (gl0Var != null) {
            long j2 = this.f4108if;
            if (j2 - j < j) {
                while (j2 > j) {
                    gl0Var = gl0Var.f1604else;
                    nd0.m1874if(gl0Var);
                    j2 -= gl0Var.f1605for - gl0Var.f1606if;
                }
                nd0.m1874if(gl0Var);
                return gl0Var.f1603do[(int) ((gl0Var.f1606if + j) - j2)];
            }
            long j3 = 0;
            while (true) {
                long j4 = (gl0Var.f1605for - gl0Var.f1606if) + j3;
                if (j4 > j) {
                    nd0.m1874if(gl0Var);
                    return gl0Var.f1603do[(int) ((gl0Var.f1606if + j) - j3)];
                }
                gl0Var = gl0Var.f1602case;
                nd0.m1874if(gl0Var);
                j3 = j4;
            }
        } else {
            gl0 gl0Var2 = null;
            nd0.m1874if(null);
            return gl0Var2.f1603do[(int) ((gl0Var2.f1606if + j) - (-1))];
        }
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: do */
    public rk0 mo852do() {
        return this;
    }

    @Override // com.apk.tk0
    /* renamed from: else */
    public boolean mo853else() {
        return this.f4108if == 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (!(obj instanceof rk0)) {
                return false;
            }
            long j = this.f4108if;
            rk0 rk0Var = (rk0) obj;
            if (j != rk0Var.f4108if) {
                return false;
            }
            if (j != 0) {
                gl0 gl0Var = this.f4107do;
                nd0.m1874if(gl0Var);
                gl0 gl0Var2 = rk0Var.f4107do;
                nd0.m1874if(gl0Var2);
                int i = gl0Var.f1606if;
                int i2 = gl0Var2.f1606if;
                long j2 = 0;
                while (j2 < this.f4108if) {
                    long min = Math.min(gl0Var.f1605for - i, gl0Var2.f1605for - i2);
                    long j3 = 0;
                    while (j3 < min) {
                        int i3 = i + 1;
                        int i4 = i2 + 1;
                        if (gl0Var.f1603do[i] != gl0Var2.f1603do[i2]) {
                            return false;
                        }
                        j3++;
                        i = i3;
                        i2 = i4;
                    }
                    if (i == gl0Var.f1605for) {
                        gl0Var = gl0Var.f1602case;
                        nd0.m1874if(gl0Var);
                        i = gl0Var.f1606if;
                    }
                    if (i2 == gl0Var2.f1605for) {
                        gl0Var2 = gl0Var2.f1602case;
                        nd0.m1874if(gl0Var2);
                        i2 = gl0Var2.f1606if;
                    }
                    j2 += min;
                }
            }
        }
        return true;
    }

    /* renamed from: extends  reason: not valid java name */
    public long m2290extends(byte b, long j, long j2) {
        gl0 gl0Var;
        long j3 = 0;
        if (0 <= j && j2 >= j) {
            long j4 = this.f4108if;
            if (j2 > j4) {
                j2 = j4;
            }
            if (j != j2 && (gl0Var = this.f4107do) != null) {
                long j5 = this.f4108if;
                if (j5 - j < j) {
                    while (j5 > j) {
                        gl0Var = gl0Var.f1604else;
                        nd0.m1874if(gl0Var);
                        j5 -= gl0Var.f1605for - gl0Var.f1606if;
                    }
                    while (j5 < j2) {
                        byte[] bArr = gl0Var.f1603do;
                        int min = (int) Math.min(gl0Var.f1605for, (gl0Var.f1606if + j2) - j5);
                        for (int i = (int) ((gl0Var.f1606if + j) - j5); i < min; i++) {
                            if (bArr[i] == b) {
                                return (i - gl0Var.f1606if) + j5;
                            }
                        }
                        j5 += gl0Var.f1605for - gl0Var.f1606if;
                        gl0Var = gl0Var.f1602case;
                        nd0.m1874if(gl0Var);
                        j = j5;
                    }
                } else {
                    while (true) {
                        long j6 = (gl0Var.f1605for - gl0Var.f1606if) + j3;
                        if (j6 > j) {
                            break;
                        }
                        gl0Var = gl0Var.f1602case;
                        nd0.m1874if(gl0Var);
                        j3 = j6;
                    }
                    while (j3 < j2) {
                        byte[] bArr2 = gl0Var.f1603do;
                        int min2 = (int) Math.min(gl0Var.f1605for, (gl0Var.f1606if + j2) - j3);
                        for (int i2 = (int) ((gl0Var.f1606if + j) - j3); i2 < min2; i2++) {
                            if (bArr2[i2] == b) {
                                return (i2 - gl0Var.f1606if) + j3;
                            }
                        }
                        j3 += gl0Var.f1605for - gl0Var.f1606if;
                        gl0Var = gl0Var.f1602case;
                        nd0.m1874if(gl0Var);
                        j = j3;
                    }
                }
            }
            return -1L;
        }
        StringBuilder m1016super = Cgoto.m1016super("size=");
        m1016super.append(this.f4108if);
        m1016super.append(" fromIndex=");
        m1016super.append(j);
        m1016super.append(" toIndex=");
        m1016super.append(j2);
        throw new IllegalArgumentException(m1016super.toString().toString());
    }

    @Override // com.apk.sk0
    @NotNull
    /* renamed from: f */
    public rk0 mo642public(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            m2299synchronized(48);
        } else {
            boolean z = false;
            int i2 = 1;
            if (i < 0) {
                j = -j;
                if (j < 0) {
                    j("-9223372036854775808");
                } else {
                    z = true;
                }
            }
            if (j >= 100000000) {
                i2 = j < BasicLabelFormatter.TRILLION ? j < 10000000000L ? j < 1000000000 ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
            } else if (j >= FragmentStateAdapter.GRACE_WINDOW_TIME_MS) {
                i2 = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
            } else if (j >= 100) {
                i2 = j < 1000 ? 3 : 4;
            } else if (j >= 10) {
                i2 = 2;
            }
            if (z) {
                i2++;
            }
            gl0 m2297protected = m2297protected(i2);
            byte[] bArr = m2297protected.f1603do;
            int i3 = m2297protected.f1605for + i2;
            while (j != 0) {
                long j2 = 10;
                i3--;
                bArr[i3] = nl0.f3256do[(int) (j % j2)];
                j /= j2;
            }
            if (z) {
                bArr[i3 - 1] = (byte) 45;
            }
            m2297protected.f1605for += i2;
            this.f4108if += i2;
        }
        return this;
    }

    /* renamed from: finally  reason: not valid java name */
    public long m2291finally(@NotNull uk0 uk0Var) {
        int i;
        int i2;
        nd0.m1875new(uk0Var, "targetBytes");
        nd0.m1875new(uk0Var, "targetBytes");
        gl0 gl0Var = this.f4107do;
        if (gl0Var != null) {
            long j = this.f4108if;
            long j2 = 0;
            if (j - 0 < 0) {
                while (j > 0) {
                    gl0Var = gl0Var.f1604else;
                    nd0.m1874if(gl0Var);
                    j -= gl0Var.f1605for - gl0Var.f1606if;
                }
                if (uk0Var.mo1239for() == 2) {
                    byte mo1233case = uk0Var.mo1233case(0);
                    byte mo1233case2 = uk0Var.mo1233case(1);
                    while (j < this.f4108if) {
                        byte[] bArr = gl0Var.f1603do;
                        i = (int) ((gl0Var.f1606if + j2) - j);
                        int i3 = gl0Var.f1605for;
                        while (i < i3) {
                            byte b = bArr[i];
                            if (b != mo1233case && b != mo1233case2) {
                                i++;
                            }
                            i2 = gl0Var.f1606if;
                        }
                        j2 = (gl0Var.f1605for - gl0Var.f1606if) + j;
                        gl0Var = gl0Var.f1602case;
                        nd0.m1874if(gl0Var);
                        j = j2;
                    }
                    return -1L;
                }
                byte[] mo1244try = uk0Var.mo1244try();
                while (j < this.f4108if) {
                    byte[] bArr2 = gl0Var.f1603do;
                    i = (int) ((gl0Var.f1606if + j2) - j);
                    int i4 = gl0Var.f1605for;
                    while (i < i4) {
                        byte b2 = bArr2[i];
                        for (byte b3 : mo1244try) {
                            if (b2 == b3) {
                                i2 = gl0Var.f1606if;
                            }
                        }
                        i++;
                    }
                    j2 = (gl0Var.f1605for - gl0Var.f1606if) + j;
                    gl0Var = gl0Var.f1602case;
                    nd0.m1874if(gl0Var);
                    j = j2;
                }
                return -1L;
            }
            j = 0;
            while (true) {
                long j3 = (gl0Var.f1605for - gl0Var.f1606if) + j;
                if (j3 > 0) {
                    break;
                }
                gl0Var = gl0Var.f1602case;
                nd0.m1874if(gl0Var);
                j = j3;
            }
            if (uk0Var.mo1239for() == 2) {
                byte mo1233case3 = uk0Var.mo1233case(0);
                byte mo1233case4 = uk0Var.mo1233case(1);
                while (j < this.f4108if) {
                    byte[] bArr3 = gl0Var.f1603do;
                    i = (int) ((gl0Var.f1606if + j2) - j);
                    int i5 = gl0Var.f1605for;
                    while (i < i5) {
                        byte b4 = bArr3[i];
                        if (b4 != mo1233case3 && b4 != mo1233case4) {
                            i++;
                        }
                        i2 = gl0Var.f1606if;
                    }
                    j2 = (gl0Var.f1605for - gl0Var.f1606if) + j;
                    gl0Var = gl0Var.f1602case;
                    nd0.m1874if(gl0Var);
                    j = j2;
                }
                return -1L;
            }
            byte[] mo1244try2 = uk0Var.mo1244try();
            while (j < this.f4108if) {
                byte[] bArr4 = gl0Var.f1603do;
                i = (int) ((gl0Var.f1606if + j2) - j);
                int i6 = gl0Var.f1605for;
                while (i < i6) {
                    byte b5 = bArr4[i];
                    for (byte b6 : mo1244try2) {
                        if (b5 == b6) {
                            i2 = gl0Var.f1606if;
                        }
                    }
                    i++;
                }
                j2 = (gl0Var.f1605for - gl0Var.f1606if) + j;
                gl0Var = gl0Var.f1602case;
                nd0.m1874if(gl0Var);
                j = j2;
            }
            return -1L;
            return (i - i2) + j;
        }
        return -1L;
    }

    @Override // com.apk.sk0, com.apk.jl0, java.io.Flushable
    public void flush() {
    }

    @Override // com.apk.sk0
    @NotNull
    /* renamed from: g */
    public rk0 mo640final(long j) {
        if (j == 0) {
            m2299synchronized(48);
        } else {
            long j2 = (j >>> 1) | j;
            long j3 = j2 | (j2 >>> 2);
            long j4 = j3 | (j3 >>> 4);
            long j5 = j4 | (j4 >>> 8);
            long j6 = j5 | (j5 >>> 16);
            long j7 = j6 | (j6 >>> 32);
            long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
            long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
            long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
            long j11 = j10 + (j10 >>> 8);
            long j12 = j11 + (j11 >>> 16);
            int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
            gl0 m2297protected = m2297protected(i);
            byte[] bArr = m2297protected.f1603do;
            int i2 = m2297protected.f1605for;
            for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
                bArr[i3] = nl0.f3256do[(int) (15 & j)];
                j >>>= 4;
            }
            m2297protected.f1605for += i;
            this.f4108if += i;
        }
        return this;
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: goto */
    public String mo855goto(long j) throws EOFException {
        if (j >= 0) {
            long j2 = RecyclerView.FOREVER_NS;
            if (j != RecyclerView.FOREVER_NS) {
                j2 = j + 1;
            }
            byte b = (byte) 10;
            long m2290extends = m2290extends(b, 0L, j2);
            if (m2290extends != -1) {
                return nl0.m1891do(this, m2290extends);
            }
            if (j2 < this.f4108if && m2289default(j2 - 1) == ((byte) 13) && m2289default(j2) == b) {
                return nl0.m1891do(this, j2);
            }
            rk0 rk0Var = new rk0();
            m2300throws(rk0Var, 0L, Math.min(32, this.f4108if));
            StringBuilder m1016super = Cgoto.m1016super("\\n not found: limit=");
            m1016super.append(Math.min(this.f4108if, j));
            m1016super.append(" content=");
            m1016super.append(rk0Var.m2296private().mo1242new());
            m1016super.append((char) 8230);
            throw new EOFException(m1016super.toString());
        }
        throw new IllegalArgumentException(Cgoto.m1000for("limit < 0: ", j).toString());
    }

    @NotNull
    public rk0 h(int i) {
        gl0 m2297protected = m2297protected(4);
        byte[] bArr = m2297protected.f1603do;
        int i2 = m2297protected.f1605for;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        m2297protected.f1605for = i5 + 1;
        this.f4108if += 4;
        return this;
    }

    public int hashCode() {
        gl0 gl0Var = this.f4107do;
        if (gl0Var != null) {
            int i = 1;
            do {
                int i2 = gl0Var.f1605for;
                for (int i3 = gl0Var.f1606if; i3 < i2; i3++) {
                    i = (i * 31) + gl0Var.f1603do[i3];
                }
                gl0Var = gl0Var.f1602case;
                nd0.m1874if(gl0Var);
            } while (gl0Var != this.f4107do);
            return i;
        }
        return 0;
    }

    @NotNull
    public rk0 i(int i) {
        gl0 m2297protected = m2297protected(2);
        byte[] bArr = m2297protected.f1603do;
        int i2 = m2297protected.f1605for;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        m2297protected.f1605for = i3 + 1;
        this.f4108if += 2;
        return this;
    }

    @Override // com.apk.ll0
    @NotNull
    /* renamed from: if */
    public ml0 mo71if() {
        return ml0.f3064new;
    }

    @NotNull
    /* renamed from: implements  reason: not valid java name */
    public rk0 m2292implements(@NotNull byte[] bArr) {
        nd0.m1875new(bArr, "source");
        m2293instanceof(bArr, 0, bArr.length);
        return this;
    }

    @Override // com.apk.ll0
    /* renamed from: import */
    public long mo72import(@NotNull rk0 rk0Var, long j) {
        nd0.m1875new(rk0Var, "sink");
        if (j >= 0) {
            long j2 = this.f4108if;
            if (j2 == 0) {
                return -1L;
            }
            if (j > j2) {
                j = j2;
            }
            rk0Var.mo477class(this, j);
            return j;
        }
        throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j).toString());
    }

    @NotNull
    /* renamed from: instanceof  reason: not valid java name */
    public rk0 m2293instanceof(@NotNull byte[] bArr, int i, int i2) {
        nd0.m1875new(bArr, "source");
        long j = i2;
        sb0.m2433throw(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            gl0 m2297protected = m2297protected(1);
            int min = Math.min(i3 - i, 8192 - m2297protected.f1605for);
            int i4 = i + min;
            uc0.m2698if(bArr, m2297protected.f1603do, m2297protected.f1605for, i, i4);
            m2297protected.f1605for += min;
            i = i4;
        }
        this.f4108if += j;
        return this;
    }

    @NotNull
    /* renamed from: interface  reason: not valid java name */
    public final uk0 m2294interface(int i) {
        if (i == 0) {
            return uk0.f4912new;
        }
        sb0.m2433throw(this.f4108if, 0L, i);
        gl0 gl0Var = this.f4107do;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            nd0.m1874if(gl0Var);
            int i5 = gl0Var.f1605for;
            int i6 = gl0Var.f1606if;
            if (i5 != i6) {
                i3 += i5 - i6;
                i4++;
                gl0Var = gl0Var.f1602case;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i4];
        int[] iArr = new int[i4 * 2];
        gl0 gl0Var2 = this.f4107do;
        int i7 = 0;
        while (i2 < i) {
            nd0.m1874if(gl0Var2);
            bArr[i7] = gl0Var2.f1603do;
            i2 += gl0Var2.f1605for - gl0Var2.f1606if;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = gl0Var2.f1606if;
            gl0Var2.f1607new = true;
            i7++;
            gl0Var2 = gl0Var2.f1602case;
        }
        return new il0(bArr, iArr);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @NotNull
    public rk0 j(@NotNull String str) {
        nd0.m1875new(str, "string");
        k(str, 0, str.length());
        return this;
    }

    @NotNull
    public rk0 k(@NotNull String str, int i, int i2) {
        char charAt;
        nd0.m1875new(str, "string");
        if (i >= 0) {
            if (i2 >= i) {
                if (!(i2 <= str.length())) {
                    StringBuilder m1020throw = Cgoto.m1020throw("endIndex > string.length: ", i2, " > ");
                    m1020throw.append(str.length());
                    throw new IllegalArgumentException(m1020throw.toString().toString());
                }
                while (i < i2) {
                    char charAt2 = str.charAt(i);
                    if (charAt2 < 128) {
                        gl0 m2297protected = m2297protected(1);
                        byte[] bArr = m2297protected.f1603do;
                        int i3 = m2297protected.f1605for - i;
                        int min = Math.min(i2, 8192 - i3);
                        int i4 = i + 1;
                        bArr[i + i3] = (byte) charAt2;
                        while (true) {
                            i = i4;
                            if (i >= min || (charAt = str.charAt(i)) >= 128) {
                                break;
                            }
                            i4 = i + 1;
                            bArr[i + i3] = (byte) charAt;
                        }
                        int i5 = m2297protected.f1605for;
                        int i6 = (i3 + i) - i5;
                        m2297protected.f1605for = i5 + i6;
                        this.f4108if += i6;
                    } else {
                        if (charAt2 < 2048) {
                            gl0 m2297protected2 = m2297protected(2);
                            byte[] bArr2 = m2297protected2.f1603do;
                            int i7 = m2297protected2.f1605for;
                            bArr2[i7] = (byte) ((charAt2 >> 6) | 192);
                            bArr2[i7 + 1] = (byte) ((charAt2 & '?') | 128);
                            m2297protected2.f1605for = i7 + 2;
                            this.f4108if += 2;
                        } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                            int i8 = i + 1;
                            char charAt3 = i8 < i2 ? str.charAt(i8) : (char) 0;
                            if (charAt2 <= 56319 && 56320 <= charAt3 && 57343 >= charAt3) {
                                int i9 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                                gl0 m2297protected3 = m2297protected(4);
                                byte[] bArr3 = m2297protected3.f1603do;
                                int i10 = m2297protected3.f1605for;
                                bArr3[i10] = (byte) ((i9 >> 18) | 240);
                                bArr3[i10 + 1] = (byte) (((i9 >> 12) & 63) | 128);
                                bArr3[i10 + 2] = (byte) (((i9 >> 6) & 63) | 128);
                                bArr3[i10 + 3] = (byte) ((i9 & 63) | 128);
                                m2297protected3.f1605for = i10 + 4;
                                this.f4108if += 4;
                                i += 2;
                            } else {
                                m2299synchronized(63);
                                i = i8;
                            }
                        } else {
                            gl0 m2297protected4 = m2297protected(3);
                            byte[] bArr4 = m2297protected4.f1603do;
                            int i11 = m2297protected4.f1605for;
                            bArr4[i11] = (byte) ((charAt2 >> '\f') | 224);
                            bArr4[i11 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                            bArr4[i11 + 2] = (byte) ((charAt2 & '?') | 128);
                            m2297protected4.f1605for = i11 + 3;
                            this.f4108if += 3;
                        }
                        i++;
                    }
                }
                return this;
            }
            throw new IllegalArgumentException(Cgoto.m1018synchronized("endIndex < beginIndex: ", i2, " < ", i).toString());
        }
        throw new IllegalArgumentException(Cgoto.m1003implements("beginIndex < 0: ", i).toString());
    }

    @NotNull
    public rk0 l(int i) {
        String str;
        if (i < 128) {
            m2299synchronized(i);
        } else if (i < 2048) {
            gl0 m2297protected = m2297protected(2);
            byte[] bArr = m2297protected.f1603do;
            int i2 = m2297protected.f1605for;
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            m2297protected.f1605for = i2 + 2;
            this.f4108if += 2;
        } else if (55296 <= i && 57343 >= i) {
            m2299synchronized(63);
        } else if (i < 65536) {
            gl0 m2297protected2 = m2297protected(3);
            byte[] bArr2 = m2297protected2.f1603do;
            int i3 = m2297protected2.f1605for;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((i & 63) | 128);
            m2297protected2.f1605for = i3 + 3;
            this.f4108if += 3;
        } else if (i <= 1114111) {
            gl0 m2297protected3 = m2297protected(4);
            byte[] bArr3 = m2297protected3.f1603do;
            int i4 = m2297protected3.f1605for;
            bArr3[i4] = (byte) ((i >> 18) | 240);
            bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
            bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
            bArr3[i4 + 3] = (byte) ((i & 63) | 128);
            m2297protected3.f1605for = i4 + 4;
            this.f4108if += 4;
        } else {
            StringBuilder m1016super = Cgoto.m1016super("Unexpected code point: 0x");
            if (i != 0) {
                char[] cArr = ol0.f3457do;
                int i5 = 0;
                char[] cArr2 = {cArr[(i >> 28) & 15], cArr[(i >> 24) & 15], cArr[(i >> 20) & 15], cArr[(i >> 16) & 15], cArr[(i >> 12) & 15], cArr[(i >> 8) & 15], cArr[(i >> 4) & 15], cArr[i & 15]};
                while (i5 < 8 && cArr2[i5] == '0') {
                    i5++;
                }
                str = new String(cArr2, i5, 8 - i5);
            } else {
                str = SpeechSynthesizer.REQUEST_DNS_OFF;
            }
            m1016super.append(str);
            throw new IllegalArgumentException(m1016super.toString());
        }
        return this;
    }

    @Override // com.apk.tk0
    /* renamed from: native */
    public void mo856native(long j) throws EOFException {
        if (this.f4108if < j) {
            throw new EOFException();
        }
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: new */
    public uk0 mo857new(long j) throws EOFException {
        if (j >= 0 && j <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
            if (this.f4108if >= j) {
                if (j >= 4096) {
                    uk0 m2294interface = m2294interface((int) j);
                    skip(j);
                    return m2294interface;
                }
                return new uk0(m2295package(j));
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Cgoto.m1000for("byteCount: ", j).toString());
    }

    @NotNull
    /* renamed from: package  reason: not valid java name */
    public byte[] m2295package(long j) throws EOFException {
        int i = 0;
        if (j >= 0 && j <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
            if (this.f4108if >= j) {
                int i2 = (int) j;
                byte[] bArr = new byte[i2];
                nd0.m1875new(bArr, "sink");
                while (i < i2) {
                    int read = read(bArr, i, i2 - i);
                    if (read == -1) {
                        throw new EOFException();
                    }
                    i += read;
                }
                return bArr;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(Cgoto.m1000for("byteCount: ", j).toString());
    }

    @NotNull
    /* renamed from: private  reason: not valid java name */
    public uk0 m2296private() {
        return mo857new(this.f4108if);
    }

    @NotNull
    /* renamed from: protected  reason: not valid java name */
    public final gl0 m2297protected(int i) {
        boolean z = true;
        if ((i < 1 || i > 8192) ? false : false) {
            gl0 gl0Var = this.f4107do;
            if (gl0Var == null) {
                gl0 m1140if = hl0.m1140if();
                this.f4107do = m1140if;
                m1140if.f1604else = m1140if;
                m1140if.f1602case = m1140if;
                return m1140if;
            }
            nd0.m1874if(gl0Var);
            gl0 gl0Var2 = gl0Var.f1604else;
            nd0.m1874if(gl0Var2);
            if (gl0Var2.f1605for + i > 8192 || !gl0Var2.f1608try) {
                gl0 m1140if2 = hl0.m1140if();
                gl0Var2.m979if(m1140if2);
                return m1140if2;
            }
            return gl0Var2;
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer byteBuffer) throws IOException {
        nd0.m1875new(byteBuffer, "sink");
        gl0 gl0Var = this.f4107do;
        if (gl0Var != null) {
            int min = Math.min(byteBuffer.remaining(), gl0Var.f1605for - gl0Var.f1606if);
            byteBuffer.put(gl0Var.f1603do, gl0Var.f1606if, min);
            int i = gl0Var.f1606if + min;
            gl0Var.f1606if = i;
            this.f4108if -= min;
            if (i == gl0Var.f1605for) {
                this.f4107do = gl0Var.m977do();
                hl0.m1139do(gl0Var);
            }
            return min;
        }
        return -1;
    }

    @Override // com.apk.tk0
    public byte readByte() throws EOFException {
        if (this.f4108if != 0) {
            gl0 gl0Var = this.f4107do;
            nd0.m1874if(gl0Var);
            int i = gl0Var.f1606if;
            int i2 = gl0Var.f1605for;
            int i3 = i + 1;
            byte b = gl0Var.f1603do[i];
            this.f4108if--;
            if (i3 == i2) {
                this.f4107do = gl0Var.m977do();
                hl0.m1139do(gl0Var);
            } else {
                gl0Var.f1606if = i3;
            }
            return b;
        }
        throw new EOFException();
    }

    @Override // com.apk.tk0
    public int readInt() throws EOFException {
        if (this.f4108if >= 4) {
            gl0 gl0Var = this.f4107do;
            nd0.m1874if(gl0Var);
            int i = gl0Var.f1606if;
            int i2 = gl0Var.f1605for;
            if (i2 - i < 4) {
                return ((readByte() & ExifInterface.MARKER) << 24) | ((readByte() & ExifInterface.MARKER) << 16) | ((readByte() & ExifInterface.MARKER) << 8) | (readByte() & ExifInterface.MARKER);
            }
            byte[] bArr = gl0Var.f1603do;
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = ((bArr[i] & ExifInterface.MARKER) << 24) | ((bArr[i3] & ExifInterface.MARKER) << 16);
            int i6 = i4 + 1;
            int i7 = i5 | ((bArr[i4] & ExifInterface.MARKER) << 8);
            int i8 = i6 + 1;
            int i9 = i7 | (bArr[i6] & ExifInterface.MARKER);
            this.f4108if -= 4;
            if (i8 == i2) {
                this.f4107do = gl0Var.m977do();
                hl0.m1139do(gl0Var);
            } else {
                gl0Var.f1606if = i8;
            }
            return i9;
        }
        throw new EOFException();
    }

    @Override // com.apk.tk0
    public short readShort() throws EOFException {
        if (this.f4108if >= 2) {
            gl0 gl0Var = this.f4107do;
            nd0.m1874if(gl0Var);
            int i = gl0Var.f1606if;
            int i2 = gl0Var.f1605for;
            if (i2 - i < 2) {
                return (short) (((readByte() & ExifInterface.MARKER) << 8) | (readByte() & ExifInterface.MARKER));
            }
            byte[] bArr = gl0Var.f1603do;
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = ((bArr[i] & ExifInterface.MARKER) << 8) | (bArr[i3] & ExifInterface.MARKER);
            this.f4108if -= 2;
            if (i4 == i2) {
                this.f4107do = gl0Var.m977do();
                hl0.m1139do(gl0Var);
            } else {
                gl0Var.f1606if = i4;
            }
            return (short) i5;
        }
        throw new EOFException();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a1 A[EDGE_INSN: B:42:0x00a1->B:37:0x00a1 ?: BREAK  , SYNTHETIC] */
    @Override // com.apk.tk0
    /* renamed from: return */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo858return() throws java.io.EOFException {
        /*
            r15 = this;
            long r0 = r15.f4108if
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto La8
            r0 = 0
            r1 = 0
            r4 = r2
        Lb:
            com.apk.gl0 r6 = r15.f4107do
            com.apk.nd0.m1874if(r6)
            byte[] r7 = r6.f1603do
            int r8 = r6.f1606if
            int r9 = r6.f1605for
        L16:
            if (r8 >= r9) goto L8d
            r10 = r7[r8]
            r11 = 48
            byte r11 = (byte) r11
            if (r10 < r11) goto L27
            r12 = 57
            byte r12 = (byte) r12
            if (r10 > r12) goto L27
            int r11 = r10 - r11
            goto L40
        L27:
            r11 = 97
            byte r11 = (byte) r11
            if (r10 < r11) goto L32
            r12 = 102(0x66, float:1.43E-43)
            byte r12 = (byte) r12
            if (r10 > r12) goto L32
            goto L3c
        L32:
            r11 = 65
            byte r11 = (byte) r11
            if (r10 < r11) goto L72
            r12 = 70
            byte r12 = (byte) r12
            if (r10 > r12) goto L72
        L3c:
            int r11 = r10 - r11
            int r11 = r11 + 10
        L40:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L50
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L16
        L50:
            com.apk.rk0 r0 = new com.apk.rk0
            r0.<init>()
            r0.mo640final(r4)
            r0.m2299synchronized(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r2 = "Number too large: "
            java.lang.StringBuilder r2 = com.apk.Cgoto.m1016super(r2)
            java.lang.String r0 = r0.m2298strictfp()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L72:
            if (r0 == 0) goto L76
            r1 = 1
            goto L8d
        L76:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.StringBuilder r1 = com.apk.Cgoto.m1016super(r1)
            java.lang.String r2 = com.apk.sb0.p(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8d:
            if (r8 != r9) goto L99
            com.apk.gl0 r7 = r6.m977do()
            r15.f4107do = r7
            com.apk.hl0.m1139do(r6)
            goto L9b
        L99:
            r6.f1606if = r8
        L9b:
            if (r1 != 0) goto La1
            com.apk.gl0 r6 = r15.f4107do
            if (r6 != 0) goto Lb
        La1:
            long r1 = r15.f4108if
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.f4108if = r1
            return r4
        La8:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.rk0.mo858return():long");
    }

    @Override // com.apk.tk0
    public void skip(long j) throws EOFException {
        while (j > 0) {
            gl0 gl0Var = this.f4107do;
            if (gl0Var != null) {
                int min = (int) Math.min(j, gl0Var.f1605for - gl0Var.f1606if);
                long j2 = min;
                this.f4108if -= j2;
                j -= j2;
                int i = gl0Var.f1606if + min;
                gl0Var.f1606if = i;
                if (i == gl0Var.f1605for) {
                    this.f4107do = gl0Var.m977do();
                    hl0.m1139do(gl0Var);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: static */
    public InputStream mo859static() {
        return new Cdo();
    }

    @NotNull
    /* renamed from: strictfp  reason: not valid java name */
    public String m2298strictfp() {
        return m2288continue(this.f4108if, ee0.f1037do);
    }

    @Override // com.apk.tk0
    @NotNull
    /* renamed from: super */
    public String mo860super() throws EOFException {
        return mo855goto(RecyclerView.FOREVER_NS);
    }

    @Override // com.apk.tk0
    /* renamed from: switch */
    public int mo861switch(@NotNull cl0 cl0Var) {
        nd0.m1875new(cl0Var, "options");
        int m1892if = nl0.m1892if(this, cl0Var, false);
        if (m1892if == -1) {
            return -1;
        }
        skip(cl0Var.f650do[m1892if].mo1239for());
        return m1892if;
    }

    @NotNull
    /* renamed from: synchronized  reason: not valid java name */
    public rk0 m2299synchronized(int i) {
        gl0 m2297protected = m2297protected(1);
        byte[] bArr = m2297protected.f1603do;
        int i2 = m2297protected.f1605for;
        m2297protected.f1605for = i2 + 1;
        bArr[i2] = (byte) i;
        this.f4108if++;
        return this;
    }

    @Override // com.apk.sk0
    /* renamed from: this */
    public /* bridge */ /* synthetic */ sk0 mo643this(String str) {
        j(str);
        return this;
    }

    @NotNull
    /* renamed from: throws  reason: not valid java name */
    public final rk0 m2300throws(@NotNull rk0 rk0Var, long j, long j2) {
        nd0.m1875new(rk0Var, "out");
        sb0.m2433throw(this.f4108if, j, j2);
        if (j2 != 0) {
            rk0Var.f4108if += j2;
            gl0 gl0Var = this.f4107do;
            while (true) {
                nd0.m1874if(gl0Var);
                int i = gl0Var.f1605for;
                int i2 = gl0Var.f1606if;
                if (j < i - i2) {
                    break;
                }
                j -= i - i2;
                gl0Var = gl0Var.f1602case;
            }
            while (j2 > 0) {
                nd0.m1874if(gl0Var);
                gl0 m978for = gl0Var.m978for();
                int i3 = m978for.f1606if + ((int) j);
                m978for.f1606if = i3;
                m978for.f1605for = Math.min(i3 + ((int) j2), m978for.f1605for);
                gl0 gl0Var2 = rk0Var.f4107do;
                if (gl0Var2 == null) {
                    m978for.f1604else = m978for;
                    m978for.f1602case = m978for;
                    rk0Var.f4107do = m978for;
                } else {
                    nd0.m1874if(gl0Var2);
                    gl0 gl0Var3 = gl0Var2.f1604else;
                    nd0.m1874if(gl0Var3);
                    gl0Var3.m979if(m978for);
                }
                j2 -= m978for.f1605for - m978for.f1606if;
                gl0Var = gl0Var.f1602case;
                j = 0;
            }
        }
        return this;
    }

    @NotNull
    public String toString() {
        if (this.f4108if <= ((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
            return m2294interface((int) this.f4108if).toString();
        }
        StringBuilder m1016super = Cgoto.m1016super("size > Int.MAX_VALUE: ");
        m1016super.append(this.f4108if);
        throw new IllegalStateException(m1016super.toString().toString());
    }

    @NotNull
    /* renamed from: transient  reason: not valid java name */
    public rk0 m2301transient(@NotNull uk0 uk0Var) {
        nd0.m1875new(uk0Var, "byteString");
        uk0Var.mo1234catch(this, 0, uk0Var.mo1239for());
        return this;
    }

    @NotNull
    /* renamed from: volatile  reason: not valid java name */
    public String m2302volatile(long j) throws EOFException {
        return m2288continue(j, ee0.f1037do);
    }

    @Override // com.apk.sk0
    /* renamed from: while */
    public /* bridge */ /* synthetic */ sk0 mo644while(uk0 uk0Var) {
        m2301transient(uk0Var);
        return this;
    }

    @Override // com.apk.sk0
    public /* bridge */ /* synthetic */ sk0 write(byte[] bArr) {
        m2292implements(bArr);
        return this;
    }

    @Override // com.apk.sk0
    public /* bridge */ /* synthetic */ sk0 writeByte(int i) {
        m2299synchronized(i);
        return this;
    }

    @Override // com.apk.sk0
    public /* bridge */ /* synthetic */ sk0 writeInt(int i) {
        h(i);
        return this;
    }

    @Override // com.apk.sk0
    public /* bridge */ /* synthetic */ sk0 writeShort(int i) {
        i(i);
        return this;
    }

    @Override // com.apk.sk0
    public /* bridge */ /* synthetic */ sk0 write(byte[] bArr, int i, int i2) {
        m2293instanceof(bArr, i, i2);
        return this;
    }

    /* compiled from: Buffer.kt */
    /* renamed from: com.apk.rk0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends InputStream {
        public Cdo() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(rk0.this.f4108if, (long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            rk0 rk0Var = rk0.this;
            if (rk0Var.f4108if > 0) {
                return rk0Var.readByte() & ExifInterface.MARKER;
            }
            return -1;
        }

        @NotNull
        public String toString() {
            return rk0.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(@NotNull byte[] bArr, int i, int i2) {
            nd0.m1875new(bArr, "sink");
            return rk0.this.read(bArr, i, i2);
        }
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer byteBuffer) throws IOException {
        nd0.m1875new(byteBuffer, "source");
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            gl0 m2297protected = m2297protected(1);
            int min = Math.min(i, 8192 - m2297protected.f1605for);
            byteBuffer.get(m2297protected.f1603do, m2297protected.f1605for, min);
            i -= min;
            m2297protected.f1605for += min;
        }
        this.f4108if += remaining;
        return remaining;
    }

    public int read(@NotNull byte[] bArr, int i, int i2) {
        nd0.m1875new(bArr, "sink");
        sb0.m2433throw(bArr.length, i, i2);
        gl0 gl0Var = this.f4107do;
        if (gl0Var != null) {
            int min = Math.min(i2, gl0Var.f1605for - gl0Var.f1606if);
            byte[] bArr2 = gl0Var.f1603do;
            int i3 = gl0Var.f1606if;
            uc0.m2698if(bArr2, bArr, i, i3, i3 + min);
            int i4 = gl0Var.f1606if + min;
            gl0Var.f1606if = i4;
            this.f4108if -= min;
            if (i4 == gl0Var.f1605for) {
                this.f4107do = gl0Var.m977do();
                hl0.m1139do(gl0Var);
                return min;
            }
            return min;
        }
        return -1;
    }
}
