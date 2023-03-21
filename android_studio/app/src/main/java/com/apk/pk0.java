package com.apk;

import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* compiled from: AsyncTimeout.kt */
/* loaded from: classes7.dex */
public final class pk0 implements jl0 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ok0 f3680do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ jl0 f3681if;

    public pk0(ok0 ok0Var, jl0 jl0Var) {
        this.f3680do = ok0Var;
        this.f3681if = jl0Var;
    }

    @Override // com.apk.jl0
    /* renamed from: class */
    public void mo477class(@NotNull rk0 rk0Var, long j) {
        nd0.m1875new(rk0Var, "source");
        sb0.m2433throw(rk0Var.f4108if, 0L, j);
        while (true) {
            long j2 = 0;
            if (j <= 0) {
                return;
            }
            gl0 gl0Var = rk0Var.f4107do;
            nd0.m1874if(gl0Var);
            while (true) {
                if (j2 >= 65536) {
                    break;
                }
                j2 += gl0Var.f1605for - gl0Var.f1606if;
                if (j2 >= j) {
                    j2 = j;
                    break;
                } else {
                    gl0Var = gl0Var.f1602case;
                    nd0.m1874if(gl0Var);
                }
            }
            ok0 ok0Var = this.f3680do;
            ok0Var.m1967goto();
            try {
                this.f3681if.mo477class(rk0Var, j2);
                if (ok0Var.m1968this()) {
                    throw ok0Var.mo973break(null);
                }
                j -= j2;
            } catch (IOException e) {
                if (!ok0Var.m1968this()) {
                    throw e;
                }
                throw ok0Var.mo973break(e);
            } finally {
                ok0Var.m1968this();
            }
        }
    }

    @Override // com.apk.jl0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ok0 ok0Var = this.f3680do;
        ok0Var.m1967goto();
        try {
            this.f3681if.close();
            if (ok0Var.m1968this()) {
                throw ok0Var.mo973break(null);
            }
        } catch (IOException e) {
            if (!ok0Var.m1968this()) {
                throw e;
            }
            throw ok0Var.mo973break(e);
        } finally {
            ok0Var.m1968this();
        }
    }

    @Override // com.apk.jl0, java.io.Flushable
    public void flush() {
        ok0 ok0Var = this.f3680do;
        ok0Var.m1967goto();
        try {
            this.f3681if.flush();
            if (ok0Var.m1968this()) {
                throw ok0Var.mo973break(null);
            }
        } catch (IOException e) {
            if (!ok0Var.m1968this()) {
                throw e;
            }
            throw ok0Var.mo973break(e);
        } finally {
            ok0Var.m1968this();
        }
    }

    @Override // com.apk.jl0
    /* renamed from: if */
    public ml0 mo478if() {
        return this.f3680do;
    }

    @NotNull
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("AsyncTimeout.sink(");
        m1016super.append(this.f3681if);
        m1016super.append(')');
        return m1016super.toString();
    }
}
