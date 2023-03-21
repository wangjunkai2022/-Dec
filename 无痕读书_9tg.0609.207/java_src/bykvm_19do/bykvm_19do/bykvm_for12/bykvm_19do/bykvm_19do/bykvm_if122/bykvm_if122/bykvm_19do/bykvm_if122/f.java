package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_if122;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.c0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.p;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.s;
import com.apk.Cgoto;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
/* compiled from: RouteSelector.java */
/* loaded from: classes8.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a f10728a;
    public final d b;
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e c;
    public final p d;
    public int f;
    public List<Proxy> e = Collections.emptyList();
    public List<InetSocketAddress> g = Collections.emptyList();
    public final List<c0> h = new ArrayList();

    /* compiled from: RouteSelector.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final List<c0> f10729a;
        public int b = 0;

        public a(List<c0> list) {
            this.f10729a = list;
        }

        public List<c0> a() {
            return new ArrayList(this.f10729a);
        }

        public boolean b() {
            return this.b < this.f10729a.size();
        }

        public c0 c() {
            if (b()) {
                List<c0> list = this.f10729a;
                int i = this.b;
                this.b = i + 1;
                return list.get(i);
            }
            throw new NoSuchElementException();
        }
    }

    public f(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a aVar, d dVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.e eVar, p pVar) throws IOException {
        this.f10728a = aVar;
        this.b = dVar;
        this.c = eVar;
        this.d = pVar;
        a(aVar.k(), aVar.f());
    }

    private boolean c() {
        return this.f < this.e.size();
    }

    private Proxy d() throws IOException {
        if (c()) {
            List<Proxy> list = this.e;
            int i = this.f;
            this.f = i + 1;
            Proxy proxy = list.get(i);
            a(proxy);
            return proxy;
        }
        StringBuilder m1016super = Cgoto.m1016super("No route to ");
        m1016super.append(this.f10728a.k().g());
        m1016super.append("; exhausted proxy configurations: ");
        m1016super.append(this.e);
        throw new SocketException(m1016super.toString());
    }

    public boolean a() {
        return c() || !this.h.isEmpty();
    }

    public a b() throws IOException {
        if (a()) {
            ArrayList arrayList = new ArrayList();
            while (c()) {
                Proxy d = d();
                int size = this.g.size();
                for (int i = 0; i < size; i++) {
                    c0 c0Var = new c0(this.f10728a, d, this.g.get(i));
                    if (this.b.c(c0Var)) {
                        this.h.add(c0Var);
                    } else {
                        arrayList.add(c0Var);
                    }
                }
                if (!arrayList.isEmpty()) {
                    break;
                }
            }
            if (arrayList.isEmpty()) {
                arrayList.addAll(this.h);
                this.h.clear();
            }
            return new a(arrayList);
        }
        throw new NoSuchElementException();
    }

    public void a(c0 c0Var, IOException iOException) {
        if (c0Var.b().type() != Proxy.Type.DIRECT && this.f10728a.h() != null) {
            this.f10728a.h().connectFailed(this.f10728a.k().n(), c0Var.b().address(), iOException);
        }
        this.b.b(c0Var);
    }

    private void a(s sVar, Proxy proxy) throws IOException {
        List<Proxy> a2;
        if (proxy != null) {
            this.e = Collections.singletonList(proxy);
        } else {
            try {
                List<Proxy> select = this.f10728a.h().select(sVar.n());
                if (select != null && !select.isEmpty()) {
                    a2 = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(select);
                } else {
                    a2 = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.c.a(Proxy.NO_PROXY);
                }
                this.e = a2;
            } catch (IllegalArgumentException unused) {
                throw new IOException();
            }
        }
        this.f = 0;
    }

    private void a(Proxy proxy) throws IOException {
        String g;
        int j;
        this.g = new ArrayList();
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress address = proxy.address();
            if (address instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                g = a(inetSocketAddress);
                j = inetSocketAddress.getPort();
            } else {
                StringBuilder m1016super = Cgoto.m1016super("Proxy.address() is not an InetSocketAddress: ");
                m1016super.append(address.getClass());
                throw new IllegalArgumentException(m1016super.toString());
            }
        } else {
            g = this.f10728a.k().g();
            j = this.f10728a.k().j();
        }
        if (j >= 1 && j <= 65535) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                this.g.add(InetSocketAddress.createUnresolved(g, j));
                return;
            }
            this.d.a(this.c, g);
            List<InetAddress> a2 = this.f10728a.c().a(g);
            if (!a2.isEmpty()) {
                this.d.a(this.c, g, a2);
                int size = a2.size();
                for (int i = 0; i < size; i++) {
                    this.g.add(new InetSocketAddress(a2.get(i), j));
                }
                return;
            }
            throw new UnknownHostException(this.f10728a.c() + " returned no addresses for " + g);
        }
        throw new SocketException("No route to " + g + ":" + j + "; port is out of range");
    }

    public static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        if (address == null) {
            return inetSocketAddress.getHostName();
        }
        return address.getHostAddress();
    }
}
