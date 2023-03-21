package com.apk;

import com.biquge.ebook.app.bean.NewReadFont;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import java.util.List;

/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class y3 extends JsonCallback<LzyResponse<List<NewReadFont>>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f5851do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y3(v3 v3Var, String str) {
        super(str);
        this.f5851do = v3Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<LzyResponse<List<NewReadFont>>> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || this.f5851do.f4987for == null) {
                    return;
                }
                u5 u5Var = this.f5851do.f4987for;
                List<NewReadFont> list = iyVar.f2262do.data;
                v3.m2754default(list, true);
                u5Var.mo2686super(list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<List<NewReadFont>>> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || this.f5851do.f4987for == null) {
                    return;
                }
                u5 u5Var = this.f5851do.f4987for;
                List<NewReadFont> list = iyVar.f2262do.data;
                v3.m2754default(list, true);
                u5Var.mo2686super(list);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
