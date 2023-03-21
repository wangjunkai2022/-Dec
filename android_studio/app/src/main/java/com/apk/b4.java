package com.apk;

import com.biquge.ebook.app.bean.ExternalWebSite;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;

/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class b4 extends JsonCallback<LzyResponse<ExternalWebSite>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f241do;

    public b4(v3 v3Var) {
        this.f241do = v3Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<LzyResponse<ExternalWebSite>> iyVar) {
        ExternalWebSite externalWebSite;
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (externalWebSite = iyVar.f2262do.data) == null || this.f241do.f4987for == null) {
                    return;
                }
                this.f241do.f4987for.mo2673const(externalWebSite);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<ExternalWebSite>> iyVar) {
        ExternalWebSite externalWebSite;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (externalWebSite = iyVar.f2262do.data) == null || this.f241do.f4987for == null) {
                    return;
                }
                this.f241do.f4987for.mo2673const(externalWebSite);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
