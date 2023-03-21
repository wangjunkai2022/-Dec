package com.apk;

import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import org.jetbrains.annotations.NotNull;
/* compiled from: StandardAndroidSocketAdapter.kt */
/* loaded from: classes7.dex */
public final class gk0 extends ak0 {

    /* renamed from: goto  reason: not valid java name */
    public static final Cdo f1601goto = new Cdo(null);

    /* compiled from: StandardAndroidSocketAdapter.kt */
    /* renamed from: com.apk.gk0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gk0(@NotNull Class<? super SSLSocket> cls, @NotNull Class<? super SSLSocketFactory> cls2, @NotNull Class<?> cls3) {
        super(cls);
        nd0.m1875new(cls, "sslSocketClass");
        nd0.m1875new(cls2, "sslSocketFactoryClass");
        nd0.m1875new(cls3, "paramClass");
    }
}
