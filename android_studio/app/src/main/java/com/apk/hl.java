package com.apk;

import androidx.annotation.NonNull;
import com.apk.qk;
import com.apk.uj;
import com.apk.ym;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: ResourceCacheGenerator.java */
/* loaded from: classes8.dex */
public class hl implements qk, uj.Cdo<Object> {

    /* renamed from: break  reason: not valid java name */
    public il f1882break;

    /* renamed from: case  reason: not valid java name */
    public List<ym<File, ?>> f1883case;

    /* renamed from: do  reason: not valid java name */
    public final qk.Cdo f1884do;

    /* renamed from: else  reason: not valid java name */
    public int f1885else;

    /* renamed from: for  reason: not valid java name */
    public int f1886for;

    /* renamed from: goto  reason: not valid java name */
    public volatile ym.Cdo<?> f1887goto;

    /* renamed from: if  reason: not valid java name */
    public final rk<?> f1888if;

    /* renamed from: new  reason: not valid java name */
    public int f1889new = -1;

    /* renamed from: this  reason: not valid java name */
    public File f1890this;

    /* renamed from: try  reason: not valid java name */
    public kj f1891try;

    public hl(rk<?> rkVar, qk.Cdo cdo) {
        this.f1888if = rkVar;
        this.f1884do = cdo;
    }

    @Override // com.apk.qk
    public void cancel() {
        ym.Cdo<?> cdo = this.f1887goto;
        if (cdo != null) {
            cdo.f6004for.cancel();
        }
    }

    @Override // com.apk.uj.Cdo
    /* renamed from: for */
    public void mo212for(@NonNull Exception exc) {
        this.f1884do.mo1643do(this.f1882break, exc, this.f1887goto.f6004for, dj.RESOURCE_DISK_CACHE);
    }

    @Override // com.apk.qk
    /* renamed from: if  reason: not valid java name */
    public boolean mo1138if() {
        List<Class<?>> list;
        List<Class<?>> m371try;
        List<kj> m2281do = this.f1888if.m2281do();
        if (m2281do.isEmpty()) {
            return false;
        }
        rk<?> rkVar = this.f1888if;
        oi oiVar = rkVar.f4097for.f2814if;
        Class<?> cls = rkVar.f4101new.getClass();
        Class<?> cls2 = rkVar.f4095else;
        Class<?> cls3 = rkVar.f4091catch;
        uq uqVar = oiVar.f3435goto;
        fs andSet = uqVar.f4957do.getAndSet(null);
        if (andSet == null) {
            andSet = new fs(cls, cls2, cls3);
        } else {
            andSet.f1461do = cls;
            andSet.f1463if = cls2;
            andSet.f1462for = cls3;
        }
        synchronized (uqVar.f4958if) {
            list = uqVar.f4958if.get(andSet);
        }
        uqVar.f4957do.set(andSet);
        ArrayList arrayList = list;
        if (list == null) {
            ArrayList arrayList2 = new ArrayList();
            an anVar = oiVar.f3432do;
            synchronized (anVar) {
                m371try = anVar.f123do.m371try(cls);
            }
            Iterator it = ((ArrayList) m371try).iterator();
            while (it.hasNext()) {
                Iterator it2 = ((ArrayList) oiVar.f3434for.m2831if((Class) it.next(), cls2)).iterator();
                while (it2.hasNext()) {
                    Class cls4 = (Class) it2.next();
                    if (!((ArrayList) oiVar.f3431case.m2729do(cls4, cls3)).isEmpty() && !arrayList2.contains(cls4)) {
                        arrayList2.add(cls4);
                    }
                }
            }
            uq uqVar2 = oiVar.f3435goto;
            List<Class<?>> unmodifiableList = Collections.unmodifiableList(arrayList2);
            synchronized (uqVar2.f4958if) {
                uqVar2.f4958if.put(new fs(cls, cls2, cls3), unmodifiableList);
            }
            arrayList = arrayList2;
        }
        if (arrayList.isEmpty()) {
            if (File.class.equals(this.f1888if.f4091catch)) {
                return false;
            }
            StringBuilder m1016super = Cgoto.m1016super("Failed to find any load path from ");
            m1016super.append(this.f1888if.f4101new.getClass());
            m1016super.append(" to ");
            m1016super.append(this.f1888if.f4091catch);
            throw new IllegalStateException(m1016super.toString());
        }
        while (true) {
            List<ym<File, ?>> list2 = this.f1883case;
            if (list2 != null) {
                if (this.f1885else < list2.size()) {
                    this.f1887goto = null;
                    boolean z = false;
                    while (!z) {
                        if (!(this.f1885else < this.f1883case.size())) {
                            break;
                        }
                        List<ym<File, ?>> list3 = this.f1883case;
                        int i = this.f1885else;
                        this.f1885else = i + 1;
                        File file = this.f1890this;
                        rk<?> rkVar2 = this.f1888if;
                        this.f1887goto = list3.get(i).mo53if(file, rkVar2.f4105try, rkVar2.f4090case, rkVar2.f4103this);
                        if (this.f1887goto != null && this.f1888if.m2282else(this.f1887goto.f6004for.mo58do())) {
                            this.f1887goto.f6004for.mo57case(this.f1888if.f4102super, this);
                            z = true;
                        }
                    }
                    return z;
                }
            }
            int i2 = this.f1889new + 1;
            this.f1889new = i2;
            if (i2 >= arrayList.size()) {
                int i3 = this.f1886for + 1;
                this.f1886for = i3;
                if (i3 >= m2281do.size()) {
                    return false;
                }
                this.f1889new = 0;
            }
            kj kjVar = m2281do.get(this.f1886for);
            Class<?> cls5 = arrayList.get(this.f1889new);
            qj<Z> m2280case = this.f1888if.m2280case(cls5);
            rk<?> rkVar3 = this.f1888if;
            this.f1882break = new il(rkVar3.f4097for.f2810do, kjVar, rkVar3.f4096final, rkVar3.f4105try, rkVar3.f4090case, m2280case, cls5, rkVar3.f4103this);
            File mo74if = this.f1888if.m2284if().mo74if(this.f1882break);
            this.f1890this = mo74if;
            if (mo74if != null) {
                this.f1891try = kjVar;
                this.f1883case = this.f1888if.f4097for.f2814if.m1951case(mo74if);
                this.f1885else = 0;
            }
        }
    }

    @Override // com.apk.uj.Cdo
    /* renamed from: new */
    public void mo213new(Object obj) {
        this.f1884do.mo1645new(this.f1891try, obj, this.f1887goto.f6004for, dj.RESOURCE_DISK_CACHE, this.f1882break);
    }
}
