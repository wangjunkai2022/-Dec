package com.apk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;
/* compiled from: CleanerProperties.java */
/* loaded from: classes7.dex */
public class pm0 implements sn0 {

    /* renamed from: catch  reason: not valid java name */
    public String f3691catch;

    /* renamed from: do  reason: not valid java name */
    public cn0 f3694do;

    /* renamed from: public  reason: not valid java name */
    public List<sn0> f3703public;

    /* renamed from: super  reason: not valid java name */
    public boolean f3706super;

    /* renamed from: throw  reason: not valid java name */
    public boolean f3708throw;

    /* renamed from: native  reason: not valid java name */
    public qm0 f3701native = new qm0();

    /* renamed from: return  reason: not valid java name */
    public Set<tn0> f3704return = new HashSet();

    /* renamed from: static  reason: not valid java name */
    public Set<tn0> f3705static = new HashSet();

    /* renamed from: if  reason: not valid java name */
    public List<String> f3699if = Arrays.asList("script,style".toLowerCase().split(","));

    /* renamed from: for  reason: not valid java name */
    public boolean f3697for = true;

    /* renamed from: new  reason: not valid java name */
    public boolean f3702new = false;

    /* renamed from: try  reason: not valid java name */
    public boolean f3709try = false;

    /* renamed from: case  reason: not valid java name */
    public boolean f3690case = false;

    /* renamed from: goto  reason: not valid java name */
    public boolean f3698goto = false;

    /* renamed from: else  reason: not valid java name */
    public boolean f3695else = false;

    /* renamed from: this  reason: not valid java name */
    public fn0 f3707this = fn0.alwaysOutput;

    /* renamed from: break  reason: not valid java name */
    public boolean f3689break = true;

    /* renamed from: const  reason: not valid java name */
    public boolean f3693const = false;

    /* renamed from: class  reason: not valid java name */
    public boolean f3692class = true;

    /* renamed from: final  reason: not valid java name */
    public boolean f3696final = true;

    /* renamed from: while  reason: not valid java name */
    public boolean f3710while = true;

    /* renamed from: import  reason: not valid java name */
    public String f3700import = "=";

    public pm0() {
        this.f3704return.clear();
        this.f3704return.add(vn0.f5181do);
        m2059try(this.f3704return, null);
        this.f3705static.clear();
        m2059try(this.f3705static, null);
        this.f3691catch = "self";
        this.f3701native.f3894do.clear();
        this.f3704return.clear();
        this.f3704return.add(vn0.f5181do);
        this.f3694do = ym0.f6006if;
        this.f3703public = new ArrayList();
        this.f3706super = false;
        this.f3708throw = true;
    }

    @Override // com.apk.sn0
    /* renamed from: do  reason: not valid java name */
    public void mo2055do(tn0 tn0Var, kn0 kn0Var) {
        for (sn0 sn0Var : this.f3703public) {
            sn0Var.mo2055do(tn0Var, kn0Var);
        }
    }

    @Override // com.apk.sn0
    /* renamed from: for  reason: not valid java name */
    public void mo2056for(boolean z, kn0 kn0Var, rn0 rn0Var) {
        for (sn0 sn0Var : this.f3703public) {
            sn0Var.mo2056for(z, kn0Var, rn0Var);
        }
    }

    @Override // com.apk.sn0
    /* renamed from: if  reason: not valid java name */
    public void mo2057if(boolean z, kn0 kn0Var, rn0 rn0Var) {
        for (sn0 sn0Var : this.f3703public) {
            sn0Var.mo2057if(z, kn0Var, rn0Var);
        }
    }

    @Override // com.apk.sn0
    /* renamed from: new  reason: not valid java name */
    public void mo2058new(boolean z, kn0 kn0Var, rn0 rn0Var) {
        for (sn0 sn0Var : this.f3703public) {
            sn0Var.mo2058new(z, kn0Var, rn0Var);
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final void m2059try(Set<tn0> set, String str) {
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
            while (stringTokenizer.hasMoreTokens()) {
                set.add(new wn0(stringTokenizer.nextToken().trim().toLowerCase()));
            }
        }
    }
}
