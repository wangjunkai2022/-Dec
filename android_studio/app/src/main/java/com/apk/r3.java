package com.apk;

import com.biquge.ebook.app.helper.req.convert.JsonCallback;

/* compiled from: ExpandPresenter.java */
/* loaded from: classes8.dex */
public class r3 extends JsonCallback<String> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ q3 f3987do;

    public r3(q3 q3Var) {
        this.f3987do = q3Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    q3.m2103for(this.f3987do, iyVar.f2262do);
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

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    q3.m2103for(this.f3987do, iyVar.f2262do);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
