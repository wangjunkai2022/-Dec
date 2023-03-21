package com.apk;

import com.apk.ek0;
import com.apk.oj0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import javax.net.ssl.SSLSocket;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: AndroidSocketAdapter.kt */
/* loaded from: classes7.dex */
public class ak0 implements fk0 {
    @NotNull

    /* renamed from: case  reason: not valid java name */
    public static final ek0.Cdo f107case;

    /* renamed from: else  reason: not valid java name */
    public static final Cdo f108else;

    /* renamed from: do  reason: not valid java name */
    public final Method f109do;

    /* renamed from: for  reason: not valid java name */
    public final Method f110for;

    /* renamed from: if  reason: not valid java name */
    public final Method f111if;

    /* renamed from: new  reason: not valid java name */
    public final Method f112new;

    /* renamed from: try  reason: not valid java name */
    public final Class<? super SSLSocket> f113try;

    /* compiled from: AndroidSocketAdapter.kt */
    /* renamed from: com.apk.ak0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        public Cdo(md0 md0Var) {
        }
    }

    static {
        Cdo cdo = new Cdo(null);
        f108else = cdo;
        if (cdo != null) {
            nd0.m1875new("com.google.android.gms.org.conscrypt", "packageName");
            f107case = new zj0("com.google.android.gms.org.conscrypt");
            return;
        }
        throw null;
    }

    public ak0(@NotNull Class<? super SSLSocket> cls) {
        nd0.m1875new(cls, "sslSocketClass");
        this.f113try = cls;
        Method declaredMethod = cls.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        nd0.m1872for(declaredMethod, "sslSocketClass.getDeclar…:class.javaPrimitiveType)");
        this.f109do = declaredMethod;
        this.f111if = this.f113try.getMethod("setHostname", String.class);
        this.f110for = this.f113try.getMethod("getAlpnSelectedProtocol", new Class[0]);
        this.f112new = this.f113try.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override // com.apk.fk0
    /* renamed from: do  reason: not valid java name */
    public boolean mo62do(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        return this.f113try.isInstance(sSLSocket);
    }

    @Override // com.apk.fk0
    /* renamed from: for  reason: not valid java name */
    public void mo63for(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<? extends yg0> list) {
        nd0.m1875new(sSLSocket, "sslSocket");
        nd0.m1875new(list, "protocols");
        if (mo62do(sSLSocket)) {
            try {
                this.f109do.invoke(sSLSocket, Boolean.TRUE);
                if (str != null) {
                    this.f111if.invoke(sSLSocket, str);
                }
                this.f112new.invoke(sSLSocket, uj0.f4907for.m2709if(list));
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    @Override // com.apk.fk0
    @Nullable
    /* renamed from: if  reason: not valid java name */
    public String mo64if(@NotNull SSLSocket sSLSocket) {
        nd0.m1875new(sSLSocket, "sslSocket");
        if (mo62do(sSLSocket)) {
            try {
                byte[] bArr = (byte[]) this.f110for.invoke(sSLSocket, new Object[0]);
                if (bArr != null) {
                    Charset charset = StandardCharsets.UTF_8;
                    nd0.m1872for(charset, "StandardCharsets.UTF_8");
                    return new String(bArr, charset);
                }
                return null;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (NullPointerException e2) {
                if (nd0.m1870do(e2.getMessage(), "ssl == null")) {
                    return null;
                }
                throw e2;
            } catch (InvocationTargetException e3) {
                throw new AssertionError(e3);
            }
        }
        return null;
    }

    @Override // com.apk.fk0
    public boolean isSupported() {
        oj0.Cdo cdo = oj0.f3442else;
        return oj0.f3441case;
    }
}
