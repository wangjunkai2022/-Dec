package com.tencent.bugly.proguard;

import android.content.Context;
import android.util.Pair;
import java.util.Map;
import java.util.UUID;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public int f12109a;
    public int b;
    public final Context c;
    public final int d;
    public final byte[] e;
    public final com.tencent.bugly.crashreport.common.info.a f;
    public final com.tencent.bugly.crashreport.common.strategy.a g;
    public final s h;
    public final v i;
    public final int j;
    public final u k;
    public final u l;
    public String m;
    public final String n;
    public final Map<String, String> o;
    public int p;
    public long q;
    public long r;
    public boolean s;

    public w(Context context, int i, int i2, byte[] bArr, String str, String str2, u uVar, boolean z, boolean z2) {
        this(context, i, i2, bArr, str, str2, uVar, 2, 30000, z2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.tencent.bugly.proguard.ao r5, boolean r6, int r7, java.lang.String r8) {
        /*
            r4 = this;
            int r5 = r4.d
            r0 = 630(0x276, float:8.83E-43)
            if (r5 == r0) goto L1a
            r0 = 640(0x280, float:8.97E-43)
            if (r5 == r0) goto L17
            r0 = 830(0x33e, float:1.163E-42)
            if (r5 == r0) goto L1a
            r0 = 840(0x348, float:1.177E-42)
            if (r5 == r0) goto L17
            java.lang.String r5 = java.lang.String.valueOf(r5)
            goto L1c
        L17:
            java.lang.String r5 = "userinfo"
            goto L1c
        L1a:
            java.lang.String r5 = "crash"
        L1c:
            r0 = 1
            r1 = 0
            if (r6 == 0) goto L2a
            java.lang.Object[] r7 = new java.lang.Object[r0]
            r7[r1] = r5
            java.lang.String r5 = "[Upload] Success: %s"
            com.tencent.bugly.proguard.y.a(r5, r7)
            goto L3d
        L2a:
            r2 = 3
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            r2[r1] = r7
            r2[r0] = r5
            r5 = 2
            r2[r5] = r8
            java.lang.String r5 = "[Upload] Failed to upload(%d) %s: %s"
            com.tencent.bugly.proguard.y.e(r5, r2)
        L3d:
            long r0 = r4.q
            long r2 = r4.r
            long r0 = r0 + r2
            r2 = 0
            int r5 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r5 <= 0) goto L5d
            com.tencent.bugly.proguard.v r5 = r4.i
            boolean r7 = r4.s
            long r0 = r5.a(r7)
            long r2 = r4.q
            long r0 = r0 + r2
            long r2 = r4.r
            long r0 = r0 + r2
            com.tencent.bugly.proguard.v r5 = r4.i
            boolean r7 = r4.s
            r5.a(r0, r7)
        L5d:
            com.tencent.bugly.proguard.u r5 = r4.k
            if (r5 == 0) goto L64
            r5.a(r6, r8)
        L64:
            com.tencent.bugly.proguard.u r5 = r4.l
            if (r5 == 0) goto L6b
            r5.a(r6, r8)
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.w.a(com.tencent.bugly.proguard.ao, boolean, int, java.lang.String):void");
    }

    public final void b(long j) {
        this.r += j;
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x01e0 A[LOOP:0: B:37:0x00d2->B:69:0x01e0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01e4 A[SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.w.run():void");
    }

    public w(Context context, int i, int i2, byte[] bArr, String str, String str2, u uVar, int i3, int i4, boolean z, Map<String, String> map) {
        this.f12109a = 2;
        this.b = 30000;
        this.m = null;
        this.p = 0;
        this.q = 0L;
        this.r = 0L;
        this.s = false;
        this.c = context;
        this.f = com.tencent.bugly.crashreport.common.info.a.a(context);
        this.e = bArr;
        this.g = com.tencent.bugly.crashreport.common.strategy.a.a();
        this.h = s.a(context);
        this.i = v.a();
        this.j = i;
        this.m = str;
        this.n = str2;
        this.k = uVar;
        this.l = null;
        this.d = i2;
        if (i3 > 0) {
            this.f12109a = i3;
        }
        if (i4 > 0) {
            this.b = i4;
        }
        this.s = z;
        this.o = map;
    }

    public static boolean a(ao aoVar, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.common.strategy.a aVar2) {
        if (aoVar == null) {
            y.d("resp == null!", new Object[0]);
            return false;
        }
        byte b = aoVar.f12082a;
        if (b != 0) {
            y.e("resp result error %d", Byte.valueOf(b));
            return false;
        }
        try {
            if (!ab.a(aoVar.e) && !com.tencent.bugly.crashreport.common.info.a.b().m().equals(aoVar.e)) {
                o.a().a(com.tencent.bugly.crashreport.common.strategy.a.f12034a, "device", aoVar.e.getBytes("UTF-8"), (n) null, true);
                aVar.f(aoVar.e);
            }
        } catch (Throwable th) {
            y.a(th);
        }
        aVar.h = aoVar.d;
        int i = aoVar.b;
        if (i == 510) {
            byte[] bArr = aoVar.c;
            if (bArr == null) {
                y.e("[Upload] Strategy data is null. Response cmd: %d", Integer.valueOf(i));
                return false;
            }
            aq aqVar = (aq) a.a(bArr, aq.class);
            if (aqVar == null) {
                y.e("[Upload] Failed to decode strategy from server. Response cmd: %d", Integer.valueOf(aoVar.b));
                return false;
            }
            aVar2.a(aqVar);
        }
        return true;
    }

    private Pair<Boolean, Boolean> a(byte[] bArr, Map<String, String> map) {
        if (bArr == null) {
            y.e("[Upload] Failed to upload(%d): %s", 1, "Failed to upload for no response!");
            return new Pair<>(Boolean.FALSE, Boolean.TRUE);
        }
        y.c("[Upload] Received %d bytes", Integer.valueOf(bArr.length));
        if (bArr.length == 0) {
            a(null, false, 1, "response data from server is empty");
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    y.c("[Upload] HTTP headers from server: key = %s, value = %s", entry.getKey(), entry.getValue());
                }
            }
            Boolean bool = Boolean.FALSE;
            return new Pair<>(bool, bool);
        }
        Boolean bool2 = Boolean.TRUE;
        return new Pair<>(bool2, bool2);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.util.Pair<java.lang.Boolean, java.lang.Boolean> a(java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.w.a(java.util.Map):android.util.Pair");
    }

    public final void a(long j) {
        this.p++;
        this.q += j;
    }

    public static String a(String str) {
        if (ab.a(str)) {
            return str;
        }
        try {
            return String.format("%s?aid=%s", str, UUID.randomUUID().toString());
        } catch (Throwable th) {
            y.a(th);
            return str;
        }
    }
}
