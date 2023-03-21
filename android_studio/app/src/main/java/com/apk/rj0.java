package com.apk;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: Jdk8WithJettyBootPlatform.kt */
/* loaded from: classes7.dex */
public final class rj0 extends uj0 {

    /* renamed from: case  reason: not valid java name */
    public final Method f4081case;

    /* renamed from: else  reason: not valid java name */
    public final Class<?> f4082else;

    /* renamed from: goto  reason: not valid java name */
    public final Class<?> f4083goto;

    /* renamed from: new  reason: not valid java name */
    public final Method f4084new;

    /* renamed from: try  reason: not valid java name */
    public final Method f4085try;

    /* compiled from: Jdk8WithJettyBootPlatform.kt */
    /* renamed from: com.apk.rj0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo implements InvocationHandler {

        /* renamed from: do  reason: not valid java name */
        public boolean f4086do;

        /* renamed from: for  reason: not valid java name */
        public final List<String> f4087for;
        @Nullable

        /* renamed from: if  reason: not valid java name */
        public String f4088if;

        public Cdo(@NotNull List<String> list) {
            nd0.m1875new(list, "protocols");
            this.f4087for = list;
        }

        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(@NotNull Object obj, @NotNull Method method, @Nullable Object[] objArr) throws Throwable {
            nd0.m1875new(obj, "proxy");
            nd0.m1875new(method, "method");
            if (objArr == null) {
                objArr = new Object[0];
            }
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (nd0.m1870do(name, "supports") && nd0.m1870do(Boolean.TYPE, returnType)) {
                return Boolean.TRUE;
            }
            if (nd0.m1870do(name, "unsupported") && nd0.m1870do(Void.TYPE, returnType)) {
                this.f4086do = true;
                return null;
            }
            if (nd0.m1870do(name, "protocols")) {
                if (objArr.length == 0) {
                    return this.f4087for;
                }
            }
            if ((nd0.m1870do(name, "selectProtocol") || nd0.m1870do(name, "select")) && nd0.m1870do(String.class, returnType) && objArr.length == 1 && (objArr[0] instanceof List)) {
                Object obj2 = objArr[0];
                if (obj2 != null) {
                    List list = (List) obj2;
                    int size = list.size();
                    if (size >= 0) {
                        int i = 0;
                        while (true) {
                            Object obj3 = list.get(i);
                            if (obj3 != null) {
                                String str = (String) obj3;
                                if (!this.f4087for.contains(str)) {
                                    if (i == size) {
                                        break;
                                    }
                                    i++;
                                } else {
                                    this.f4088if = str;
                                    return str;
                                }
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                            }
                        }
                    }
                    String str2 = this.f4087for.get(0);
                    this.f4088if = str2;
                    return str2;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<*>");
            } else if ((nd0.m1870do(name, "protocolSelected") || nd0.m1870do(name, "selected")) && objArr.length == 1) {
                Object obj4 = objArr[0];
                if (obj4 != null) {
                    this.f4088if = (String) obj4;
                    return null;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            } else {
                return method.invoke(this, Arrays.copyOf(objArr, objArr.length));
            }
        }
    }

    public rj0(@NotNull Method method, @NotNull Method method2, @NotNull Method method3, @NotNull Class<?> cls, @NotNull Class<?> cls2) {
        nd0.m1875new(method, "putMethod");
        nd0.m1875new(method2, "getMethod");
        nd0.m1875new(method3, "removeMethod");
        nd0.m1875new(cls, "clientProviderClass");
        nd0.m1875new(cls2, "serverProviderClass");
        this.f4084new = method;
        this.f4085try = method2;
        this.f4081case = method3;
        this.f4082else = cls;
        this.f4083goto = cls2;
    }

    @Override // com.apk.uj0
    @Nullable
    /* renamed from: case */
    public String mo1882case(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        try {
            InvocationHandler invocationHandler = Proxy.getInvocationHandler(this.f4085try.invoke(null, sSLSocket));
            if (invocationHandler != null) {
                Cdo cdo = (Cdo) invocationHandler;
                if (!cdo.f4086do && cdo.f4088if == null) {
                    uj0.m2705break(this, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", 0, null, 6, null);
                    return null;
                } else if (cdo.f4086do) {
                    return null;
                } else {
                    return cdo.f4088if;
                }
            }
            throw new NullPointerException("null cannot be cast to non-null type okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider");
        } catch (IllegalAccessException e) {
            throw new AssertionError("failed to get ALPN selected protocol", e);
        } catch (InvocationTargetException e2) {
            throw new AssertionError("failed to get ALPN selected protocol", e2);
        }
    }

    @Override // com.apk.uj0
    /* renamed from: do  reason: not valid java name */
    public void mo2279do(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        try {
            this.f4081case.invoke(null, sSLSocket);
        } catch (IllegalAccessException e) {
            throw new AssertionError("failed to remove ALPN", e);
        } catch (InvocationTargetException e2) {
            throw new AssertionError("failed to remove ALPN", e2);
        }
    }

    @Override // com.apk.uj0
    /* renamed from: new */
    public void mo1885new(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<? extends yg0> list) {
        nd0.m1875new(sSLSocket, "sslSocket");
        nd0.m1875new(list, "protocols");
        nd0.m1875new(list, "protocols");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((yg0) next) != yg0.HTTP_1_0) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(sb0.m2420native(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((yg0) it2.next()).f5947do);
        }
        try {
            this.f4084new.invoke(null, sSLSocket, Proxy.newProxyInstance(uj0.class.getClassLoader(), new Class[]{this.f4082else, this.f4083goto}, new Cdo(arrayList2)));
        } catch (IllegalAccessException e) {
            throw new AssertionError("failed to set ALPN", e);
        } catch (InvocationTargetException e2) {
            throw new AssertionError("failed to set ALPN", e2);
        }
    }
}
