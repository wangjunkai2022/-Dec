package com.biquge.ebook.app.helper.req.convert;

import android.text.TextUtils;
import com.apk.ch0;
import com.apk.iy;
import com.apk.ox;
import com.apk.qy;
import com.apk.ze;
/* loaded from: classes8.dex */
public class PublicCallback extends BaseCallback<String> {
    public final ox convert = new ox();
    public String mKeyUrl;

    public PublicCallback() {
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        try {
            String n = ze.n(qyVar.f3961do);
            if (TextUtils.isEmpty(n)) {
                return;
            }
            this.mKeyUrl = qyVar.f3961do;
            onCacheSuccess(iy.m1291try(true, n, null, null));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onSuccess(iy<String> iyVar) {
        super.onSuccess(iyVar);
        if (TextUtils.isEmpty(this.mKeyUrl)) {
            return;
        }
        ze.W(this.mKeyUrl);
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.nx
    public String convertResponse(ch0 ch0Var) throws Throwable {
        String convertResponse = this.convert.convertResponse(ch0Var);
        ch0Var.close();
        return convertResponse;
    }

    public PublicCallback(String str) {
        setReqType(str);
    }
}
