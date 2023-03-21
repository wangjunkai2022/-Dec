package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class i5 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2048do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ g5 f2049for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f2050if;

    public i5(g5 g5Var, String str, String str2) {
        this.f2049for = g5Var;
        this.f2048do = str;
        this.f2050if = str2;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f2049for.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f2049for.m2017if();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        JSONObject optJSONObject;
        super.onSuccess(iyVar);
        String str = null;
        boolean z = false;
        if (iyVar != null) {
            try {
                if (iyVar.m1293for()) {
                    try {
                        String str2 = iyVar.f2262do;
                        if (!TextUtils.isEmpty(str2) && (optJSONObject = new JSONObject(str2).optJSONObject("data")) != null) {
                            str = optJSONObject.optString("Message");
                            if (optJSONObject.optInt("Status") == 1) {
                                z = true;
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (z) {
            if (this.f2049for.f1508for != null) {
                this.f2049for.f1508for.mo2984new(this.f2048do, this.f2050if);
                return;
            }
            return;
        }
        if (str == null) {
            str = ze.q(R.string.element_detail_failed_txt);
        }
        ToastUtils.show((CharSequence) str);
    }
}
