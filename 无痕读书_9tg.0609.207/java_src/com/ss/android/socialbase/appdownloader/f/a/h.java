package com.ss.android.socialbase.appdownloader.f.a;

import java.io.PrintStream;
/* loaded from: classes7.dex */
public class h extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public Throwable f11778a;
    public int b;
    public int c;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public h(java.lang.String r4, com.ss.android.socialbase.appdownloader.f.a.g r5, java.lang.Throwable r6) {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = ""
            if (r4 != 0) goto Lb
            r4 = r1
            goto L11
        Lb:
            java.lang.String r2 = " "
            java.lang.String r4 = com.apk.Cgoto.m989case(r4, r2)
        L11:
            r0.append(r4)
            if (r5 != 0) goto L18
            r4 = r1
            goto L2e
        L18:
            java.lang.String r4 = "(position:"
            java.lang.StringBuilder r4 = com.apk.Cgoto.m1016super(r4)
            java.lang.String r2 = r5.d()
            r4.append(r2)
            java.lang.String r2 = ") "
            r4.append(r2)
            java.lang.String r4 = r4.toString()
        L2e:
            r0.append(r4)
            if (r6 != 0) goto L34
            goto L45
        L34:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r1 = "caused by: "
            r4.append(r1)
            r4.append(r6)
            java.lang.String r1 = r4.toString()
        L45:
            r0.append(r1)
            java.lang.String r4 = r0.toString()
            r3.<init>(r4)
            r4 = -1
            r3.b = r4
            r3.c = r4
            if (r5 == 0) goto L62
            int r4 = r5.c()
            r3.b = r4
            int r4 = r5.f()
            r3.c = r4
        L62:
            r3.f11778a = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.f.a.h.<init>(java.lang.String, com.ss.android.socialbase.appdownloader.f.a.g, java.lang.Throwable):void");
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        if (this.f11778a == null) {
            super.printStackTrace();
            return;
        }
        synchronized (System.err) {
            PrintStream printStream = System.err;
            printStream.println(super.getMessage() + "; nested exception is:");
            this.f11778a.printStackTrace();
        }
    }
}
