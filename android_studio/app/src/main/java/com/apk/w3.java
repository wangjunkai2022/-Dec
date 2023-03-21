package com.apk;

import com.biquge.ebook.app.bean.BookInfoEntity;
import com.biquge.ebook.app.helper.req.convert.PublicCallback;

/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class w3 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f5231do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w3(v3 v3Var, String str) {
        super(str);
        this.f5231do = v3Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        BookInfoEntity m2762try;
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (m2762try = v3.m2762try(this.f5231do, iyVar.f2262do)) == null || this.f5231do.f4987for == null) {
                    return;
                }
                this.f5231do.f4987for.mo2670case(m2762try);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        u5 u5Var = this.f5231do.f4987for;
        if (u5Var != null) {
            u5Var.mo2670case(null);
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        BookInfoEntity m2762try;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (m2762try = v3.m2762try(this.f5231do, iyVar.f2262do)) == null || this.f5231do.f4987for == null) {
                    return;
                }
                this.f5231do.f4987for.mo2670case(m2762try);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
