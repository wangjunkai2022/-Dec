package com.apk;

import com.biquge.ebook.app.bean.ComicListBean;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public class f3 extends JsonCallback<LzyResponse<ComicListBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ z2 f1216do;

    public f3(z2 z2Var) {
        this.f1216do = z2Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<LzyResponse<ComicListBean>> iyVar) {
        ComicListBean comicListBean;
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (comicListBean = iyVar.f2262do.data) == null || this.f1216do.f6096for == null) {
                    return;
                }
                this.f1216do.f6096for.mo2239new(comicListBean.getBookList(), comicListBean.isHasNext(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<LzyResponse<ComicListBean>> iyVar) {
        super.onError(iyVar);
        r5 r5Var = this.f1216do.f6096for;
        if (r5Var != null) {
            r5Var.mo2242throw();
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<ComicListBean>> iyVar) {
        ComicListBean comicListBean;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (comicListBean = iyVar.f2262do.data) == null || this.f1216do.f6096for == null) {
                    return;
                }
                this.f1216do.f6096for.mo2239new(comicListBean.getBookList(), comicListBean.isHasNext(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
