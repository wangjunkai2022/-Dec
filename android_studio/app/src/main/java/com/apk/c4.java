package com.apk;

import com.biquge.ebook.app.bean.StoreBean;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;

/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class c4 extends JsonCallback<LzyResponse<StoreBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f508do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c4(v3 v3Var, String str) {
        super(str);
        this.f508do = v3Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<LzyResponse<StoreBean>> iyVar) {
        StoreBean storeBean;
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (storeBean = iyVar.f2262do.data) == null || this.f508do.f4987for == null) {
                    return;
                }
                this.f508do.f4987for.mo2680import(storeBean);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<LzyResponse<StoreBean>> iyVar) {
        super.onError(iyVar);
        u5 u5Var = this.f508do.f4987for;
        if (u5Var != null) {
            u5Var.mo2680import(null);
        }
    }

    @Override // com.apk.mx
    public void onFinish(iy<LzyResponse<StoreBean>> iyVar) {
        super.onFinish(iyVar);
        u5 u5Var = this.f508do.f4987for;
        if (u5Var != null) {
            u5Var.mo2674do();
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<StoreBean>> iyVar) {
        StoreBean storeBean;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (storeBean = iyVar.f2262do.data) == null || this.f508do.f4987for == null) {
                    return;
                }
                this.f508do.f4987for.mo2680import(storeBean);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
