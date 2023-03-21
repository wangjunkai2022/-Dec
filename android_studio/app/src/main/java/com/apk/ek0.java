package com.apk;

import java.util.List;
import javax.net.ssl.SSLSocket;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: DeferredSocketAdapter.kt */
/* loaded from: classes7.dex */
public final class ek0 implements fk0 {

    /* renamed from: do  reason: not valid java name */
    public fk0 f1084do;

    /* renamed from: if  reason: not valid java name */
    public final Cdo f1085if;

    /* compiled from: DeferredSocketAdapter.kt */
    /* renamed from: com.apk.ek0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cdo {
        /* renamed from: do */
        boolean mo198do(@NotNull SSLSocket sSLSocket);

        @NotNull
        /* renamed from: if */
        fk0 mo199if(@NotNull SSLSocket sSLSocket);
    }

    public ek0(@NotNull Cdo cdo) {
        nd0.m1875new(cdo, "socketAdapterFactory");
        this.f1085if = cdo;
    }

    @Override // com.apk.fk0
    /* renamed from: do */
    public boolean mo62do(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        return this.f1085if.mo198do(sSLSocket);
    }

    @Override // com.apk.fk0
    /* renamed from: for */
    public void mo63for(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<? extends yg0> list) {
        nd0.m1875new(sSLSocket, "sslSocket");
        nd0.m1875new(list, "protocols");
        fk0 m636new = m636new(sSLSocket);
        if (m636new != null) {
            m636new.mo63for(sSLSocket, str, list);
        }
    }

    @Override // com.apk.fk0
    @Nullable
    /* renamed from: if */
    public String mo64if(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        fk0 m636new = m636new(sSLSocket);
        if (m636new != null) {
            return m636new.mo64if(sSLSocket);
        }
        return null;
    }

    @Override // com.apk.fk0
    public boolean isSupported() {
        return true;
    }

    /* renamed from: new  reason: not valid java name */
    public final synchronized fk0 m636new(SSLSocket sSLSocket) {
        if (this.f1084do == null && this.f1085if.mo198do(sSLSocket)) {
            this.f1084do = this.f1085if.mo199if(sSLSocket);
        }
        return this.f1084do;
    }
}
