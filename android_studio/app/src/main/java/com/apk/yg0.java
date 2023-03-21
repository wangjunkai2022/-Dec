package com.apk;

import java.io.IOException;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;

/* compiled from: Protocol.kt */
/* loaded from: classes7.dex */
public enum yg0 {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");
    

    /* renamed from: this  reason: not valid java name */
    public static final Cdo f5945this = new Cdo(null);

    /* renamed from: do  reason: not valid java name */
    public final String f5947do;

    /* compiled from: Protocol.kt */
    /* renamed from: com.apk.yg0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        @JvmStatic
        @NotNull
        /* renamed from: do  reason: not valid java name */
        public final yg0 m3067do(@NotNull String str) throws IOException {
            yg0 yg0Var = yg0.QUIC;
            yg0 yg0Var2 = yg0.SPDY_3;
            yg0 yg0Var3 = yg0.HTTP_2;
            yg0 yg0Var4 = yg0.H2_PRIOR_KNOWLEDGE;
            yg0 yg0Var5 = yg0.HTTP_1_1;
            yg0 yg0Var6 = yg0.HTTP_1_0;
            nd0.m1875new(str, "protocol");
            if (nd0.m1870do(str, yg0Var6.f5947do)) {
                return yg0Var6;
            }
            if (nd0.m1870do(str, yg0Var5.f5947do)) {
                return yg0Var5;
            }
            if (nd0.m1870do(str, yg0Var4.f5947do)) {
                return yg0Var4;
            }
            if (nd0.m1870do(str, yg0Var3.f5947do)) {
                return yg0Var3;
            }
            if (nd0.m1870do(str, yg0Var2.f5947do)) {
                return yg0Var2;
            }
            if (nd0.m1870do(str, yg0Var.f5947do)) {
                return yg0Var;
            }
            throw new IOException(Cgoto.m989case("Unexpected protocol: ", str));
        }
    }

    yg0(String str) {
        this.f5947do = str;
    }

    @Override // java.lang.Enum
    @NotNull
    public String toString() {
        return this.f5947do;
    }
}
