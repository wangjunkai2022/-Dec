package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import kimi.wuhends.ebooks.R;
/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class l5 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ g5 f2748do;

    public l5(g5 g5Var) {
        this.f2748do = g5Var;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        x5 x5Var = this.f2748do.f1508for;
        if (x5Var != null) {
            x5Var.mo2978case(false, ze.q(R.string.get_vcode_faild_txt));
        }
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f2748do.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f2748do.m2017if();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSuccess(com.apk.iy<java.lang.String> r6) {
        /*
            r5 = this;
            super.onSuccess(r6)
            r0 = 0
            r1 = 0
            if (r6 == 0) goto L38
            boolean r2 = r6.m1293for()
            if (r2 == 0) goto L38
            T r6 = r6.f2262do     // Catch: java.lang.Exception -> L30
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L30
            boolean r2 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L30
            r3 = 1
            if (r2 != 0) goto L38
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Exception -> L30
            r2.<init>(r6)     // Catch: java.lang.Exception -> L30
            java.lang.String r6 = "info"
            java.lang.String r6 = r2.optString(r6)     // Catch: java.lang.Exception -> L30
            java.lang.String r1 = "status"
            int r1 = r2.optInt(r1)     // Catch: java.lang.Exception -> L2e
            if (r1 != r3) goto L37
            r1 = r6
            r0 = 1
            goto L38
        L2e:
            r1 = move-exception
            goto L34
        L30:
            r6 = move-exception
            r4 = r1
            r1 = r6
            r6 = r4
        L34:
            r1.printStackTrace()
        L37:
            r1 = r6
        L38:
            com.apk.g5 r6 = r5.f2748do
            com.apk.x5 r6 = r6.f1508for
            if (r6 == 0) goto L41
            r6.mo2978case(r0, r1)
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.l5.onSuccess(com.apk.iy):void");
    }
}
