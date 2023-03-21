package com.apk;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* compiled from: RealConnection.kt */
/* loaded from: classes7.dex */
public final class ai0 extends od0 implements hd0<List<? extends X509Certificate>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ bi0 f92do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ai0(bi0 bi0Var) {
        super(0);
        this.f92do = bi0Var;
    }

    @Override // com.apk.hd0
    /* renamed from: do  reason: not valid java name */
    public List<? extends X509Certificate> mo51do() {
        rg0 rg0Var = this.f92do.f333new;
        nd0.m1874if(rg0Var);
        List<Certificate> m2264for = rg0Var.m2264for();
        ArrayList arrayList = new ArrayList(sb0.m2420native(m2264for, 10));
        for (Certificate certificate : m2264for) {
            if (certificate == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
            }
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }
}
