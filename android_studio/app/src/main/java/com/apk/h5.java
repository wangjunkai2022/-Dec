package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class h5 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f1784do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ g5 f1785for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f1786if;

    public h5(g5 g5Var, String str, String str2) {
        this.f1785for = g5Var;
        this.f1784do = str;
        this.f1786if = str2;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f1785for.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f1785for.m2017if();
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
            if (!TextUtils.isEmpty(str)) {
                ToastUtils.show((CharSequence) str);
            }
            if (this.f1785for.f1508for != null) {
                this.f1785for.f1508for.mo2979do(this.f1784do, this.f1786if);
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
