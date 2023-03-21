package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import com.apk.Cgoto;
import java.net.InetSocketAddress;
import java.net.Proxy;

/* compiled from: Route.java */
/* loaded from: classes8.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    public final a f10767a;
    public final Proxy b;
    public final InetSocketAddress c;

    public c0(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress != null) {
            this.f10767a = aVar;
            this.b = proxy;
            this.c = inetSocketAddress;
            return;
        }
        throw new NullPointerException("inetSocketAddress == null");
    }

    public a a() {
        return this.f10767a;
    }

    public Proxy b() {
        return this.b;
    }

    public boolean c() {
        return this.f10767a.i != null && this.b.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress d() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj instanceof c0) {
            c0 c0Var = (c0) obj;
            if (c0Var.f10767a.equals(this.f10767a) && c0Var.b.equals(this.b) && c0Var.c.equals(this.c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.b.hashCode();
        return this.c.hashCode() + ((hashCode + ((this.f10767a.hashCode() + 527) * 31)) * 31);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Route{");
        m1016super.append(this.c);
        m1016super.append("}");
        return m1016super.toString();
    }
}
