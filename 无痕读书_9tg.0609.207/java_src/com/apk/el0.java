package com.apk;

import java.nio.ByteBuffer;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
/* compiled from: RealBufferedSink.kt */
/* loaded from: classes7.dex */
public final class el0 implements sk0 {
    @JvmField
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final rk0 f1089do;
    @JvmField
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final jl0 f1090for;
    @JvmField

    /* renamed from: if  reason: not valid java name */
    public boolean f1091if;

    public el0(@NotNull jl0 jl0Var) {
        nd0.m1875new(jl0Var, "sink");
        this.f1090for = jl0Var;
        this.f1089do = new rk0();
    }

    @Override // com.apk.jl0
    /* renamed from: class */
    public void mo477class(@NotNull rk0 rk0Var, long j) {
        nd0.m1875new(rk0Var, "source");
        if (!this.f1091if) {
            this.f1089do.mo477class(rk0Var, j);
            m641for();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // com.apk.jl0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f1091if) {
            return;
        }
        Throwable th = null;
        try {
            if (this.f1089do.f4108if > 0) {
                this.f1090for.mo477class(this.f1089do, this.f1089do.f4108if);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f1090for.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f1091if = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // com.apk.sk0
    /* renamed from: const  reason: not valid java name */
    public long mo638const(@NotNull ll0 ll0Var) {
        nd0.m1875new(ll0Var, "source");
        long j = 0;
        while (true) {
            long mo72import = ll0Var.mo72import(this.f1089do, 8192);
            if (mo72import == -1) {
                return j;
            }
            j += mo72import;
            m641for();
        }
    }

    @Override // com.apk.sk0
    @NotNull
    /* renamed from: do  reason: not valid java name */
    public rk0 mo639do() {
        return this.f1089do;
    }

    @Override // com.apk.sk0
    @NotNull
    /* renamed from: final  reason: not valid java name */
    public sk0 mo640final(long j) {
        if (!this.f1091if) {
            this.f1089do.mo640final(j);
            return m641for();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // com.apk.sk0, com.apk.jl0, java.io.Flushable
    public void flush() {
        if (!this.f1091if) {
            rk0 rk0Var = this.f1089do;
            long j = rk0Var.f4108if;
            if (j > 0) {
                this.f1090for.mo477class(rk0Var, j);
            }
            this.f1090for.flush();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    /* renamed from: for  reason: not valid java name */
    public sk0 m641for() {
        int i;
        if (!this.f1091if) {
            rk0 rk0Var = this.f1089do;
            long j = rk0Var.f4108if;
            if (j == 0) {
                j = 0;
            } else {
                gl0 gl0Var = rk0Var.f4107do;
                nd0.m1874if(gl0Var);
                gl0 gl0Var2 = gl0Var.f1604else;
                nd0.m1874if(gl0Var2);
                if (gl0Var2.f1605for < 8192 && gl0Var2.f1608try) {
                    j -= i - gl0Var2.f1606if;
                }
            }
            if (j > 0) {
                this.f1090for.mo477class(this.f1089do, j);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // com.apk.jl0
    @NotNull
    /* renamed from: if */
    public ml0 mo478if() {
        return this.f1090for.mo478if();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f1091if;
    }

    @Override // com.apk.sk0
    @NotNull
    /* renamed from: public  reason: not valid java name */
    public sk0 mo642public(long j) {
        if (!this.f1091if) {
            this.f1089do.mo642public(j);
            m641for();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // com.apk.sk0
    @NotNull
    /* renamed from: this  reason: not valid java name */
    public sk0 mo643this(@NotNull String str) {
        nd0.m1875new(str, "string");
        if (!this.f1091if) {
            this.f1089do.j(str);
            return m641for();
        }
        throw new IllegalStateException("closed".toString());
    }

    @NotNull
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("buffer(");
        m1016super.append(this.f1090for);
        m1016super.append(')');
        return m1016super.toString();
    }

    @Override // com.apk.sk0
    @NotNull
    /* renamed from: while  reason: not valid java name */
    public sk0 mo644while(@NotNull uk0 uk0Var) {
        nd0.m1875new(uk0Var, "byteString");
        if (!this.f1091if) {
            this.f1089do.m2301transient(uk0Var);
            m641for();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer byteBuffer) {
        nd0.m1875new(byteBuffer, "source");
        if (!this.f1091if) {
            int write = this.f1089do.write(byteBuffer);
            m641for();
            return write;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // com.apk.sk0
    @NotNull
    public sk0 writeByte(int i) {
        if (!this.f1091if) {
            this.f1089do.m2299synchronized(i);
            m641for();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // com.apk.sk0
    @NotNull
    public sk0 writeInt(int i) {
        if (!this.f1091if) {
            this.f1089do.h(i);
            return m641for();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // com.apk.sk0
    @NotNull
    public sk0 writeShort(int i) {
        if (!this.f1091if) {
            this.f1089do.i(i);
            m641for();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // com.apk.sk0
    @NotNull
    public sk0 write(@NotNull byte[] bArr) {
        nd0.m1875new(bArr, "source");
        if (!this.f1091if) {
            this.f1089do.m2292implements(bArr);
            m641for();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // com.apk.sk0
    @NotNull
    public sk0 write(@NotNull byte[] bArr, int i, int i2) {
        nd0.m1875new(bArr, "source");
        if (!this.f1091if) {
            this.f1089do.m2293instanceof(bArr, i, i2);
            m641for();
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }
}
