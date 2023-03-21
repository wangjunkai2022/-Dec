package com.apk;

import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* compiled from: AsyncTimeout.kt */
/* loaded from: classes7.dex */
public final class qk0 implements ll0 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ok0 f3884do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ll0 f3885if;

    public qk0(ok0 ok0Var, ll0 ll0Var) {
        this.f3884do = ok0Var;
        this.f3885if = ll0Var;
    }

    @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ok0 ok0Var = this.f3884do;
        ok0Var.m1967goto();
        try {
            this.f3885if.close();
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

    @Override // com.apk.ll0
    /* renamed from: if */
    public ml0 mo71if() {
        return this.f3884do;
    }

    @Override // com.apk.ll0
    /* renamed from: import */
    public long mo72import(@NotNull rk0 rk0Var, long j) {
        nd0.m1875new(rk0Var, "sink");
        ok0 ok0Var = this.f3884do;
        ok0Var.m1967goto();
        try {
            long mo72import = this.f3885if.mo72import(rk0Var, j);
            if (ok0Var.m1968this()) {
                throw ok0Var.mo973break(null);
            }
            return mo72import;
        } catch (IOException e) {
            if (!ok0Var.m1968this()) {
                throw e;
            }
            throw ok0Var.mo973break(e);
        } finally {
            ok0Var.m1968this();
        }
    }

    @NotNull
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("AsyncTimeout.source(");
        m1016super.append(this.f3885if);
        m1016super.append(')');
        return m1016super.toString();
    }
}
