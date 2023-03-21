package com.apk;

import java.io.IOException;
import java.io.InputStream;
import org.jetbrains.annotations.NotNull;

/* compiled from: JvmOkio.kt */
/* loaded from: classes7.dex */
public final class al0 implements ll0 {

    /* renamed from: do  reason: not valid java name */
    public final InputStream f121do;

    /* renamed from: if  reason: not valid java name */
    public final ml0 f122if;

    public al0(@NotNull InputStream inputStream, @NotNull ml0 ml0Var) {
        nd0.m1875new(inputStream, "input");
        nd0.m1875new(ml0Var, "timeout");
        this.f121do = inputStream;
        this.f122if = ml0Var;
    }

    @Override // com.apk.ll0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f121do.close();
    }

    @Override // com.apk.ll0
    @NotNull
    /* renamed from: if  reason: not valid java name */
    public ml0 mo71if() {
        return this.f122if;
    }

    @Override // com.apk.ll0
    /* renamed from: import  reason: not valid java name */
    public long mo72import(@NotNull rk0 rk0Var, long j) {
        nd0.m1875new(rk0Var, "sink");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return 0L;
        }
        if (i >= 0) {
            try {
                this.f122if.mo1728case();
                gl0 m2297protected = rk0Var.m2297protected(1);
                int read = this.f121do.read(m2297protected.f1603do, m2297protected.f1605for, (int) Math.min(j, 8192 - m2297protected.f1605for));
                if (read == -1) {
                    if (m2297protected.f1606if == m2297protected.f1605for) {
                        rk0Var.f4107do = m2297protected.m977do();
                        hl0.m1139do(m2297protected);
                        return -1L;
                    }
                    return -1L;
                }
                m2297protected.f1605for += read;
                long j2 = read;
                rk0Var.f4108if += j2;
                return j2;
            } catch (AssertionError e) {
                if (bl0.m205do(e)) {
                    throw new IOException(e);
                }
                throw e;
            }
        }
        throw new IllegalArgumentException(Cgoto.m1000for("byteCount < 0: ", j).toString());
    }

    @NotNull
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("source(");
        m1016super.append(this.f121do);
        m1016super.append(')');
        return m1016super.toString();
    }
}
