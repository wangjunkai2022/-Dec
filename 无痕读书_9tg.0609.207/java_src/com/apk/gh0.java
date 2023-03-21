package com.apk;

import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: TlsVersion.kt */
/* loaded from: classes7.dex */
public enum gh0 {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");
    

    /* renamed from: goto  reason: not valid java name */
    public static final Cdo f1570goto = new Cdo(null);
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final String f1574do;

    /* compiled from: TlsVersion.kt */
    /* renamed from: com.apk.gh0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }

        @JvmStatic
        @NotNull
        /* renamed from: do  reason: not valid java name */
        public final gh0 m958do(@NotNull String str) {
            nd0.m1875new(str, "javaName");
            int hashCode = str.hashCode();
            if (hashCode != 79201641) {
                if (hashCode != 79923350) {
                    switch (hashCode) {
                        case -503070503:
                            if (str.equals("TLSv1.1")) {
                                return gh0.TLS_1_1;
                            }
                            break;
                        case -503070502:
                            if (str.equals("TLSv1.2")) {
                                return gh0.TLS_1_2;
                            }
                            break;
                        case -503070501:
                            if (str.equals("TLSv1.3")) {
                                return gh0.TLS_1_3;
                            }
                            break;
                    }
                } else if (str.equals("TLSv1")) {
                    return gh0.TLS_1_0;
                }
            } else if (str.equals("SSLv3")) {
                return gh0.SSL_3_0;
            }
            throw new IllegalArgumentException(Cgoto.m989case("Unexpected TLS version: ", str));
        }
    }

    gh0(String str) {
        this.f1574do = str;
    }
}
