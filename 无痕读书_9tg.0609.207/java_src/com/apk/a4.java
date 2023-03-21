package com.apk;

import com.biquge.ebook.app.bean.FastSearchWord;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import java.util.List;
/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class a4 extends JsonCallback<LzyResponse<List<FastSearchWord>>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f18do;

    public a4(v3 v3Var) {
        this.f18do = v3Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<LzyResponse<List<FastSearchWord>>> iyVar) {
        List<FastSearchWord> list;
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (list = iyVar.f2262do.data) == null || this.f18do.f4987for == null) {
                    return;
                }
                this.f18do.f4987for.mo2676final(list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<LzyResponse<List<FastSearchWord>>> iyVar) {
        super.onError(iyVar);
    }

    @Override // com.apk.mx
    public void onFinish(iy<LzyResponse<List<FastSearchWord>>> iyVar) {
        super.onFinish(iyVar);
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<List<FastSearchWord>>> iyVar) {
        List<FastSearchWord> list;
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || (list = iyVar.f2262do.data) == null || this.f18do.f4987for == null) {
                    return;
                }
                this.f18do.f4987for.mo2676final(list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
