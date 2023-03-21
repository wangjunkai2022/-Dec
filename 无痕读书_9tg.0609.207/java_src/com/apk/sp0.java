package com.apk;

import android.os.Handler;
import android.os.Looper;
/* compiled from: IdentifierIdClient.java */
/* loaded from: classes7.dex */
public final class sp0 extends Handler {
    public sp0(Looper looper) {
        super(looper);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleMessage(android.os.Message r10) {
        /*
            r9 = this;
            int r0 = r10.what
            r1 = 11
            if (r0 != r1) goto L9a
            android.os.Bundle r0 = r10.getData()
            java.lang.String r1 = "type"
            int r0 = r0.getInt(r1)
            android.os.Bundle r10 = r10.getData()
            java.lang.String r1 = "appid"
            java.lang.String r10 = r10.getString(r1)
            com.apk.rp0 r1 = com.apk.tp0.f4742break
            r2 = 0
            if (r1 == 0) goto L99
            if (r0 == 0) goto L5f
            r3 = 1
            if (r0 == r3) goto L49
            r3 = 2
            if (r0 == r3) goto L33
            r10 = 4
            if (r0 == r10) goto L2c
            r4 = r2
            goto L66
        L2c:
            java.lang.String r10 = "content://com.vivo.vms.IdProvider/IdentifierId/OAIDSTATUS"
            android.net.Uri r10 = android.net.Uri.parse(r10)
            goto L65
        L33:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "content://com.vivo.vms.IdProvider/IdentifierId/AAID_"
            r0.append(r3)
            r0.append(r10)
            java.lang.String r10 = r0.toString()
            android.net.Uri r10 = android.net.Uri.parse(r10)
            goto L65
        L49:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r3 = "content://com.vivo.vms.IdProvider/IdentifierId/VAID_"
            r0.append(r3)
            r0.append(r10)
            java.lang.String r10 = r0.toString()
            android.net.Uri r10 = android.net.Uri.parse(r10)
            goto L65
        L5f:
            java.lang.String r10 = "content://com.vivo.vms.IdProvider/IdentifierId/OAID"
            android.net.Uri r10 = android.net.Uri.parse(r10)
        L65:
            r4 = r10
        L66:
            android.content.Context r10 = r1.f4187do
            android.content.ContentResolver r3 = r10.getContentResolver()
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r10 = r3.query(r4, r5, r6, r7, r8)
            if (r10 == 0) goto L8a
            boolean r0 = r10.moveToNext()
            if (r0 == 0) goto L87
            java.lang.String r0 = "value"
            int r0 = r10.getColumnIndex(r0)
            java.lang.String r0 = r10.getString(r0)
            r2 = r0
        L87:
            r10.close()
        L8a:
            com.apk.tp0.f4745else = r2
            java.lang.Object r10 = com.apk.tp0.f4749new
            monitor-enter(r10)
            java.lang.Object r0 = com.apk.tp0.f4749new     // Catch: java.lang.Throwable -> L96
            r0.notify()     // Catch: java.lang.Throwable -> L96
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L96
            goto L9a
        L96:
            r0 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L96
            throw r0
        L99:
            throw r2
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.sp0.handleMessage(android.os.Message):void");
    }
}
