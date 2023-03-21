package com.apk;

import com.apk.ek0;
import com.apk.qj0;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: ConscryptSocketAdapter.kt */
/* loaded from: classes7.dex */
public final class dk0 implements fk0 {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public static final ek0.Cdo f918do = new Cdo();

    /* compiled from: ConscryptSocketAdapter.kt */
    /* renamed from: com.apk.dk0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo implements ek0.Cdo {
        @Override // com.apk.ek0.Cdo
        /* renamed from: do */
        public boolean mo198do(@NotNull SSLSocket sSLSocket) {
            nd0.m1875new(sSLSocket, "sslSocket");
            qj0.Cdo cdo = qj0.f3880case;
            return qj0.f3881try && Conscrypt.isConscrypt(sSLSocket);
        }

        @Override // com.apk.ek0.Cdo
        @NotNull
        /* renamed from: if */
        public fk0 mo199if(@NotNull SSLSocket sSLSocket) {
            nd0.m1875new(sSLSocket, "sslSocket");
            return new dk0();
        }
    }

    @Override // com.apk.fk0
    /* renamed from: do */
    public boolean mo62do(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        return Conscrypt.isConscrypt(sSLSocket);
    }

    @Override // com.apk.fk0
    /* renamed from: for */
    public void mo63for(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<? extends yg0> list) {
        nd0.m1875new(sSLSocket, "sslSocket");
        nd0.m1875new(list, "protocols");
        if (mo62do(sSLSocket)) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            Object[] array = ((ArrayList) uj0.f4907for.m2707do(list)).toArray(new String[0]);
            if (array != null) {
                Conscrypt.setApplicationProtocols(sSLSocket, (String[]) array);
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
        if (mo62do(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }

    @Override // com.apk.fk0
    public boolean isSupported() {
        qj0.Cdo cdo = qj0.f3880case;
        return qj0.f3881try;
    }
}
