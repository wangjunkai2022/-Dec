package com.apk;

import com.apk.sk;
import com.apk.up;
import com.apk.vk;
import com.apk.vq;
import com.apk.ym;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* compiled from: DecodeHelper.java */
/* loaded from: classes8.dex */
public final class rk<Transcode> {

    /* renamed from: break  reason: not valid java name */
    public Map<Class<?>, qj<?>> f4089break;

    /* renamed from: case  reason: not valid java name */
    public int f4090case;

    /* renamed from: catch  reason: not valid java name */
    public Class<Transcode> f4091catch;

    /* renamed from: class  reason: not valid java name */
    public boolean f4092class;

    /* renamed from: const  reason: not valid java name */
    public boolean f4093const;

    /* renamed from: else  reason: not valid java name */
    public Class<?> f4095else;

    /* renamed from: final  reason: not valid java name */
    public kj f4096final;

    /* renamed from: for  reason: not valid java name */
    public li f4097for;

    /* renamed from: goto  reason: not valid java name */
    public sk.Cnew f4098goto;

    /* renamed from: import  reason: not valid java name */
    public boolean f4100import;

    /* renamed from: new  reason: not valid java name */
    public Object f4101new;

    /* renamed from: super  reason: not valid java name */
    public ni f4102super;

    /* renamed from: this  reason: not valid java name */
    public mj f4103this;

    /* renamed from: throw  reason: not valid java name */
    public uk f4104throw;

    /* renamed from: try  reason: not valid java name */
    public int f4105try;

    /* renamed from: while  reason: not valid java name */
    public boolean f4106while;

    /* renamed from: do  reason: not valid java name */
    public final List<ym.Cdo<?>> f4094do = new ArrayList();

    /* renamed from: if  reason: not valid java name */
    public final List<kj> f4099if = new ArrayList();

    /* renamed from: case  reason: not valid java name */
    public <Z> qj<Z> m2280case(Class<Z> cls) {
        qj<Z> qjVar = (qj<Z>) this.f4089break.get(cls);
        if (qjVar == null) {
            Iterator<Map.Entry<Class<?>, qj<?>>> it = this.f4089break.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, qj<?>> next = it.next();
                if (next.getKey().isAssignableFrom(cls)) {
                    qjVar = (qj<Z>) next.getValue();
                    break;
                }
            }
        }
        if (qjVar == null) {
            if (this.f4089break.isEmpty() && this.f4106while) {
                throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
            }
            return (qn) qn.f3896if;
        }
        return qjVar;
    }

    /* renamed from: do  reason: not valid java name */
    public List<kj> m2281do() {
        if (!this.f4093const) {
            this.f4093const = true;
            this.f4099if.clear();
            List<ym.Cdo<?>> m2283for = m2283for();
            int size = m2283for.size();
            for (int i = 0; i < size; i++) {
                ym.Cdo<?> cdo = m2283for.get(i);
                if (!this.f4099if.contains(cdo.f6003do)) {
                    this.f4099if.add(cdo.f6003do);
                }
                for (int i2 = 0; i2 < cdo.f6005if.size(); i2++) {
                    if (!this.f4099if.contains(cdo.f6005if.get(i2))) {
                        this.f4099if.add(cdo.f6005if.get(i2));
                    }
                }
            }
        }
        return this.f4099if;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: else  reason: not valid java name */
    public boolean m2282else(Class<?> cls) {
        return m2285new(cls) != null;
    }

    /* renamed from: for  reason: not valid java name */
    public List<ym.Cdo<?>> m2283for() {
        if (!this.f4092class) {
            this.f4092class = true;
            this.f4094do.clear();
            List m1951case = this.f4097for.f2814if.m1951case(this.f4101new);
            int size = m1951case.size();
            for (int i = 0; i < size; i++) {
                ym.Cdo<?> mo53if = ((ym) m1951case.get(i)).mo53if(this.f4101new, this.f4105try, this.f4090case, this.f4103this);
                if (mo53if != null) {
                    this.f4094do.add(mo53if);
                }
            }
        }
        return this.f4094do;
    }

    /* renamed from: if  reason: not valid java name */
    public zl m2284if() {
        return ((vk.Cfor) this.f4098goto).m2822do();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new  reason: not valid java name */
    public <Data> el<Data, ?, Transcode> m2285new(Class<Data> cls) {
        el<Data, ?, Transcode> elVar;
        ArrayList arrayList;
        tp tpVar;
        oi oiVar = this.f4097for.f2814if;
        Class<?> cls2 = this.f4095else;
        Class cls3 = (Class<Transcode>) this.f4091catch;
        tq tqVar = oiVar.f3438this;
        fs andSet = tqVar.f4754if.getAndSet(null);
        if (andSet == null) {
            andSet = new fs();
        }
        andSet.f1461do = cls;
        andSet.f1463if = cls2;
        andSet.f1462for = cls3;
        synchronized (tqVar.f4753do) {
            elVar = (el<Data, ?, Transcode>) tqVar.f4753do.get(andSet);
        }
        tqVar.f4754if.set(andSet);
        if (oiVar.f3438this != null) {
            if (tq.f4752for.equals(elVar)) {
                return null;
            }
            if (elVar == null) {
                ArrayList arrayList2 = new ArrayList();
                Iterator it = ((ArrayList) oiVar.f3434for.m2831if(cls, cls2)).iterator();
                while (it.hasNext()) {
                    Class<?> cls4 = (Class) it.next();
                    Iterator it2 = ((ArrayList) oiVar.f3431case.m2729do(cls4, cls3)).iterator();
                    while (it2.hasNext()) {
                        Class<?> cls5 = (Class) it2.next();
                        vq vqVar = oiVar.f3434for;
                        synchronized (vqVar) {
                            arrayList = new ArrayList();
                            for (String str : vqVar.f5189do) {
                                List<vq.Cdo<?, ?>> list = vqVar.f5190if.get(str);
                                if (list != null) {
                                    for (vq.Cdo<?, ?> cdo : list) {
                                        if (cdo.m2832do(cls, cls4)) {
                                            arrayList.add(cdo.f5192for);
                                        }
                                    }
                                }
                            }
                        }
                        up upVar = oiVar.f3431case;
                        synchronized (upVar) {
                            if (cls5.isAssignableFrom(cls4)) {
                                tpVar = vp.f5188do;
                            } else {
                                for (up.Cdo<?, ?> cdo2 : upVar.f4950do) {
                                    if (cdo2.m2730do(cls4, cls5)) {
                                        tpVar = cdo2.f4952for;
                                    }
                                }
                                throw new IllegalArgumentException("No transcoder registered to transcode from " + cls4 + " to " + cls5);
                            }
                        }
                        arrayList2.add(new tk(cls, cls4, cls5, arrayList, tpVar, oiVar.f3430break));
                    }
                }
                el<Data, ?, Transcode> elVar2 = arrayList2.isEmpty() ? null : new el<>(cls, cls2, cls3, arrayList2, oiVar.f3430break);
                tq tqVar2 = oiVar.f3438this;
                synchronized (tqVar2.f4753do) {
                    tqVar2.f4753do.put(new fs(cls, cls2, cls3), elVar2 != null ? elVar2 : tq.f4752for);
                }
                return elVar2;
            }
            return elVar;
        }
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        r1 = (com.apk.gj<X>) r3.f4190if;
     */
    /* renamed from: try  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <X> com.apk.gj<X> m2286try(X r6) throws com.apk.oi.Ctry {
        /*
            r5 = this;
            com.apk.li r0 = r5.f4097for
            com.apk.oi r0 = r0.f2814if
            com.apk.rq r0 = r0.f3436if
            java.lang.Class r1 = r6.getClass()
            monitor-enter(r0)
            java.util.List<com.apk.rq$do<?>> r2 = r0.f4188do     // Catch: java.lang.Throwable -> L38
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L38
        L11:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L38
            if (r3 == 0) goto L29
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L38
            com.apk.rq$do r3 = (com.apk.rq.Cdo) r3     // Catch: java.lang.Throwable -> L38
            java.lang.Class<T> r4 = r3.f4189do     // Catch: java.lang.Throwable -> L38
            boolean r4 = r4.isAssignableFrom(r1)     // Catch: java.lang.Throwable -> L38
            if (r4 == 0) goto L11
            com.apk.gj<T> r1 = r3.f4190if     // Catch: java.lang.Throwable -> L38
            monitor-exit(r0)
            goto L2b
        L29:
            r1 = 0
            monitor-exit(r0)
        L2b:
            if (r1 == 0) goto L2e
            return r1
        L2e:
            com.apk.oi$try r0 = new com.apk.oi$try
            java.lang.Class r6 = r6.getClass()
            r0.<init>(r6)
            throw r0
        L38:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.rk.m2286try(java.lang.Object):com.apk.gj");
    }
}
