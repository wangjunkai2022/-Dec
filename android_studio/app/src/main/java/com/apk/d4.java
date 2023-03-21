package com.apk;

import com.biquge.ebook.app.bean.NovelDirBean;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import java.util.List;

/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public final class d4 extends JsonCallback<LzyResponse<NovelDirBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ List f817do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f818if;

    public d4(List list, String str) {
        this.f817do = list;
        this.f818if = str;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<LzyResponse<NovelDirBean>> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    this.f817do.addAll(v3.m2757goto(this.f818if, iyVar.f2262do.data, false, false));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<LzyResponse<NovelDirBean>> iyVar) {
        super.onError(iyVar);
        if (iyVar != null && iyVar.m1293for()) {
            this.f817do.clear();
            this.f817do.addAll(v3.m2757goto(this.f818if, iyVar.f2262do.data, false, false));
        }
        if (x4.m2950const(iyVar)) {
            v3.m2759new();
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<NovelDirBean>> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    this.f817do.clear();
                    this.f817do.addAll(v3.m2757goto(this.f818if, iyVar.f2262do.data, true, false));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
