package com.apk;

import java.util.List;
import javax.net.ssl.SSLSocket;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: SocketAdapter.kt */
/* loaded from: classes7.dex */
public interface fk0 {
    /* renamed from: do */
    boolean mo62do(@NotNull SSLSocket sSLSocket);

    /* renamed from: for */
    void mo63for(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<? extends yg0> list);

    @Nullable
    /* renamed from: if */
    String mo64if(@NotNull SSLSocket sSLSocket);

    boolean isSupported();
}
