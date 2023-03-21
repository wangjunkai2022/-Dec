package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class f4 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f1217do;

    public f4(v3 v3Var) {
        this.f1217do = v3Var;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f1217do.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f1217do.m2017if();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    JSONObject jSONObject = new JSONObject(iyVar.f2262do);
                    String optString = jSONObject.optString("info");
                    JSONObject optJSONObject = jSONObject.optJSONObject("data");
                    if (optJSONObject != null && optJSONObject.optInt("result") == 1 && this.f1217do.f4987for != null) {
                        this.f1217do.f4987for.mo2675else();
                    }
                    ToastUtils.show((CharSequence) optString);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
