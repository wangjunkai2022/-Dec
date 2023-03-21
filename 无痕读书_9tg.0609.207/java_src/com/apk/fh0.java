package com.apk;

import java.net.InetSocketAddress;
import java.net.Proxy;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Route.kt */
/* loaded from: classes7.dex */
public final class fh0 {
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final uf0 f1292do;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final InetSocketAddress f1293for;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final Proxy f1294if;

    public fh0(@NotNull uf0 uf0Var, @NotNull Proxy proxy, @NotNull InetSocketAddress inetSocketAddress) {
        nd0.m1875new(uf0Var, "address");
        nd0.m1875new(proxy, "proxy");
        nd0.m1875new(inetSocketAddress, "socketAddress");
        this.f1292do = uf0Var;
        this.f1294if = proxy;
        this.f1293for = inetSocketAddress;
    }

    /* renamed from: do  reason: not valid java name */
    public final boolean m781do() {
        return this.f1292do.f4878case != null && this.f1294if.type() == Proxy.Type.HTTP;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof fh0) {
            fh0 fh0Var = (fh0) obj;
            if (nd0.m1870do(fh0Var.f1292do, this.f1292do) && nd0.m1870do(fh0Var.f1294if, this.f1294if) && nd0.m1870do(fh0Var.f1293for, this.f1293for)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f1294if.hashCode();
        return this.f1293for.hashCode() + ((hashCode + ((this.f1292do.hashCode() + 527) * 31)) * 31);
    }

    @NotNull
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Route{");
        m1016super.append(this.f1293for);
        m1016super.append('}');
        return m1016super.toString();
    }
}
