package com.apk;

import android.annotation.SuppressLint;
import android.net.ssl.SSLSockets;
import android.os.Build;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import okhttp3.internal.SuppressSignatureCheck;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Android10SocketAdapter.kt */
@SuppressSignatureCheck
@SuppressLint({"NewApi"})
/* loaded from: classes7.dex */
public final class vj0 implements fk0 {
    @Override // com.apk.fk0
    /* renamed from: do */
    public boolean mo62do(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        return SSLSockets.isSupportedSocket(sSLSocket);
    }

    @Override // com.apk.fk0
    @SuppressLint({"NewApi"})
    /* renamed from: for */
    public void mo63for(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<? extends yg0> list) {
        nd0.m1875new(sSLSocket, "sslSocket");
        nd0.m1875new(list, "protocols");
        try {
            SSLSockets.setUseSessionTickets(sSLSocket, true);
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            nd0.m1872for(sSLParameters, "sslParameters");
            Object[] array = ((ArrayList) uj0.f4907for.m2707do(list)).toArray(new String[0]);
            if (array != null) {
                sSLParameters.setApplicationProtocols((String[]) array);
                sSLSocket.setSSLParameters(sSLParameters);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        } catch (IllegalArgumentException e) {
            throw new IOException("Android internal error", e);
        }
    }

    @Override // com.apk.fk0
    @SuppressLint({"NewApi"})
    @Nullable
    /* renamed from: if */
    public String mo64if(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        String applicationProtocol = sSLSocket.getApplicationProtocol();
        if (applicationProtocol == null || (applicationProtocol.hashCode() == 0 && applicationProtocol.equals(""))) {
            return null;
        }
        return applicationProtocol;
    }

    @Override // com.apk.fk0
    public boolean isSupported() {
        return uj0.f4907for.m2708for() && Build.VERSION.SDK_INT >= 29;
    }
}
