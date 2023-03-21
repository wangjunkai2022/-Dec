package com.apk;

import com.apk.ak0;
import com.apk.ek0;
import javax.net.ssl.SSLSocket;
import org.jetbrains.annotations.NotNull;

/* compiled from: AndroidSocketAdapter.kt */
/* loaded from: classes7.dex */
public final class zj0 implements ek0.Cdo {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f6212do;

    public zj0(String str) {
        this.f6212do = str;
    }

    @Override // com.apk.ek0.Cdo
    /* renamed from: do */
    public boolean mo198do(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        String name = sSLSocket.getClass().getName();
        nd0.m1872for(name, "sslSocket.javaClass.name");
        return ie0.m1206static(name, this.f6212do + '.', false, 2);
    }

    @Override // com.apk.ek0.Cdo
    @NotNull
    /* renamed from: if */
    public fk0 mo199if(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        ak0.Cdo cdo = ak0.f108else;
        Class<?> cls = sSLSocket.getClass();
        Class<?> cls2 = cls;
        while (cls2 != null && (!nd0.m1870do(cls2.getSimpleName(), "OpenSSLSocketImpl"))) {
            cls2 = cls2.getSuperclass();
            if (cls2 == null) {
                throw new AssertionError("No OpenSSLSocketImpl superclass of socket of type " + cls);
            }
        }
        nd0.m1874if(cls2);
        return new ak0(cls2);
    }
}
