package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
/* compiled from: NovelPresenter.java */
/* loaded from: classes8.dex */
public class h4 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ v3 f1776do;

    public h4(v3 v3Var) {
        this.f1776do = v3Var;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        ToastUtils.show((CharSequence) ze.q(R.string.upload_book_fail));
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f1776do.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f1776do.m2017if();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
        if (r3.optInt(androidx.core.app.NotificationCompat.CATEGORY_STATUS, -1) == 1) goto L4;
     */
    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSuccess(com.apk.iy<java.lang.String> r6) {
        /*
            r5 = this;
            super.onSuccess(r6)
            r0 = 1
            r1 = 0
            r2 = 0
            if (r6 == 0) goto L32
            boolean r3 = r6.m1293for()     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L32
            T r6 = r6.f2262do     // Catch: java.lang.Exception -> L2d
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L2d
            boolean r3 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L2d
            if (r3 != 0) goto L32
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Exception -> L2d
            r3.<init>(r6)     // Catch: java.lang.Exception -> L2d
            java.lang.String r6 = "info"
            java.lang.String r2 = r3.optString(r6)     // Catch: java.lang.Exception -> L2d
            java.lang.String r6 = "status"
            r4 = -1
            int r6 = r3.optInt(r6, r4)     // Catch: java.lang.Exception -> L2d
            if (r6 != r0) goto L32
            goto L33
        L2d:
            r6 = move-exception
            r6.printStackTrace()
            goto L34
        L32:
            r0 = 0
        L33:
            r1 = r0
        L34:
            if (r1 == 0) goto L40
            com.apk.v3 r6 = r5.f1776do
            com.apk.u5 r6 = r6.f4987for
            if (r6 == 0) goto L43
            r6.mo2681native()
            goto L43
        L40:
            com.hjq.toast.ToastUtils.show(r2)
        L43:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.h4.onSuccess(com.apk.iy):void");
    }
}
