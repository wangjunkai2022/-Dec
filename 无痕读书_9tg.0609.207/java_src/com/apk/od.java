package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
/* compiled from: WebPresenter.java */
/* loaded from: classes8.dex */
public class od extends PublicCallback {

    /* renamed from: case  reason: not valid java name */
    public final /* synthetic */ qd f3394case;

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f3395do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ boolean f3396for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f3397if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ boolean f3398new;

    /* renamed from: try  reason: not valid java name */
    public final /* synthetic */ boolean f3399try;

    public od(qd qdVar, String str, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f3394case = qdVar;
        this.f3395do = str;
        this.f3397if = z;
        this.f3396for = z2;
        this.f3398new = z3;
        this.f3399try = z4;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar == null || !iyVar.m1293for()) {
            return;
        }
        qd.m2115for(this.f3394case, this.f3395do, iyVar.f2262do, this.f3397if, this.f3396for, this.f3398new, this.f3399try);
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        md mdVar = this.f3394case.f3830for;
        if (mdVar != null) {
            mdVar.mo1691if(this.f3398new, this.f3399try, this.f3397if, this.f3396for, null, null);
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar == null || !iyVar.m1293for()) {
            return;
        }
        qd.m2115for(this.f3394case, this.f3395do, iyVar.f2262do, this.f3397if, this.f3396for, this.f3398new, this.f3399try);
    }
}
