package com.apk;

import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;

/* compiled from: DownloadFileManager.java */
/* loaded from: classes8.dex */
public final class lf extends c1<String> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2790do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ String f2791for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f2792if;

    public lf(String str, String str2, String str3) {
        this.f2790do = str;
        this.f2792if = str2;
        this.f2791for = str3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
        r0 = r6.getAbsolutePath();
     */
    @Override // com.apk.c1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String doInBackground() {
        /*
            r8 = this;
            java.lang.String r0 = r8.f2790do
            boolean r1 = com.apk.ze.J(r0)
            r2 = 0
            r3 = 0
            if (r1 == 0) goto L74
            java.lang.String r1 = r8.f2792if     // Catch: java.lang.Exception -> L70
            java.lang.String r4 = "."
            int r4 = r1.lastIndexOf(r4)     // Catch: java.lang.Exception -> L17
            java.lang.String r1 = r1.substring(r3, r4)     // Catch: java.lang.Exception -> L17
            goto L1d
        L17:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Exception -> L70
            java.lang.String r1 = ""
        L1d:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L70
            r4.<init>()     // Catch: java.lang.Exception -> L70
            com.apk.a6 r5 = com.apk.a6.m18else()     // Catch: java.lang.Exception -> L70
            java.lang.String r5 = r5.m23new()     // Catch: java.lang.Exception -> L70
            r4.append(r5)     // Catch: java.lang.Exception -> L70
            java.lang.String r5 = java.io.File.separator     // Catch: java.lang.Exception -> L70
            r4.append(r5)     // Catch: java.lang.Exception -> L70
            r4.append(r1)     // Catch: java.lang.Exception -> L70
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Exception -> L70
            java.lang.String r4 = r8.f2790do     // Catch: java.lang.Exception -> L70
            boolean r4 = com.apk.eg.n(r4, r1, r2)     // Catch: java.lang.Exception -> L70
            if (r4 == 0) goto L74
            java.io.File r4 = new java.io.File     // Catch: java.lang.Exception -> L70
            r4.<init>(r1)     // Catch: java.lang.Exception -> L70
            boolean r1 = r4.isDirectory()     // Catch: java.lang.Exception -> L70
            if (r1 == 0) goto L74
            java.io.File[] r1 = r4.listFiles()     // Catch: java.lang.Exception -> L70
            int r4 = r1.length     // Catch: java.lang.Exception -> L70
            r5 = 0
        L52:
            if (r5 >= r4) goto L74
            r6 = r1[r5]     // Catch: java.lang.Exception -> L70
            if (r6 == 0) goto L6d
            boolean r7 = r6.exists()     // Catch: java.lang.Exception -> L70
            if (r7 == 0) goto L6d
            java.lang.String r7 = r6.getAbsolutePath()     // Catch: java.lang.Exception -> L70
            boolean r7 = com.apk.ze.I(r7)     // Catch: java.lang.Exception -> L70
            if (r7 == 0) goto L6d
            java.lang.String r0 = r6.getAbsolutePath()     // Catch: java.lang.Exception -> L70
            goto L74
        L6d:
            int r5 = r5 + 1
            goto L52
        L70:
            r1 = move-exception
            r1.printStackTrace()
        L74:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r4 = r8.f2791for
            int r4 = r4.hashCode()
            java.lang.String r4 = java.lang.String.valueOf(r4)
            r1.append(r4)
            long r4 = java.lang.System.currentTimeMillis()
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            java.lang.String r4 = r8.f2792if     // Catch: java.lang.Exception -> Lc9
            r5 = 1
            com.biquge.ebook.app.bean.CollectBook r0 = com.apk.n2.w(r1, r4, r0, r5)     // Catch: java.lang.Exception -> Lc9
            com.apk.ze.Y(r5)     // Catch: java.lang.Exception -> Lc9
            com.apk.ze.V()     // Catch: java.lang.Exception -> Lc9
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: java.lang.Exception -> Lc9
            r4.<init>()     // Catch: java.lang.Exception -> Lc9
            java.lang.String r6 = "finish"
            java.lang.String r7 = "1"
            r4.put(r6, r7)     // Catch: java.lang.Exception -> Lc9
            java.lang.String r6 = "bookId"
            r4.put(r6, r1)     // Catch: java.lang.Exception -> Lc9
            java.lang.Class<com.biquge.ebook.app.bean.TaskInfo> r1 = com.biquge.ebook.app.bean.TaskInfo.class
            r6 = 2
            java.lang.String[] r6 = new java.lang.String[r6]     // Catch: java.lang.Exception -> Lc9
            java.lang.String r7 = "url = ?"
            r6[r3] = r7     // Catch: java.lang.Exception -> Lc9
            java.lang.String r3 = r8.f2791for     // Catch: java.lang.Exception -> Lc9
            r6[r5] = r3     // Catch: java.lang.Exception -> Lc9
            org.litepal.LitePal.updateAll(r1, r4, r6)     // Catch: java.lang.Exception -> Lc9
            java.lang.String r1 = "REFRESH_DOWNLOAD_TXT_LIST_KEY"
            com.apk.mf.m1712do(r1, r2)     // Catch: java.lang.Exception -> Lc9
            java.lang.String r0 = r0.getName()     // Catch: java.lang.Exception -> Lc9
            goto Lcf
        Lc9:
            r0 = move-exception
            r0.printStackTrace()
            java.lang.String r0 = r8.f2792if
        Lcf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.lf.doInBackground():java.lang.Object");
    }

    @Override // com.apk.c1
    public void onPostExecute(String str) {
        String str2 = str;
        super.onPostExecute(str2);
        try {
            kf.m1481do(this.f2791for, null);
            ToastUtils.show((CharSequence) ze.r(R.string.download_add_book_to_shelf_txt, str2));
        } catch (Exception unused) {
        }
    }
}
