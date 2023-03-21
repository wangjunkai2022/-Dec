package com.apk;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CertificatePinner.kt */
/* loaded from: classes7.dex */
public final class cg0 extends od0 implements hd0<List<? extends X509Certificate>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ bg0 f600do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ String f601for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ List f602if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cg0(bg0 bg0Var, List list, String str) {
        super(0);
        this.f600do = bg0Var;
        this.f602if = list;
        this.f601for = str;
    }

    @Override // com.apk.hd0
    /* renamed from: do */
    public List<? extends X509Certificate> mo51do() {
        List<Certificate> list;
        kk0 kk0Var = this.f600do.f312if;
        if (kk0Var == null || (list = kk0Var.mo1231do(this.f602if, this.f601for)) == null) {
            list = this.f602if;
        }
        ArrayList arrayList = new ArrayList(sb0.m2420native(list, 10));
        for (Certificate certificate : list) {
            if (certificate == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
            }
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }
}
