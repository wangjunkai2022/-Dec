package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import org.json.JSONObject;

/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class g4 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f1502do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g4(v3 v3Var, String str) {
        super(str);
        this.f1502do = v3Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || this.f1502do.f4987for == null) {
                    return;
                }
                this.f1502do.f4987for.mo2685static(new JSONObject(iyVar.f2262do));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (!iyVar.m1293for() || this.f1502do.f4987for == null) {
                    return;
                }
                this.f1502do.f4987for.mo2685static(new JSONObject(iyVar.f2262do));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
