package com.apk;

import java.util.ArrayList;
import java.util.List;

/* compiled from: ColorObservableEmitter.java */
/* loaded from: classes7.dex */
public class us0 implements ts0 {

    /* renamed from: do  reason: not valid java name */
    public List<vs0> f4965do = new ArrayList();

    /* renamed from: if  reason: not valid java name */
    public int f4966if;

    @Override // com.apk.ts0
    /* renamed from: do */
    public void mo2618do(vs0 vs0Var) {
        if (vs0Var == null) {
            return;
        }
        this.f4965do.remove(vs0Var);
    }

    /* renamed from: for  reason: not valid java name */
    public void m2733for(int i, boolean z, boolean z2) {
        this.f4966if = i;
        for (vs0 vs0Var : this.f4965do) {
            vs0Var.mo2836do(i, z, z2);
        }
    }

    @Override // com.apk.ts0
    public int getColor() {
        return this.f4966if;
    }

    @Override // com.apk.ts0
    /* renamed from: if */
    public void mo2619if(vs0 vs0Var) {
        if (vs0Var == null) {
            return;
        }
        this.f4965do.add(vs0Var);
    }
}
