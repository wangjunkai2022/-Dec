package com.apk;

import androidx.recyclerview.widget.RecyclerView;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import org.jetbrains.annotations.NotNull;

/* compiled from: GzipSource.kt */
/* loaded from: classes7.dex */
public final class yk0 implements ll0 {

    /* renamed from: do  reason: not valid java name */
    public byte f5982do;

    /* renamed from: for  reason: not valid java name */
    public final Inflater f5983for;

    /* renamed from: if  reason: not valid java name */
    public final fl0 f5984if;

    /* renamed from: new  reason: not valid java name */
    public final zk0 f5985new;

    /* renamed from: try  reason: not valid java name */
    public final CRC32 f5986try;

    public yk0(@NotNull ll0 ll0Var) {
        nd0.m1875new(ll0Var, "source");
        this.f5984if = new fl0(ll0Var);
        Inflater inflater = new Inflater(true);
        this.f5983for = inflater;
        this.f5985new = new zk0(this.f5984if, inflater);
        this.f5986try = new CRC32();
    }

    @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5985new.close();
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3078for(String str, int i, int i2) {
        if (i2 == i) {
            return;
        }
        String format = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}, 3));
        nd0.m1872for(format, "java.lang.String.format(this, *args)");
        throw new IOException(format);
    }

    @Override // com.apk.ll0
    @NotNull
    /* renamed from: if */
    public ml0 mo71if() {
        return this.f5984if.mo71if();
    }

    @Override // com.apk.ll0
    /* renamed from: import */
    public long mo72import(@NotNull rk0 rk0Var, long j) throws IOException {
        long j2;
        nd0.m1875new(rk0Var, "sink");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i >= 0) {
            if (i == 0) {
                return 0L;
            }
            if (this.f5982do == 0) {
                this.f5984if.mo856native(10L);
                byte m2289default = this.f5984if.f1399do.m2289default(3L);
                boolean z = ((m2289default >> 1) & 1) == 1;
                if (z) {
                    m3079try(this.f5984if.f1399do, 0L, 10L);
                }
                fl0 fl0Var = this.f5984if;
                fl0Var.mo856native(2L);
                m3078for("ID1ID2", 8075, fl0Var.f1399do.readShort());
                this.f5984if.skip(8L);
                if (((m2289default >> 2) & 1) == 1) {
                    this.f5984if.mo856native(2L);
                    if (z) {
                        m3079try(this.f5984if.f1399do, 0L, 2L);
                    }
                    long m2287abstract = this.f5984if.f1399do.m2287abstract();
                    this.f5984if.mo856native(m2287abstract);
                    if (z) {
                        j2 = m2287abstract;
                        m3079try(this.f5984if.f1399do, 0L, m2287abstract);
                    } else {
                        j2 = m2287abstract;
                    }
                    this.f5984if.skip(j2);
                }
                if (((m2289default >> 3) & 1) == 1) {
                    long m854for = this.f5984if.m854for((byte) 0, 0L, RecyclerView.FOREVER_NS);
                    if (m854for != -1) {
                        if (z) {
                            m3079try(this.f5984if.f1399do, 0L, m854for + 1);
                        }
                        this.f5984if.skip(m854for + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (((m2289default >> 4) & 1) == 1) {
                    long m854for2 = this.f5984if.m854for((byte) 0, 0L, RecyclerView.FOREVER_NS);
                    if (m854for2 != -1) {
                        if (z) {
                            m3079try(this.f5984if.f1399do, 0L, m854for2 + 1);
                        }
                        this.f5984if.skip(m854for2 + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (z) {
                    fl0 fl0Var2 = this.f5984if;
                    fl0Var2.mo856native(2L);
                    m3078for("FHCRC", fl0Var2.f1399do.m2287abstract(), (short) this.f5986try.getValue());
                    this.f5986try.reset();
                }
                this.f5982do = (byte) 1;
            }
            if (this.f5982do == 1) {
                long j3 = rk0Var.f4108if;
                long mo72import = this.f5985new.mo72import(rk0Var, j);
                if (mo72import != -1) {
                    m3079try(rk0Var, j3, mo72import);
                    return mo72import;
                }
                this.f5982do = (byte) 2;
            }
            if (this.f5982do == 2) {
                m3078for("CRC", this.f5984if.m849break(), (int) this.f5986try.getValue());
                m3078for("ISIZE", this.f5984if.m849break(), (int) this.f5983for.getBytesWritten());
                this.f5982do = (byte) 3;
                if (!this.f5984if.mo853else()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j).toString());
    }

    /* renamed from: try  reason: not valid java name */
    public final void m3079try(rk0 rk0Var, long j, long j2) {
        int i;
        gl0 gl0Var = rk0Var.f4107do;
        nd0.m1874if(gl0Var);
        while (true) {
            int i2 = gl0Var.f1605for;
            int i3 = gl0Var.f1606if;
            if (j < i2 - i3) {
                break;
            }
            j -= i2 - i3;
            gl0Var = gl0Var.f1602case;
            nd0.m1874if(gl0Var);
        }
        while (j2 > 0) {
            int min = (int) Math.min(gl0Var.f1605for - i, j2);
            this.f5986try.update(gl0Var.f1603do, (int) (gl0Var.f1606if + j), min);
            j2 -= min;
            gl0Var = gl0Var.f1602case;
            nd0.m1874if(gl0Var);
            j = 0;
        }
    }
}
