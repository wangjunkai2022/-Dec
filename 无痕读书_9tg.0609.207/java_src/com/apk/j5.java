package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class j5 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ g5 f2282do;

    public j5(g5 g5Var) {
        this.f2282do = g5Var;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f2282do.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f2282do.m2017if();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
        if (r5.optInt("Status", -1) == 1) goto L4;
     */
    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSuccess(com.apk.iy<java.lang.String> r5) {
        /*
            r4 = this;
            super.onSuccess(r5)
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L42
            boolean r2 = r5.m1293for()     // Catch: java.lang.Exception -> L3d
            if (r2 == 0) goto L42
            T r5 = r5.f2262do     // Catch: java.lang.Exception -> L3d
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Exception -> L3d
            boolean r2 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L3d
            if (r2 != 0) goto L42
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Exception -> L3d
            r2.<init>(r5)     // Catch: java.lang.Exception -> L3d
            java.lang.String r5 = "data"
            org.json.JSONObject r5 = r2.optJSONObject(r5)     // Catch: java.lang.Exception -> L3d
            if (r5 == 0) goto L42
            java.lang.String r2 = "Message"
            java.lang.String r2 = r5.optString(r2)     // Catch: java.lang.Exception -> L3d
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L3d
            if (r3 != 0) goto L33
            com.hjq.toast.ToastUtils.show(r2)     // Catch: java.lang.Exception -> L3d
        L33:
            java.lang.String r2 = "Status"
            r3 = -1
            int r5 = r5.optInt(r2, r3)     // Catch: java.lang.Exception -> L3d
            if (r5 != r0) goto L42
            goto L43
        L3d:
            r5 = move-exception
            r5.printStackTrace()
            goto L44
        L42:
            r0 = 0
        L43:
            r1 = r0
        L44:
            if (r1 == 0) goto L4f
            com.apk.g5 r5 = r4.f2282do
            com.apk.x5 r5 = r5.f1508for
            if (r5 == 0) goto L4f
            r5.mo2982goto()
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.j5.onSuccess(com.apk.iy):void");
    }
}
