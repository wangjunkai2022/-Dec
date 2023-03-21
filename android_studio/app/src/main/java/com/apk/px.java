package com.apk;

import java.util.List;

/* compiled from: CookieJarImpl.java */
/* loaded from: classes8.dex */
public class px implements kg0 {

    /* renamed from: if  reason: not valid java name */
    public rx f3762if;

    public px(rx rxVar) {
        this.f3762if = rxVar;
    }

    @Override // com.apk.kg0
    /* renamed from: do */
    public synchronized void mo1312do(tg0 tg0Var, List<ig0> list) {
        sx sxVar = (sx) this.f3762if;
        synchronized (sxVar) {
            for (ig0 ig0Var : list) {
                sxVar.m2565new(tg0Var, ig0Var);
            }
        }
    }

    @Override // com.apk.kg0
    /* renamed from: if */
    public synchronized List<ig0> mo1313if(tg0 tg0Var) {
        return ((sx) this.f3762if).m2564if(tg0Var);
    }
}
