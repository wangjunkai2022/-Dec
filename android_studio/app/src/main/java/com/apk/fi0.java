package com.apk;

import androidx.core.app.NotificationCompat;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

/* compiled from: RouteSelector.kt */
/* loaded from: classes7.dex */
public final class fi0 {

    /* renamed from: case  reason: not valid java name */
    public final di0 f1296case;

    /* renamed from: do  reason: not valid java name */
    public List<? extends Proxy> f1297do;

    /* renamed from: else  reason: not valid java name */
    public final zf0 f1298else;

    /* renamed from: for  reason: not valid java name */
    public List<? extends InetSocketAddress> f1299for;

    /* renamed from: goto  reason: not valid java name */
    public final og0 f1300goto;

    /* renamed from: if  reason: not valid java name */
    public int f1301if;

    /* renamed from: new  reason: not valid java name */
    public final List<fh0> f1302new;

    /* renamed from: try  reason: not valid java name */
    public final uf0 f1303try;

    /* compiled from: RouteSelector.kt */
    /* renamed from: com.apk.fi0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {

        /* renamed from: do  reason: not valid java name */
        public int f1304do;
        @NotNull

        /* renamed from: if  reason: not valid java name */
        public final List<fh0> f1305if;

        public Cdo(@NotNull List<fh0> list) {
            nd0.m1875new(list, "routes");
            this.f1305if = list;
        }

        /* renamed from: do  reason: not valid java name */
        public final boolean m785do() {
            return this.f1304do < this.f1305if.size();
        }

        @NotNull
        /* renamed from: if  reason: not valid java name */
        public final fh0 m786if() {
            if (m785do()) {
                List<fh0> list = this.f1305if;
                int i = this.f1304do;
                this.f1304do = i + 1;
                return list.get(i);
            }
            throw new NoSuchElementException();
        }
    }

    public fi0(@NotNull uf0 uf0Var, @NotNull di0 di0Var, @NotNull zf0 zf0Var, @NotNull og0 og0Var) {
        List<? extends Proxy> m1342super;
        nd0.m1875new(uf0Var, "address");
        nd0.m1875new(di0Var, "routeDatabase");
        nd0.m1875new(zf0Var, NotificationCompat.CATEGORY_CALL);
        nd0.m1875new(og0Var, "eventListener");
        this.f1303try = uf0Var;
        this.f1296case = di0Var;
        this.f1298else = zf0Var;
        this.f1300goto = og0Var;
        xc0 xc0Var = xc0.f5512do;
        this.f1297do = xc0Var;
        this.f1299for = xc0Var;
        this.f1302new = new ArrayList();
        uf0 uf0Var2 = this.f1303try;
        tg0 tg0Var = uf0Var2.f4880do;
        Proxy proxy = uf0Var2.f4877break;
        og0 og0Var2 = this.f1300goto;
        zf0 zf0Var2 = this.f1298else;
        if (og0Var2 != null) {
            nd0.m1875new(zf0Var2, NotificationCompat.CATEGORY_CALL);
            nd0.m1875new(tg0Var, "url");
            if (proxy != null) {
                m1342super = sb0.m2406continue(proxy);
            } else {
                URI m2591else = tg0Var.m2591else();
                if (m2591else.getHost() == null) {
                    m1342super = jh0.m1342super(Proxy.NO_PROXY);
                } else {
                    List<Proxy> select = this.f1303try.f4879catch.select(m2591else);
                    m1342super = select == null || select.isEmpty() ? jh0.m1342super(Proxy.NO_PROXY) : jh0.m1320continue(select);
                }
            }
            this.f1297do = m1342super;
            this.f1301if = 0;
            og0 og0Var3 = this.f1300goto;
            zf0 zf0Var3 = this.f1298else;
            if (og0Var3 == null) {
                throw null;
            }
            nd0.m1875new(zf0Var3, NotificationCompat.CATEGORY_CALL);
            nd0.m1875new(tg0Var, "url");
            nd0.m1875new(m1342super, "proxies");
            return;
        }
        throw null;
    }

    /* renamed from: do  reason: not valid java name */
    public final boolean m783do() {
        return m784if() || (this.f1302new.isEmpty() ^ true);
    }

    /* renamed from: if  reason: not valid java name */
    public final boolean m784if() {
        return this.f1301if < this.f1297do.size();
    }
}
