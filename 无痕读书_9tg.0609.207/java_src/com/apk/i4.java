package com.apk;

import com.biquge.ebook.app.bean.BookListBean;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class i4 extends JsonCallback<LzyResponse<BookListBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f2040do;

    public i4(v3 v3Var) {
        this.f2040do = v3Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<LzyResponse<BookListBean>> iyVar) {
        BookListBean bookListBean;
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (bookListBean = iyVar.f2262do.data) == null || this.f2040do.f4987for == null) {
                    return;
                }
                this.f2040do.f4987for.mo2690try(bookListBean.getBookList(), bookListBean.isHasNext(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<LzyResponse<BookListBean>> iyVar) {
        super.onError(iyVar);
        u5 u5Var = this.f2040do.f4987for;
        if (u5Var != null) {
            u5Var.mo2687switch();
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<BookListBean>> iyVar) {
        BookListBean bookListBean;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (bookListBean = iyVar.f2262do.data) == null || this.f2040do.f4987for == null) {
                    return;
                }
                this.f2040do.f4987for.mo2690try(bookListBean.getBookList(), bookListBean.isHasNext(), 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
