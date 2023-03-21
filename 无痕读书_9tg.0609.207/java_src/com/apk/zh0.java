package com.apk;

import java.security.cert.Certificate;
import java.util.List;
/* compiled from: RealConnection.kt */
/* loaded from: classes7.dex */
public final class zh0 extends od0 implements hd0<List<? extends Certificate>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ bg0 f6198do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ uf0 f6199for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ rg0 f6200if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zh0(bg0 bg0Var, rg0 rg0Var, uf0 uf0Var) {
        super(0);
        this.f6198do = bg0Var;
        this.f6200if = rg0Var;
        this.f6199for = uf0Var;
    }

    @Override // com.apk.hd0
    /* renamed from: do */
    public List<? extends Certificate> mo51do() {
        kk0 kk0Var = this.f6198do.f312if;
        nd0.m1874if(kk0Var);
        return kk0Var.mo1231do(this.f6200if.m2264for(), this.f6199for.f4880do.f4689try);
    }
}
