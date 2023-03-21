package com.apk;

import java.io.OutputStream;
import org.jetbrains.annotations.NotNull;

/* compiled from: JvmOkio.kt */
/* loaded from: classes7.dex */
public final class dl0 implements jl0 {

    /* renamed from: do  reason: not valid java name */
    public final OutputStream f921do;

    /* renamed from: if  reason: not valid java name */
    public final ml0 f922if;

    public dl0(@NotNull OutputStream outputStream, @NotNull ml0 ml0Var) {
        nd0.m1875new(outputStream, "out");
        nd0.m1875new(ml0Var, "timeout");
        this.f921do = outputStream;
        this.f922if = ml0Var;
    }

    @Override // com.apk.jl0
    /* renamed from: class  reason: not valid java name */
    public void mo477class(@NotNull rk0 rk0Var, long j) {
        nd0.m1875new(rk0Var, "source");
        sb0.m2433throw(rk0Var.f4108if, 0L, j);
        while (j > 0) {
            this.f922if.mo1728case();
            gl0 gl0Var = rk0Var.f4107do;
            nd0.m1874if(gl0Var);
            int min = (int) Math.min(j, gl0Var.f1605for - gl0Var.f1606if);
            this.f921do.write(gl0Var.f1603do, gl0Var.f1606if, min);
            int i = gl0Var.f1606if + min;
            gl0Var.f1606if = i;
            long j2 = min;
            j -= j2;
            rk0Var.f4108if -= j2;
            if (i == gl0Var.f1605for) {
                rk0Var.f4107do = gl0Var.m977do();
                hl0.m1139do(gl0Var);
            }
        }
    }

    @Override // com.apk.jl0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f921do.close();
    }

    @Override // com.apk.jl0, java.io.Flushable
    public void flush() {
        this.f921do.flush();
    }

    @Override // com.apk.jl0
    @NotNull
    /* renamed from: if  reason: not valid java name */
    public ml0 mo478if() {
        return this.f922if;
    }

    @NotNull
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("sink(");
        m1016super.append(this.f921do);
        m1016super.append(')');
        return m1016super.toString();
    }
}
