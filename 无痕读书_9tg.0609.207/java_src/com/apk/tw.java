package com.apk;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.apk.dy;
import com.apk.ey;
import com.apk.xg0;
import com.apk.xh0;
import java.net.Proxy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import javax.net.ssl.HostnameVerifier;
/* compiled from: OkGo.java */
/* loaded from: classes8.dex */
public class tw {

    /* renamed from: do  reason: not valid java name */
    public Application f4766do;

    /* renamed from: for  reason: not valid java name */
    public xg0 f4768for;

    /* renamed from: new  reason: not valid java name */
    public fy f4770new;

    /* renamed from: if  reason: not valid java name */
    public Handler f4769if = new Handler(Looper.getMainLooper());

    /* renamed from: try  reason: not valid java name */
    public int f4771try = 3;

    /* renamed from: else  reason: not valid java name */
    public long f4767else = -1;

    /* renamed from: case  reason: not valid java name */
    public xw f4765case = xw.NO_CACHE;

    /* compiled from: OkGo.java */
    /* renamed from: com.apk.tw$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public static tw f4772do = new tw(null);
    }

    public tw() {
        xg0.Cdo cdo = new xg0.Cdo();
        ey eyVar = new ey("OkGo");
        eyVar.f1138do = ey.Cdo.BODY;
        eyVar.f1140if = Level.INFO;
        nd0.m1875new(eyVar, "interceptor");
        cdo.f5583for.add(eyVar);
        cdo.m2994if(60000L, TimeUnit.MILLISECONDS);
        cdo.m2995new(60000L, TimeUnit.MILLISECONDS);
        cdo.m2992do(60000L, TimeUnit.MILLISECONDS);
        Proxy proxy = Proxy.NO_PROXY;
        if (!nd0.m1870do(proxy, cdo.f5576class)) {
            cdo.f5581extends = null;
        }
        cdo.f5576class = proxy;
        dy.Cfor m517do = dy.m517do();
        cdo.m2993for(m517do.f967do, m517do.f968if);
        HostnameVerifier hostnameVerifier = dy.f966if;
        nd0.m1875new(hostnameVerifier, "hostnameVerifier");
        if (!nd0.m1870do(hostnameVerifier, cdo.f5587native)) {
            cdo.f5581extends = null;
        }
        cdo.f5587native = hostnameVerifier;
        this.f4768for = new xg0(cdo);
    }

    public static <T> jy<T> delete(String str) {
        return new jy<>(str);
    }

    /* renamed from: do  reason: not valid java name */
    public void m2621do(Object obj) {
        List<zf0> unmodifiableList;
        List<zf0> unmodifiableList2;
        if (obj == null) {
            return;
        }
        lg0 lg0Var = this.f4768for.f5550do;
        synchronized (lg0Var) {
            ArrayDeque<xh0.Cdo> arrayDeque = lg0Var.f2803new;
            ArrayList arrayList = new ArrayList(sb0.m2420native(arrayDeque, 10));
            for (xh0.Cdo cdo : arrayDeque) {
                arrayList.add(cdo.f5621for);
            }
            unmodifiableList = Collections.unmodifiableList(arrayList);
            nd0.m1872for(unmodifiableList, "Collections.unmodifiable…yncCalls.map { it.call })");
        }
        for (zf0 zf0Var : unmodifiableList) {
            zg0 mo3002for = zf0Var.mo3002for();
            if (mo3002for != null) {
                nd0.m1875new(Object.class, "type");
                if (obj.equals(Object.class.cast(mo3002for.f6184case.get(Object.class)))) {
                    zf0Var.cancel();
                }
            } else {
                throw null;
            }
        }
        lg0 lg0Var2 = this.f4768for.f5550do;
        synchronized (lg0Var2) {
            ArrayDeque<xh0> arrayDeque2 = lg0Var2.f2799case;
            ArrayDeque<xh0.Cdo> arrayDeque3 = lg0Var2.f2804try;
            ArrayList arrayList2 = new ArrayList(sb0.m2420native(arrayDeque3, 10));
            for (xh0.Cdo cdo2 : arrayDeque3) {
                arrayList2.add(cdo2.f5621for);
            }
            unmodifiableList2 = Collections.unmodifiableList(uc0.m2695else(arrayDeque2, arrayList2));
            nd0.m1872for(unmodifiableList2, "Collections.unmodifiable…yncCalls.map { it.call })");
        }
        for (zf0 zf0Var2 : unmodifiableList2) {
            zg0 mo3002for2 = zf0Var2.mo3002for();
            if (mo3002for2 != null) {
                nd0.m1875new(Object.class, "type");
                if (obj.equals(Object.class.cast(mo3002for2.f6184case.get(Object.class)))) {
                    zf0Var2.cancel();
                }
            } else {
                throw null;
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public tw m2622for(int i) {
        if (i >= 0) {
            this.f4771try = i;
            return this;
        }
        throw new IllegalArgumentException("retryCount must > 0");
    }

    public Context getContext() {
        return this.f4766do;
    }

    /* renamed from: if  reason: not valid java name */
    public tw m2623if(long j) {
        if (j <= -1) {
            j = -1;
        }
        this.f4767else = j;
        return this;
    }

    public tw(Cdo cdo) {
        xg0.Cdo cdo2 = new xg0.Cdo();
        ey eyVar = new ey("OkGo");
        eyVar.f1138do = ey.Cdo.BODY;
        eyVar.f1140if = Level.INFO;
        nd0.m1875new(eyVar, "interceptor");
        cdo2.f5583for.add(eyVar);
        cdo2.m2994if(60000L, TimeUnit.MILLISECONDS);
        cdo2.m2995new(60000L, TimeUnit.MILLISECONDS);
        cdo2.m2992do(60000L, TimeUnit.MILLISECONDS);
        Proxy proxy = Proxy.NO_PROXY;
        if (!nd0.m1870do(proxy, cdo2.f5576class)) {
            cdo2.f5581extends = null;
        }
        cdo2.f5576class = proxy;
        dy.Cfor m517do = dy.m517do();
        cdo2.m2993for(m517do.f967do, m517do.f968if);
        HostnameVerifier hostnameVerifier = dy.f966if;
        nd0.m1875new(hostnameVerifier, "hostnameVerifier");
        if (!nd0.m1870do(hostnameVerifier, cdo2.f5587native)) {
            cdo2.f5581extends = null;
        }
        cdo2.f5587native = hostnameVerifier;
        this.f4768for = new xg0(cdo2);
    }
}
