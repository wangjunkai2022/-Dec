package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class j4 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f2278do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j4(v3 v3Var, String str) {
        super(str);
        this.f2278do = v3Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    v3.m2756for(this.f2278do, iyVar.f2262do);
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
                    v3.m2756for(this.f2278do, iyVar.f2262do);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
