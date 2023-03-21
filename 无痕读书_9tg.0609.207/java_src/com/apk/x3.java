package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class x3 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f5451do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ v3 f5452if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x3(v3 v3Var, String str, String str2) {
        super(str);
        this.f5452if = v3Var;
        this.f5451do = str2;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    v3.m2755else(this.f5452if, iyVar.f2262do, this.f5451do);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        u5 u5Var = this.f5452if.f4987for;
        if (u5Var != null) {
            u5Var.mo2669break(false, null);
        }
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f5452if.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f5452if.m2017if();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    v3.m2755else(this.f5452if, iyVar.f2262do, this.f5451do);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
