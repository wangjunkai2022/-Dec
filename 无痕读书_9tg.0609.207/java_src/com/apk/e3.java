package com.apk;

import com.biquge.ebook.app.bean.ComicStoreBean;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class e3 extends JsonCallback<LzyResponse<ComicStoreBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ z2 f992do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e3(z2 z2Var, String str) {
        super(str);
        this.f992do = z2Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<LzyResponse<ComicStoreBean>> iyVar) {
        ComicStoreBean comicStoreBean;
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (comicStoreBean = iyVar.f2262do.data) == null || this.f992do.f6096for == null) {
                    return;
                }
                this.f992do.f6096for.mo2235final(comicStoreBean);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<LzyResponse<ComicStoreBean>> iyVar) {
        super.onError(iyVar);
        r5 r5Var = this.f992do.f6096for;
        if (r5Var != null) {
            r5Var.mo2235final(null);
        }
    }

    @Override // com.apk.mx
    public void onFinish(iy<LzyResponse<ComicStoreBean>> iyVar) {
        super.onFinish(iyVar);
        r5 r5Var = this.f992do.f6096for;
        if (r5Var != null) {
            r5Var.mo2233do();
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<ComicStoreBean>> iyVar) {
        ComicStoreBean comicStoreBean;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (comicStoreBean = iyVar.f2262do.data) == null || this.f992do.f6096for == null) {
                    return;
                }
                this.f992do.f6096for.mo2235final(comicStoreBean);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
