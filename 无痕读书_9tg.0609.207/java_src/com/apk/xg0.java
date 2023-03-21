package com.apk;

import com.apk.og0;
import com.apk.uj0;
import com.apk.zf0;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OkHttpClient.kt */
/* loaded from: classes7.dex */
public class xg0 implements Cloneable, zf0.Cdo {
    @NotNull

    /* renamed from: break  reason: not valid java name */
    public final kg0 f5544break;

    /* renamed from: case  reason: not valid java name */
    public final boolean f5545case;
    @Nullable

    /* renamed from: catch  reason: not valid java name */
    public final xf0 f5546catch;
    @NotNull

    /* renamed from: class  reason: not valid java name */
    public final ng0 f5547class;
    @Nullable

    /* renamed from: const  reason: not valid java name */
    public final Proxy f5548const;

    /* renamed from: default  reason: not valid java name */
    public final int f5549default;
    @NotNull

    /* renamed from: do  reason: not valid java name */
    public final lg0 f5550do;
    @NotNull

    /* renamed from: else  reason: not valid java name */
    public final wf0 f5551else;

    /* renamed from: extends  reason: not valid java name */
    public final int f5552extends;
    @NotNull

    /* renamed from: final  reason: not valid java name */
    public final ProxySelector f5553final;

    /* renamed from: finally  reason: not valid java name */
    public final int f5554finally;
    @NotNull

    /* renamed from: for  reason: not valid java name */
    public final List<ug0> f5555for;

    /* renamed from: goto  reason: not valid java name */
    public final boolean f5556goto;
    @NotNull

    /* renamed from: if  reason: not valid java name */
    public final gg0 f5557if;
    @Nullable

    /* renamed from: import  reason: not valid java name */
    public final X509TrustManager f5558import;
    @NotNull

    /* renamed from: native  reason: not valid java name */
    public final List<hg0> f5559native;
    @NotNull

    /* renamed from: new  reason: not valid java name */
    public final List<ug0> f5560new;

    /* renamed from: package  reason: not valid java name */
    public final int f5561package;
    @NotNull

    /* renamed from: private  reason: not valid java name */
    public final di0 f5562private;
    @NotNull

    /* renamed from: public  reason: not valid java name */
    public final List<yg0> f5563public;
    @NotNull

    /* renamed from: return  reason: not valid java name */
    public final HostnameVerifier f5564return;
    @NotNull

    /* renamed from: static  reason: not valid java name */
    public final bg0 f5565static;
    @NotNull

    /* renamed from: super  reason: not valid java name */
    public final wf0 f5566super;
    @Nullable

    /* renamed from: switch  reason: not valid java name */
    public final kk0 f5567switch;

    /* renamed from: this  reason: not valid java name */
    public final boolean f5568this;
    @NotNull

    /* renamed from: throw  reason: not valid java name */
    public final SocketFactory f5569throw;

    /* renamed from: throws  reason: not valid java name */
    public final int f5570throws;
    @NotNull

    /* renamed from: try  reason: not valid java name */
    public final og0.Cif f5571try;

    /* renamed from: while  reason: not valid java name */
    public final SSLSocketFactory f5572while;

    /* renamed from: strictfp  reason: not valid java name */
    public static final Cif f5543strictfp = new Cif(null);
    @NotNull

    /* renamed from: abstract  reason: not valid java name */
    public static final List<yg0> f5541abstract = jh0.m1342super(yg0.HTTP_2, yg0.HTTP_1_1);
    @NotNull

    /* renamed from: continue  reason: not valid java name */
    public static final List<hg0> f5542continue = jh0.m1342super(hg0.f1854else, hg0.f1855goto);

    /* compiled from: OkHttpClient.kt */
    /* renamed from: com.apk.xg0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo {
        @NotNull

        /* renamed from: break  reason: not valid java name */
        public kg0 f5573break;

        /* renamed from: case  reason: not valid java name */
        public boolean f5574case;
        @NotNull

        /* renamed from: catch  reason: not valid java name */
        public ng0 f5575catch;
        @Nullable

        /* renamed from: class  reason: not valid java name */
        public Proxy f5576class;
        @NotNull

        /* renamed from: const  reason: not valid java name */
        public wf0 f5577const;

        /* renamed from: default  reason: not valid java name */
        public long f5578default;
        @NotNull

        /* renamed from: else  reason: not valid java name */
        public wf0 f5580else;
        @Nullable

        /* renamed from: extends  reason: not valid java name */
        public di0 f5581extends;
        @NotNull

        /* renamed from: final  reason: not valid java name */
        public SocketFactory f5582final;

        /* renamed from: goto  reason: not valid java name */
        public boolean f5584goto;
        @NotNull

        /* renamed from: import  reason: not valid java name */
        public List<? extends yg0> f5586import;
        @NotNull

        /* renamed from: native  reason: not valid java name */
        public HostnameVerifier f5587native;
        @NotNull

        /* renamed from: public  reason: not valid java name */
        public bg0 f5589public;
        @Nullable

        /* renamed from: return  reason: not valid java name */
        public kk0 f5590return;

        /* renamed from: static  reason: not valid java name */
        public int f5591static;
        @Nullable

        /* renamed from: super  reason: not valid java name */
        public SSLSocketFactory f5592super;

        /* renamed from: switch  reason: not valid java name */
        public int f5593switch;

        /* renamed from: this  reason: not valid java name */
        public boolean f5594this;
        @Nullable

        /* renamed from: throw  reason: not valid java name */
        public X509TrustManager f5595throw;

        /* renamed from: throws  reason: not valid java name */
        public int f5596throws;
        @NotNull

        /* renamed from: try  reason: not valid java name */
        public og0.Cif f5597try;
        @NotNull

        /* renamed from: while  reason: not valid java name */
        public List<hg0> f5598while;
        @NotNull

        /* renamed from: do  reason: not valid java name */
        public lg0 f5579do = new lg0();
        @NotNull

        /* renamed from: if  reason: not valid java name */
        public gg0 f5585if = new gg0();
        @NotNull

        /* renamed from: for  reason: not valid java name */
        public final List<ug0> f5583for = new ArrayList();
        @NotNull

        /* renamed from: new  reason: not valid java name */
        public final List<ug0> f5588new = new ArrayList();

        public Cdo() {
            og0 og0Var = og0.f3415do;
            nd0.m1875new(og0Var, "$this$asFactory");
            this.f5597try = new hh0(og0Var);
            this.f5574case = true;
            this.f5580else = wf0.f5267do;
            this.f5584goto = true;
            this.f5594this = true;
            this.f5573break = kg0.f2537do;
            this.f5575catch = ng0.f3226do;
            this.f5577const = wf0.f5267do;
            SocketFactory socketFactory = SocketFactory.getDefault();
            nd0.m1872for(socketFactory, "SocketFactory.getDefault()");
            this.f5582final = socketFactory;
            Cif cif = xg0.f5543strictfp;
            this.f5598while = xg0.f5542continue;
            Cif cif2 = xg0.f5543strictfp;
            this.f5586import = xg0.f5541abstract;
            this.f5587native = lk0.f2826do;
            this.f5589public = bg0.f309for;
            this.f5591static = 10000;
            this.f5593switch = 10000;
            this.f5596throws = 10000;
            this.f5578default = 1024L;
        }

        @NotNull
        /* renamed from: do  reason: not valid java name */
        public final Cdo m2992do(long j, @NotNull TimeUnit timeUnit) {
            nd0.m1875new(timeUnit, "unit");
            this.f5591static = jh0.m1334new("timeout", j, timeUnit);
            return this;
        }

        @NotNull
        /* renamed from: for  reason: not valid java name */
        public final Cdo m2993for(@NotNull SSLSocketFactory sSLSocketFactory, @NotNull X509TrustManager x509TrustManager) {
            nd0.m1875new(sSLSocketFactory, "sslSocketFactory");
            nd0.m1875new(x509TrustManager, "trustManager");
            if ((!nd0.m1870do(sSLSocketFactory, this.f5592super)) || (!nd0.m1870do(x509TrustManager, this.f5595throw))) {
                this.f5581extends = null;
            }
            this.f5592super = sSLSocketFactory;
            nd0.m1875new(x509TrustManager, "trustManager");
            uj0.Cdo cdo = uj0.f4907for;
            this.f5590return = uj0.f4906do.mo1884if(x509TrustManager);
            this.f5595throw = x509TrustManager;
            return this;
        }

        @NotNull
        /* renamed from: if  reason: not valid java name */
        public final Cdo m2994if(long j, @NotNull TimeUnit timeUnit) {
            nd0.m1875new(timeUnit, "unit");
            this.f5593switch = jh0.m1334new("timeout", j, timeUnit);
            return this;
        }

        @NotNull
        /* renamed from: new  reason: not valid java name */
        public final Cdo m2995new(long j, @NotNull TimeUnit timeUnit) {
            nd0.m1875new(timeUnit, "unit");
            this.f5596throws = jh0.m1334new("timeout", j, timeUnit);
            return this;
        }
    }

    /* compiled from: OkHttpClient.kt */
    /* renamed from: com.apk.xg0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif {
        public Cif(md0 md0Var) {
        }
    }

    public xg0(@NotNull Cdo cdo) {
        ProxySelector proxySelector;
        boolean z;
        boolean z2;
        nd0.m1875new(cdo, "builder");
        this.f5550do = cdo.f5579do;
        this.f5557if = cdo.f5585if;
        this.f5555for = jh0.m1320continue(cdo.f5583for);
        this.f5560new = jh0.m1320continue(cdo.f5588new);
        this.f5571try = cdo.f5597try;
        this.f5545case = cdo.f5574case;
        this.f5551else = cdo.f5580else;
        this.f5556goto = cdo.f5584goto;
        this.f5568this = cdo.f5594this;
        this.f5544break = cdo.f5573break;
        this.f5546catch = null;
        this.f5547class = cdo.f5575catch;
        Proxy proxy = cdo.f5576class;
        this.f5548const = proxy;
        if (proxy != null) {
            proxySelector = hk0.f1881do;
        } else {
            proxySelector = ProxySelector.getDefault();
            if (proxySelector == null) {
                proxySelector = hk0.f1881do;
            }
        }
        this.f5553final = proxySelector;
        this.f5566super = cdo.f5577const;
        this.f5569throw = cdo.f5582final;
        this.f5559native = cdo.f5598while;
        this.f5563public = cdo.f5586import;
        this.f5564return = cdo.f5587native;
        this.f5570throws = 0;
        this.f5549default = cdo.f5591static;
        this.f5552extends = cdo.f5593switch;
        this.f5554finally = cdo.f5596throws;
        this.f5561package = 0;
        di0 di0Var = cdo.f5581extends;
        this.f5562private = di0Var == null ? new di0() : di0Var;
        List<hg0> list = this.f5559native;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (hg0 hg0Var : list) {
                if (hg0Var.f1857do) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        if (z) {
            this.f5572while = null;
            this.f5567switch = null;
            this.f5558import = null;
            this.f5565static = bg0.f309for;
        } else {
            SSLSocketFactory sSLSocketFactory = cdo.f5592super;
            if (sSLSocketFactory != null) {
                this.f5572while = sSLSocketFactory;
                kk0 kk0Var = cdo.f5590return;
                nd0.m1874if(kk0Var);
                this.f5567switch = kk0Var;
                X509TrustManager x509TrustManager = cdo.f5595throw;
                nd0.m1874if(x509TrustManager);
                this.f5558import = x509TrustManager;
                bg0 bg0Var = cdo.f5589public;
                kk0 kk0Var2 = this.f5567switch;
                nd0.m1874if(kk0Var2);
                this.f5565static = bg0Var.m173if(kk0Var2);
            } else {
                uj0.Cdo cdo2 = uj0.f4907for;
                this.f5558import = uj0.f4906do.mo2049final();
                uj0.Cdo cdo3 = uj0.f4907for;
                uj0 uj0Var = uj0.f4906do;
                X509TrustManager x509TrustManager2 = this.f5558import;
                nd0.m1874if(x509TrustManager2);
                this.f5572while = uj0Var.mo2142const(x509TrustManager2);
                X509TrustManager x509TrustManager3 = this.f5558import;
                nd0.m1874if(x509TrustManager3);
                nd0.m1875new(x509TrustManager3, "trustManager");
                uj0.Cdo cdo4 = uj0.f4907for;
                kk0 mo1884if = uj0.f4906do.mo1884if(x509TrustManager3);
                this.f5567switch = mo1884if;
                bg0 bg0Var2 = cdo.f5589public;
                nd0.m1874if(mo1884if);
                this.f5565static = bg0Var2.m173if(mo1884if);
            }
        }
        List<ug0> list2 = this.f5555for;
        if (list2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
        }
        if (!list2.contains(null)) {
            List<ug0> list3 = this.f5560new;
            if (list3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>");
            }
            if (!list3.contains(null)) {
                List<hg0> list4 = this.f5559native;
                if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                    for (hg0 hg0Var2 : list4) {
                        if (hg0Var2.f1857do) {
                            z2 = false;
                            break;
                        }
                    }
                }
                z2 = true;
                if (z2) {
                    if (this.f5572while == null) {
                        if (this.f5567switch == null) {
                            if (this.f5558import == null) {
                                if (!nd0.m1870do(this.f5565static, bg0.f309for)) {
                                    throw new IllegalStateException("Check failed.".toString());
                                }
                                return;
                            }
                            throw new IllegalStateException("Check failed.".toString());
                        }
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    throw new IllegalStateException("Check failed.".toString());
                } else if (this.f5572while != null) {
                    if (this.f5567switch != null) {
                        if (this.f5558import == null) {
                            throw new IllegalStateException("x509TrustManager == null".toString());
                        }
                        return;
                    }
                    throw new IllegalStateException("certificateChainCleaner == null".toString());
                } else {
                    throw new IllegalStateException("sslSocketFactory == null".toString());
                }
            }
            StringBuilder m1016super = Cgoto.m1016super("Null network interceptor: ");
            m1016super.append(this.f5560new);
            throw new IllegalStateException(m1016super.toString().toString());
        }
        StringBuilder m1016super2 = Cgoto.m1016super("Null interceptor: ");
        m1016super2.append(this.f5555for);
        throw new IllegalStateException(m1016super2.toString().toString());
    }

    @NotNull
    public Object clone() {
        return super.clone();
    }

    @NotNull
    /* renamed from: do  reason: not valid java name */
    public zf0 m2991do(@NotNull zg0 zg0Var) {
        nd0.m1875new(zg0Var, TTLogUtil.TAG_EVENT_REQUEST);
        return new xh0(this, zg0Var, false);
    }

    public xg0() {
        this(new Cdo());
    }
}
