package com.apk;

import com.apk.ek0;
import com.apk.pj0;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLSocket;
import org.bouncycastle.jsse.BCSSLParameters;
import org.bouncycastle.jsse.BCSSLSocket;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: BouncyCastleSocketAdapter.kt */
/* loaded from: classes7.dex */
public final class bk0 implements fk0 {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final ek0.Cdo f348do = new Cdo();

    /* compiled from: BouncyCastleSocketAdapter.kt */
    /* renamed from: com.apk.bk0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo implements ek0.Cdo {
        @Override // com.apk.ek0.Cdo
        /* renamed from: do  reason: not valid java name */
        public boolean mo198do(@NotNull SSLSocket sSLSocket) {
            nd0.m1875new(sSLSocket, "sslSocket");
            pj0.Cdo cdo = pj0.f3674case;
            return pj0.f3675try && (sSLSocket instanceof BCSSLSocket);
        }

        @Override // com.apk.ek0.Cdo
        @NotNull
        /* renamed from: if  reason: not valid java name */
        public fk0 mo199if(@NotNull SSLSocket sSLSocket) {
            nd0.m1875new(sSLSocket, "sslSocket");
            return new bk0();
        }
    }

    @Override // com.apk.fk0
    /* renamed from: do */
    public boolean mo62do(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        return sSLSocket instanceof BCSSLSocket;
    }

    @Override // com.apk.fk0
    /* renamed from: for */
    public void mo63for(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<? extends yg0> list) {
        nd0.m1875new(sSLSocket, "sslSocket");
        nd0.m1875new(list, "protocols");
        if (mo62do(sSLSocket)) {
            BCSSLSocket bCSSLSocket = (BCSSLSocket) sSLSocket;
            BCSSLParameters parameters = bCSSLSocket.getParameters();
            nd0.m1872for(parameters, "sslParameters");
            Object[] array = ((ArrayList) uj0.f4907for.m2707do(list)).toArray(new String[0]);
            if (array != null) {
                parameters.setApplicationProtocols((String[]) array);
                bCSSLSocket.setParameters(parameters);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
    }

    @Override // com.apk.fk0
    @Nullable
    /* renamed from: if */
    public String mo64if(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        String applicationProtocol = ((BCSSLSocket) sSLSocket).getApplicationProtocol();
        if (applicationProtocol == null || (applicationProtocol.hashCode() == 0 && applicationProtocol.equals(""))) {
            return null;
        }
        return applicationProtocol;
    }

    @Override // com.apk.fk0
    public boolean isSupported() {
        pj0.Cdo cdo = pj0.f3674case;
        return pj0.f3675try;
    }
}
