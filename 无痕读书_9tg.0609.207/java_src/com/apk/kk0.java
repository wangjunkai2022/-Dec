package com.apk;

import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import org.jetbrains.annotations.NotNull;
/* compiled from: CertificateChainCleaner.kt */
/* loaded from: classes7.dex */
public abstract class kk0 {
    @NotNull
    /* renamed from: do */
    public abstract List<Certificate> mo1231do(@NotNull List<? extends Certificate> list, @NotNull String str) throws SSLPeerUnverifiedException;
}
