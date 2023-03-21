package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;

/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class a3 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ z2 f17do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a3(z2 z2Var, String str) {
        super(str);
        this.f17do = z2Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    z2.m3127case(this.f17do, iyVar.f2262do);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    z2.m3127case(this.f17do, iyVar.f2262do);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
