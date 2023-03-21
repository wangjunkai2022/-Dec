package com.apk;

import com.biquge.ebook.app.helper.req.convert.PublicCallback;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class k5 extends PublicCallback {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2472do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ g5 f2473if;

    public k5(g5 g5Var, String str) {
        this.f2473if = g5Var;
        this.f2472do = str;
    }

    @Override // com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onError(iy<String> iyVar) {
        super.onError(iyVar);
        ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
    }

    @Override // com.apk.mx
    public void onFinish(iy<String> iyVar) {
        super.onFinish(iyVar);
        this.f2473if.m2016do();
    }

    @Override // com.biquge.ebook.app.helper.req.convert.PublicCallback, com.biquge.ebook.app.helper.req.convert.BaseCallback, com.apk.mx
    public void onStart(qy<String, ? extends qy> qyVar) {
        super.onStart(qyVar);
        this.f2473if.m2017if();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003d A[Catch: Exception -> 0x0039, TryCatch #2 {Exception -> 0x0039, blocks: (B:4:0x0007, B:16:0x0034, B:21:0x003d, B:23:0x0043, B:27:0x0057, B:26:0x0050), top: B:35:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004d  */
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
            if (r6 == 0) goto L3b
            boolean r2 = r6.m1293for()     // Catch: java.lang.Exception -> L39
            if (r2 == 0) goto L3b
            T r6 = r6.f2262do     // Catch: java.lang.Exception -> L30
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L30
            boolean r2 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L30
            r3 = 1
            if (r2 != 0) goto L3b
            org.json.JSONObject r2 = new org.json.JSONObject     // Catch: java.lang.Exception -> L30
            r2.<init>(r6)     // Catch: java.lang.Exception -> L30
            java.lang.String r6 = "info"
            java.lang.String r6 = r2.optString(r6)     // Catch: java.lang.Exception -> L30
            java.lang.String r0 = "status"
            int r0 = r2.optInt(r0)     // Catch: java.lang.Exception -> L2e
            if (r0 != r3) goto L37
            r0 = r6
            r1 = 1
            goto L3b
        L2e:
            r0 = move-exception
            goto L34
        L30:
            r6 = move-exception
            r4 = r0
            r0 = r6
            r6 = r4
        L34:
            r0.printStackTrace()     // Catch: java.lang.Exception -> L39
        L37:
            r0 = r6
            goto L3b
        L39:
            r6 = move-exception
            goto L5b
        L3b:
            if (r1 == 0) goto L4d
            com.apk.g5 r6 = r5.f2473if     // Catch: java.lang.Exception -> L39
            com.apk.x5 r6 = r6.f1508for     // Catch: java.lang.Exception -> L39
            if (r6 == 0) goto L5e
            com.apk.g5 r6 = r5.f2473if     // Catch: java.lang.Exception -> L39
            com.apk.x5 r6 = r6.f1508for     // Catch: java.lang.Exception -> L39
            java.lang.String r1 = r5.f2472do     // Catch: java.lang.Exception -> L39
            r6.mo2985this(r0, r1)     // Catch: java.lang.Exception -> L39
            goto L5e
        L4d:
            if (r0 == 0) goto L50
            goto L57
        L50:
            r6 = 2131755329(0x7f100141, float:1.9141534E38)
            java.lang.String r0 = com.apk.ze.q(r6)     // Catch: java.lang.Exception -> L39
        L57:
            com.hjq.toast.ToastUtils.show(r0)     // Catch: java.lang.Exception -> L39
            goto L5e
        L5b:
            r6.printStackTrace()
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.k5.onSuccess(com.apk.iy):void");
    }
}
