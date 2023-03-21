package com.apk;

import androidx.annotation.NonNull;
import com.apk.qk;
import com.apk.uj;
import com.apk.ym;
import java.io.File;
import java.util.List;
/* compiled from: DataCacheGenerator.java */
/* loaded from: classes8.dex */
public class nk implements qk, uj.Cdo<Object> {

    /* renamed from: case  reason: not valid java name */
    public List<ym<File, ?>> f3246case;

    /* renamed from: do  reason: not valid java name */
    public final List<kj> f3247do;

    /* renamed from: else  reason: not valid java name */
    public int f3248else;

    /* renamed from: for  reason: not valid java name */
    public final qk.Cdo f3249for;

    /* renamed from: goto  reason: not valid java name */
    public volatile ym.Cdo<?> f3250goto;

    /* renamed from: if  reason: not valid java name */
    public final rk<?> f3251if;

    /* renamed from: new  reason: not valid java name */
    public int f3252new;

    /* renamed from: this  reason: not valid java name */
    public File f3253this;

    /* renamed from: try  reason: not valid java name */
    public kj f3254try;

    public nk(rk<?> rkVar, qk.Cdo cdo) {
        List<kj> m2281do = rkVar.m2281do();
        this.f3252new = -1;
        this.f3247do = m2281do;
        this.f3251if = rkVar;
        this.f3249for = cdo;
    }

    @Override // com.apk.qk
    public void cancel() {
        ym.Cdo<?> cdo = this.f3250goto;
        if (cdo != null) {
            cdo.f6004for.cancel();
        }
    }

    @Override // com.apk.uj.Cdo
    /* renamed from: for */
    public void mo212for(@NonNull Exception exc) {
        this.f3249for.mo1643do(this.f3254try, exc, this.f3250goto.f6004for, dj.DATA_DISK_CACHE);
    }

    @Override // com.apk.qk
    /* renamed from: if */
    public boolean mo1138if() {
        while (true) {
            List<ym<File, ?>> list = this.f3246case;
            if (list != null) {
                if (this.f3248else < list.size()) {
                    this.f3250goto = null;
                    boolean z = false;
                    while (!z) {
                        if (!(this.f3248else < this.f3246case.size())) {
                            break;
                        }
                        List<ym<File, ?>> list2 = this.f3246case;
                        int i = this.f3248else;
                        this.f3248else = i + 1;
                        File file = this.f3253this;
                        rk<?> rkVar = this.f3251if;
                        this.f3250goto = list2.get(i).mo53if(file, rkVar.f4105try, rkVar.f4090case, rkVar.f4103this);
                        if (this.f3250goto != null && this.f3251if.m2282else(this.f3250goto.f6004for.mo58do())) {
                            this.f3250goto.f6004for.mo57case(this.f3251if.f4102super, this);
                            z = true;
                        }
                    }
                    return z;
                }
            }
            int i2 = this.f3252new + 1;
            this.f3252new = i2;
            if (i2 >= this.f3247do.size()) {
                return false;
            }
            kj kjVar = this.f3247do.get(this.f3252new);
            File mo74if = this.f3251if.m2284if().mo74if(new ok(kjVar, this.f3251if.f4096final));
            this.f3253this = mo74if;
            if (mo74if != null) {
                this.f3254try = kjVar;
                this.f3246case = this.f3251if.f4097for.f2814if.m1951case(mo74if);
                this.f3248else = 0;
            }
        }
    }

    @Override // com.apk.uj.Cdo
    /* renamed from: new */
    public void mo213new(Object obj) {
        this.f3249for.mo1645new(this.f3254try, obj, this.f3250goto.f6004for, dj.DATA_DISK_CACHE, this.f3254try);
    }

    public nk(List<kj> list, rk<?> rkVar, qk.Cdo cdo) {
        this.f3252new = -1;
        this.f3247do = list;
        this.f3251if = rkVar;
        this.f3249for = cdo;
    }
}
