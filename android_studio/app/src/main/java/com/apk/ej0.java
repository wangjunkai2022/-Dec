package com.apk;

import com.apk.ch0;
import com.apk.gj0;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.litepal.parser.LitePalParser;

/* compiled from: Http2ExchangeCodec.kt */
/* loaded from: classes7.dex */
public final class ej0 implements ji0 {

    /* renamed from: else  reason: not valid java name */
    public static final List<String> f1076else = jh0.m1342super("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* renamed from: goto  reason: not valid java name */
    public static final List<String> f1077goto = jh0.m1342super("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    /* renamed from: case  reason: not valid java name */
    public final xi0 f1078case;

    /* renamed from: do  reason: not valid java name */
    public volatile gj0 f1079do;

    /* renamed from: for  reason: not valid java name */
    public volatile boolean f1080for;

    /* renamed from: if  reason: not valid java name */
    public final yg0 f1081if;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public final bi0 f1082new;

    /* renamed from: try  reason: not valid java name */
    public final mi0 f1083try;

    public ej0(@NotNull xg0 xg0Var, @NotNull bi0 bi0Var, @NotNull mi0 mi0Var, @NotNull xi0 xi0Var) {
        yg0 yg0Var = yg0.H2_PRIOR_KNOWLEDGE;
        nd0.m1875new(xg0Var, "client");
        nd0.m1875new(bi0Var, "connection");
        nd0.m1875new(mi0Var, "chain");
        nd0.m1875new(xi0Var, "http2Connection");
        this.f1082new = bi0Var;
        this.f1083try = mi0Var;
        this.f1078case = xi0Var;
        this.f1081if = xg0Var.f5563public.contains(yg0Var) ? yg0Var : yg0.HTTP_2;
    }

    @Override // com.apk.ji0
    public void cancel() {
        this.f1080for = true;
        gj0 gj0Var = this.f1079do;
        if (gj0Var != null) {
            gj0Var.m971try(ti0.CANCEL);
        }
    }

    @Override // com.apk.ji0
    /* renamed from: case  reason: not valid java name */
    public void mo626case() {
        this.f1078case.f5639extends.flush();
    }

    @Override // com.apk.ji0
    /* renamed from: do  reason: not valid java name */
    public void mo627do() {
        gj0 gj0Var = this.f1079do;
        nd0.m1874if(gj0Var);
        ((gj0.Cdo) gj0Var.m965else()).close();
    }

    @Override // com.apk.ji0
    /* renamed from: else  reason: not valid java name */
    public long mo628else(@NotNull ch0 ch0Var) {
        nd0.m1875new(ch0Var, "response");
        if (ki0.m1508for(ch0Var)) {
            return jh0.m1325final(ch0Var);
        }
        return 0L;
    }

    @Override // com.apk.ji0
    @NotNull
    /* renamed from: for  reason: not valid java name */
    public ll0 mo629for(@NotNull ch0 ch0Var) {
        nd0.m1875new(ch0Var, "response");
        gj0 gj0Var = this.f1079do;
        nd0.m1874if(gj0Var);
        return gj0Var.f1582else;
    }

    @Override // com.apk.ji0
    @NotNull
    /* renamed from: goto  reason: not valid java name */
    public jl0 mo630goto(@NotNull zg0 zg0Var, long j) {
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        gj0 gj0Var = this.f1079do;
        nd0.m1874if(gj0Var);
        return gj0Var.m965else();
    }

    @Override // com.apk.ji0
    /* renamed from: if  reason: not valid java name */
    public void mo631if(@NotNull zg0 zg0Var) {
        int i;
        gj0 gj0Var;
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        if (this.f1079do != null) {
            return;
        }
        boolean z = false;
        boolean z2 = zg0Var.f6189try != null;
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        sg0 sg0Var = zg0Var.f6188new;
        ArrayList arrayList = new ArrayList(sg0Var.size() + 4);
        arrayList.add(new ui0(ui0.f4897case, zg0Var.f6186for));
        uk0 uk0Var = ui0.f4898else;
        tg0 tg0Var = zg0Var.f6187if;
        nd0.m1875new(tg0Var, "url");
        String m2593if = tg0Var.m2593if();
        String m2594new = tg0Var.m2594new();
        if (m2594new != null) {
            m2593if = m2593if + '?' + m2594new;
        }
        arrayList.add(new ui0(uk0Var, m2593if));
        String m3198if = zg0Var.m3198if("Host");
        if (m3198if != null) {
            arrayList.add(new ui0(ui0.f4901this, m3198if));
        }
        arrayList.add(new ui0(ui0.f4899goto, zg0Var.f6187if.f4686if));
        int size = sg0Var.size();
        for (int i2 = 0; i2 < size; i2++) {
            String m2455if = sg0Var.m2455if(i2);
            Locale locale = Locale.US;
            nd0.m1872for(locale, "Locale.US");
            if (m2455if != null) {
                String lowerCase = m2455if.toLowerCase(locale);
                nd0.m1872for(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                if (!f1076else.contains(lowerCase) || (nd0.m1870do(lowerCase, "te") && nd0.m1870do(sg0Var.m2456new(i2), "trailers"))) {
                    arrayList.add(new ui0(lowerCase, sg0Var.m2456new(i2)));
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
        }
        xi0 xi0Var = this.f1078case;
        if (xi0Var != null) {
            nd0.m1875new(arrayList, "requestHeaders");
            boolean z3 = !z2;
            synchronized (xi0Var.f5639extends) {
                synchronized (xi0Var) {
                    if (xi0Var.f5632case > 1073741823) {
                        xi0Var.m3025throws(ti0.REFUSED_STREAM);
                    }
                    if (!xi0Var.f5638else) {
                        i = xi0Var.f5632case;
                        xi0Var.f5632case += 2;
                        gj0Var = new gj0(i, xi0Var, z3, false, null);
                        z = (!z2 || xi0Var.f5653switch >= xi0Var.f5656throws || gj0Var.f1584for >= gj0Var.f1587new) ? true : true;
                        if (gj0Var.m970this()) {
                            xi0Var.f5642for.put(Integer.valueOf(i), gj0Var);
                        }
                    } else {
                        throw new si0();
                    }
                }
                xi0Var.f5639extends.m1134throws(z3, i, arrayList);
            }
            if (z) {
                xi0Var.f5639extends.flush();
            }
            this.f1079do = gj0Var;
            if (!this.f1080for) {
                gj0 gj0Var2 = this.f1079do;
                nd0.m1874if(gj0Var2);
                gj0Var2.f1588this.mo1730else(this.f1083try.f3057goto, TimeUnit.MILLISECONDS);
                gj0 gj0Var3 = this.f1079do;
                nd0.m1874if(gj0Var3);
                gj0Var3.f1576break.mo1730else(this.f1083try.f3060this, TimeUnit.MILLISECONDS);
                return;
            }
            gj0 gj0Var4 = this.f1079do;
            nd0.m1874if(gj0Var4);
            gj0Var4.m971try(ti0.CANCEL);
            throw new IOException("Canceled");
        }
        throw null;
    }

    @Override // com.apk.ji0
    @Nullable
    /* renamed from: new  reason: not valid java name */
    public ch0.Cdo mo632new(boolean z) {
        sg0 sg0Var;
        gj0 gj0Var = this.f1079do;
        nd0.m1874if(gj0Var);
        synchronized (gj0Var) {
            gj0Var.f1588this.m1967goto();
            while (gj0Var.f1589try.isEmpty() && gj0Var.f1578catch == null) {
                gj0Var.m963class();
            }
            gj0Var.f1588this.m975class();
            if (!gj0Var.f1589try.isEmpty()) {
                sg0 removeFirst = gj0Var.f1589try.removeFirst();
                nd0.m1872for(removeFirst, "headersQueue.removeFirst()");
                sg0Var = removeFirst;
            } else {
                IOException iOException = gj0Var.f1579class;
                if (iOException != null) {
                    throw iOException;
                }
                ti0 ti0Var = gj0Var.f1578catch;
                nd0.m1874if(ti0Var);
                throw new mj0(ti0Var);
            }
        }
        yg0 yg0Var = this.f1081if;
        nd0.m1875new(sg0Var, "headerBlock");
        nd0.m1875new(yg0Var, "protocol");
        ArrayList arrayList = new ArrayList(20);
        int size = sg0Var.size();
        pi0 pi0Var = null;
        for (int i = 0; i < size; i++) {
            String m2455if = sg0Var.m2455if(i);
            String m2456new = sg0Var.m2456new(i);
            if (nd0.m1870do(m2455if, ":status")) {
                pi0Var = pi0.m2047do("HTTP/1.1 " + m2456new);
            } else if (!f1077goto.contains(m2455if)) {
                nd0.m1875new(m2455if, "name");
                nd0.m1875new(m2456new, LitePalParser.ATTR_VALUE);
                arrayList.add(m2455if);
                arrayList.add(ie0.m1211throws(m2456new).toString());
            }
        }
        if (pi0Var != null) {
            ch0.Cdo cdo = new ch0.Cdo();
            cdo.m340case(yg0Var);
            cdo.f626for = pi0Var.f3673if;
            cdo.m346try(pi0Var.f3672for);
            Object[] array = arrayList.toArray(new String[0]);
            if (array != null) {
                cdo.m345new(new sg0((String[]) array, null));
                if (z && cdo.f626for == 100) {
                    return null;
                }
                return cdo;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override // com.apk.ji0
    @NotNull
    /* renamed from: try  reason: not valid java name */
    public bi0 mo633try() {
        return this.f1082new;
    }
}
