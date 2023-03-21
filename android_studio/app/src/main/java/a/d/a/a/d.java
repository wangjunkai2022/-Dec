package a.d.a.a;

import android.content.BroadcastReceiver;

/* loaded from: classes8.dex */
public class d extends BroadcastReceiver {
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
        if (r0 == 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
        if (android.text.TextUtils.equals(r6.getStringExtra("openIdPackage"), r5.getPackageName()) != false) goto L29;
     */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onReceive(android.content.Context r5, android.content.Intent r6) {
        /*
            r4 = this;
            if (r5 == 0) goto L7c
            if (r6 != 0) goto L6
            goto L7c
        L6:
            java.lang.String r0 = "openIdNotifyFlag"
            r1 = 0
            int r0 = r6.getIntExtra(r0, r1)
            r2 = 1
            if (r0 != r2) goto L21
            java.lang.String r0 = "openIdPackage"
            java.lang.String r0 = r6.getStringExtra(r0)
            java.lang.String r5 = r5.getPackageName()
            boolean r5 = android.text.TextUtils.equals(r0, r5)
            if (r5 == 0) goto L38
            goto L37
        L21:
            r3 = 2
            if (r0 != r3) goto L35
            java.lang.String r0 = "openIdPackageList"
            java.util.ArrayList r0 = r6.getStringArrayListExtra(r0)
            if (r0 == 0) goto L38
            java.lang.String r5 = r5.getPackageName()
            boolean r1 = r0.contains(r5)
            goto L38
        L35:
            if (r0 != 0) goto L38
        L37:
            r1 = 1
        L38:
            if (r1 != 0) goto L3b
            return
        L3b:
            java.lang.String r5 = "openIdType"
            java.lang.String r5 = r6.getStringExtra(r5)
            a.d.a.a.e r6 = a.d.a.a.e.a()
            r0 = 0
            if (r6 == 0) goto L7b
            java.lang.String r1 = "oaid"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L53
            a.d.a.a.a r0 = r6.b
            goto L73
        L53:
            java.lang.String r1 = "vaid"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L5e
            a.d.a.a.a r0 = r6.d
            goto L73
        L5e:
            java.lang.String r1 = "aaid"
            boolean r1 = r1.equals(r5)
            if (r1 == 0) goto L69
            a.d.a.a.a r0 = r6.c
            goto L73
        L69:
            java.lang.String r1 = "udid"
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L73
            a.d.a.a.a r0 = r6.f10600a
        L73:
            if (r0 != 0) goto L76
            return
        L76:
            r5 = 0
            r0.f10597a = r5
            return
        L7b:
            throw r0
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: a.d.a.a.d.onReceive(android.content.Context, android.content.Intent):void");
    }
}
