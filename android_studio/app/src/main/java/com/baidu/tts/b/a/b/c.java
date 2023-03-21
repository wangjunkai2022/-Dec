package com.baidu.tts.b.a.b;

import com.baidu.tts.f.j;

/* compiled from: MixStrategy.java */
/* loaded from: classes8.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public com.baidu.tts.m.b f11142a;
    public j b;

    /* compiled from: MixStrategy.java */
    /* renamed from: com.baidu.tts.b.a.b.c$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f11143a;

        static {
            int[] iArr = new int[j.values().length];
            f11143a = iArr;
            try {
                j jVar = j.DEFAULT;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f11143a;
                j jVar2 = j.HIGH_SPEED_SYNTHESIZE_WIFI;
                iArr2[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f11143a;
                j jVar3 = j.HIGH_SPEED_NETWORK;
                iArr3[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = f11143a;
                j jVar4 = j.HIGH_SPEED_SYNTHESIZE;
                iArr4[2] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private int b(int i) {
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 1;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 2;
            case 13:
                return 3;
            default:
                return 0;
        }
    }

    private boolean b() {
        j jVar;
        try {
            jVar = this.f11142a.c();
        } catch (Exception unused) {
            jVar = null;
        }
        j jVar2 = this.b;
        if (jVar2 == null) {
            if (jVar == null) {
                this.b = j.DEFAULT;
            } else {
                this.b = jVar;
            }
        } else if (jVar == null || jVar2.equals(jVar)) {
            return false;
        } else {
            this.b = jVar;
        }
        return true;
    }

    private boolean c(int i) {
        return i == 1;
    }

    public void a(com.baidu.tts.m.b bVar) {
        this.f11142a = bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x008e, code lost:
        if (r4 != 9) goto L28;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a() {
        /*
            r8 = this;
            java.lang.String r0 = "MixStrategy"
            r1 = 0
            com.baidu.tts.h.b.b r2 = com.baidu.tts.h.b.b.a()     // Catch: java.lang.Exception -> L92
            android.content.Context r2 = r2.h()     // Catch: java.lang.Exception -> L92
            r3 = 1
            if (r2 == 0) goto L9a
            boolean r4 = r8.b()     // Catch: java.lang.Exception -> L92
            com.baidu.tts.m.b r5 = r8.f11142a     // Catch: java.lang.Exception -> L92
            com.baidu.tts.b.a.b.f$b r5 = r5.a()     // Catch: java.lang.Exception -> L92
            com.baidu.tts.m.b r6 = r8.f11142a     // Catch: java.lang.Exception -> L92
            com.baidu.tts.f.l r6 = r6.d()     // Catch: java.lang.Exception -> L92
            int r6 = r6.b()     // Catch: java.lang.Exception -> L92
            r5.d(r6)     // Catch: java.lang.Exception -> L92
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L92
            r6.<init>()     // Catch: java.lang.Exception -> L92
            java.lang.String r7 = "MixOnlineRequestTimeout: "
            r6.append(r7)     // Catch: java.lang.Exception -> L92
            int r5 = r5.u()     // Catch: java.lang.Exception -> L92
            r6.append(r5)     // Catch: java.lang.Exception -> L92
            java.lang.String r5 = " isModeChanged: "
            r6.append(r5)     // Catch: java.lang.Exception -> L92
            r6.append(r4)     // Catch: java.lang.Exception -> L92
            java.lang.String r4 = r6.toString()     // Catch: java.lang.Exception -> L92
            com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r0, r4)     // Catch: java.lang.Exception -> L92
            java.lang.String r4 = "connectivity"
            java.lang.Object r2 = r2.getSystemService(r4)     // Catch: java.lang.Exception -> L92
            android.net.ConnectivityManager r2 = (android.net.ConnectivityManager) r2     // Catch: java.lang.Exception -> L92
            android.net.NetworkInfo r2 = r2.getActiveNetworkInfo()     // Catch: java.lang.Exception -> L92
            if (r2 == 0) goto L9a
            boolean r4 = r2.isConnected()     // Catch: java.lang.Exception -> L92
            if (r4 == 0) goto L9a
            int r4 = r2.getType()     // Catch: java.lang.Exception -> L92
            int r2 = r2.getSubtype()     // Catch: java.lang.Exception -> L92
            int[] r5 = com.baidu.tts.b.a.b.c.AnonymousClass1.f11143a     // Catch: java.lang.Exception -> L92
            com.baidu.tts.f.j r6 = r8.b     // Catch: java.lang.Exception -> L92
            int r6 = r6.ordinal()     // Catch: java.lang.Exception -> L92
            r5 = r5[r6]     // Catch: java.lang.Exception -> L92
            r6 = 9
            if (r5 == r3) goto L88
            r7 = 2
            if (r5 == r7) goto L88
            r7 = 3
            if (r5 == r7) goto L79
            r7 = 4
            if (r5 == r7) goto L79
            goto L9a
        L79:
            boolean r5 = r8.c(r4)     // Catch: java.lang.Exception -> L92
            if (r5 != 0) goto L90
            if (r4 == r6) goto L90
            boolean r0 = r8.a(r2)     // Catch: java.lang.Exception -> L92
            if (r0 == 0) goto L9a
            goto L90
        L88:
            boolean r0 = r8.c(r4)     // Catch: java.lang.Exception -> L92
            if (r0 != 0) goto L90
            if (r4 != r6) goto L9a
        L90:
            r1 = 1
            goto L9a
        L92:
            r2 = move-exception
            java.lang.String r2 = r2.toString()
            com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r0, r2)
        L9a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.b.a.b.c.a():boolean");
    }

    private boolean a(int i) {
        return b(i) >= 2;
    }
}
