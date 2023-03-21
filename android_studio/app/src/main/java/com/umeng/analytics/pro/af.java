package com.umeng.analytics.pro;

/* compiled from: OppoDeviceIdSupplier.java */
/* loaded from: classes7.dex */
public class af implements z {

    /* renamed from: a  reason: collision with root package name */
    public boolean f12137a = false;

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0031, code lost:
        if (r3.versionCode >= 1) goto L17;
     */
    @Override // com.umeng.analytics.pro.z
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String a(android.content.Context r10) {
        /*
            r9 = this;
            r0 = 2
            r1 = 0
            boolean r2 = r9.f12137a     // Catch: java.lang.Exception -> L61
            if (r2 != 0) goto L41
            com.apk.pp0 r2 = com.apk.pp0.Cif.f3730do     // Catch: java.lang.Exception -> L61
            android.content.Context r3 = r10.getApplicationContext()     // Catch: java.lang.Exception -> L61
            if (r2 == 0) goto L40
            r2 = 0
            r4 = 1
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L35 java.lang.Exception -> L61
            java.lang.String r5 = "com.heytap.openid"
            android.content.pm.PackageInfo r3 = r3.getPackageInfo(r5, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L35 java.lang.Exception -> L61
            int r5 = android.os.Build.VERSION.SDK_INT     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L35 java.lang.Exception -> L61
            r6 = 28
            if (r5 < r6) goto L2d
            if (r3 == 0) goto L39
            long r5 = r3.getLongVersionCode()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L35 java.lang.Exception -> L61
            r7 = 1
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 < 0) goto L39
            goto L33
        L2d:
            if (r3 == 0) goto L39
            int r3 = r3.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L35 java.lang.Exception -> L61
            if (r3 < r4) goto L39
        L33:
            r2 = 1
            goto L39
        L35:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Exception -> L61
        L39:
            com.apk.sb0.f4319for = r2     // Catch: java.lang.Exception -> L61
            com.apk.sb0.f4320if = r4     // Catch: java.lang.Exception -> L61
            r9.f12137a = r4     // Catch: java.lang.Exception -> L61
            goto L41
        L40:
            throw r1     // Catch: java.lang.Exception -> L61
        L41:
            boolean r2 = com.apk.sb0.f4320if     // Catch: java.lang.Exception -> L61
            if (r2 == 0) goto L59
            boolean r2 = com.apk.sb0.f4319for     // Catch: java.lang.Exception -> L61
            if (r2 != 0) goto L53
            java.lang.String r10 = "当前设备不支持获取OAID"
            java.lang.String[] r10 = new java.lang.String[]{r10}     // Catch: java.lang.Exception -> L61
            com.umeng.commonsdk.debug.UMLog.mutlInfo(r0, r10)     // Catch: java.lang.Exception -> L61
            goto L6a
        L53:
            java.lang.String r10 = com.apk.sb0.m2405const(r10)     // Catch: java.lang.Exception -> L61
            r1 = r10
            goto L6a
        L59:
            java.lang.RuntimeException r10 = new java.lang.RuntimeException     // Catch: java.lang.Exception -> L61
            java.lang.String r2 = "SDK Need Init First!"
            r10.<init>(r2)     // Catch: java.lang.Exception -> L61
            throw r10     // Catch: java.lang.Exception -> L61
        L61:
            java.lang.String r10 = "未检测到您集成OAID SDK包"
            java.lang.String[] r10 = new java.lang.String[]{r10}
            com.umeng.commonsdk.debug.UMLog.mutlInfo(r0, r10)
        L6a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.af.a(android.content.Context):java.lang.String");
    }
}
