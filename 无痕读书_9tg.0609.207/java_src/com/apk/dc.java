package com.apk;

import com.biquge.ebook.app.ui.fragment.ShareLogFragment;
/* compiled from: ShareLogFragment.java */
/* loaded from: classes8.dex */
public class dc extends c1<String> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ShareLogFragment f846do;

    public dc(ShareLogFragment shareLogFragment) {
        this.f846do = shareLogFragment;
    }

    @Override // com.apk.c1
    public String doInBackground() {
        return m0.m1680for();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d2  */
    @Override // com.apk.c1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPostExecute(java.lang.String r8) {
        /*
            r7 = this;
            java.lang.String r8 = (java.lang.String) r8
            super.onPostExecute(r8)
            com.biquge.ebook.app.ui.fragment.ShareLogFragment r0 = r7.f846do
            r0.hideBaseLoading()
            com.biquge.ebook.app.ui.fragment.ShareLogFragment r0 = r7.f846do
            android.widget.TextView r0 = r0.mValueTv
            if (r0 == 0) goto L13
            r0.setText(r8)
        L13:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "免广告到期时间："
            java.lang.StringBuilder r0 = com.apk.Cgoto.m1016super(r0)
            java.lang.String r1 = com.apk.w0.m2879goto()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r8.append(r0)
            java.lang.String r0 = "\n"
            r8.append(r0)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "服务器时间："
            r1.append(r2)
            java.lang.String r2 = com.apk.w0.m2870const()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r8.append(r1)
            r8.append(r0)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "手机时间："
            r1.append(r2)
            java.lang.String r2 = com.apk.kg.m1501try()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r8.append(r1)
            r8.append(r0)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "是否满足免广告："
            r1.append(r2)
            com.biquge.ebook.app.ui.fragment.ShareLogFragment r2 = r7.f846do
            if (r2 == 0) goto Lf8
            java.lang.String r2 = com.apk.w0.m2879goto()
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto La8
            java.text.DateFormat r3 = com.apk.kg.f2535do
            long r2 = com.apk.kg.m1493catch(r2, r3)
            java.lang.String r4 = com.apk.w0.m2870const()
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 != 0) goto L96
            java.text.DateFormat r5 = com.apk.kg.f2535do
            long r4 = com.apk.kg.m1493catch(r4, r5)
            goto L9a
        L96:
            long r4 = java.lang.System.currentTimeMillis()
        L9a:
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 >= 0) goto La8
            long r4 = java.lang.System.currentTimeMillis()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 >= 0) goto La8
            r2 = 0
            goto La9
        La8:
            r2 = 1
        La9:
            if (r2 == 0) goto Lae
            java.lang.String r2 = "不满足"
            goto Lb0
        Lae:
            java.lang.String r2 = "满足"
        Lb0:
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r8.append(r1)
            r8.append(r0)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "当前广告开关："
            r1.append(r2)
            com.apk.finally r2 = com.apk.Cfinally.m797else()
            boolean r2 = r2.f1346do
            if (r2 == 0) goto Ld2
            java.lang.String r2 = "开"
            goto Ld4
        Ld2:
            java.lang.String r2 = "关"
        Ld4:
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r8.append(r1)
            r8.append(r0)
            r8.append(r0)
            r8.append(r0)
            java.lang.String r0 = "如满足免广告，但是没有免广告，请杀掉应用重启试试"
            r8.append(r0)
            com.biquge.ebook.app.ui.fragment.ShareLogFragment r0 = r7.f846do
            android.widget.TextView r0 = r0.mFeedAdTv
            java.lang.String r8 = r8.toString()
            r0.setText(r8)
            return
        Lf8:
            r8 = 0
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.dc.onPostExecute(java.lang.Object):void");
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        this.f846do.showBaseLoading();
    }
}
