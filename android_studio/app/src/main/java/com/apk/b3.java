package com.apk;

import com.biquge.ebook.app.bean.ComicDirBean;
import com.biquge.ebook.app.helper.req.convert.JsonCallback;
import com.biquge.ebook.app.helper.req.convert.LzyResponse;
import java.util.List;

/* compiled from: ComicPresenter.java */
/* loaded from: classes8.dex */
public final class b3 extends JsonCallback<LzyResponse<ComicDirBean>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ List f239do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f240if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b3(String str, List list, String str2) {
        super(str);
        this.f239do = list;
        this.f240if = str2;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<LzyResponse<ComicDirBean>> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    this.f239do.addAll(z2.m3129else(this.f240if, iyVar.f2262do.data, false, false));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<LzyResponse<ComicDirBean>> iyVar) {
        super.onError(iyVar);
        if (iyVar == null || !iyVar.m1293for()) {
            return;
        }
        this.f239do.clear();
        this.f239do.addAll(z2.m3129else(this.f240if, iyVar.f2262do.data, false, false));
    }

    @Override // com.biquge.ebook.app.helper.req.convert.JsonCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<LzyResponse<ComicDirBean>> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    this.f239do.clear();
                    this.f239do.addAll(z2.m3129else(this.f240if, iyVar.f2262do.data, true, false));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
