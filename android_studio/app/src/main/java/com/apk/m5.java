package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import org.json.JSONObject;

/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class m5 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ g5 f2979do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m5(g5 g5Var, String str) {
        super(str);
        this.f2979do = g5Var;
    }

    @Override // com.apk.mx
    public void onCacheSuccess(iy<String> iyVar) {
        super.onCacheSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    String optString = new JSONObject(iyVar.f2262do).optString("data");
                    if (TextUtils.isEmpty(optString) || this.f2979do.f1508for == null) {
                        return;
                    }
                    this.f2979do.f1508for.mo2981for(optString.replace("{appname}", ze.m3166extends()).replace("&nbsp;", "    "));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f2979do.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f2979do.m2017if();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    String optString = new JSONObject(iyVar.f2262do).optString("data");
                    if (TextUtils.isEmpty(optString) || this.f2979do.f1508for == null) {
                        return;
                    }
                    this.f2979do.f1508for.mo2981for(optString.replace("{appname}", ze.m3166extends()).replace("&nbsp;", "    "));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
