package com.tencent.bugly.proguard;

import androidx.core.app.NotificationCompat;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class f extends j {
    public byte[] e;
    public Map<String, String> i;
    public Map<String, String> j;
    public static /* synthetic */ boolean m = !f.class.desiredAssertionStatus();
    public static byte[] k = null;
    public static Map<String, String> l = null;

    /* renamed from: a  reason: collision with root package name */
    public short f12088a = 0;
    public byte f = 0;
    public int g = 0;
    public int b = 0;
    public String c = null;
    public String d = null;
    public int h = 0;

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f12088a, 1);
        iVar.a(this.f, 2);
        iVar.a(this.g, 3);
        iVar.a(this.b, 4);
        iVar.a(this.c, 5);
        iVar.a(this.d, 6);
        iVar.a(this.e, 7);
        iVar.a(this.h, 8);
        iVar.a((Map) this.i, 9);
        iVar.a((Map) this.j, 10);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (m) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        f fVar = (f) obj;
        return k.a(1, (int) fVar.f12088a) && k.a(1, (int) fVar.f) && k.a(1, fVar.g) && k.a(1, fVar.b) && k.a((Object) 1, (Object) fVar.c) && k.a((Object) 1, (Object) fVar.d) && k.a((Object) 1, (Object) fVar.e) && k.a(1, fVar.h) && k.a((Object) 1, (Object) fVar.i) && k.a((Object) 1, (Object) fVar.j);
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        try {
            this.f12088a = hVar.a(this.f12088a, 1, true);
            this.f = hVar.a(this.f, 2, true);
            this.g = hVar.a(this.g, 3, true);
            this.b = hVar.a(this.b, 4, true);
            this.c = hVar.b(5, true);
            this.d = hVar.b(6, true);
            if (k == null) {
                k = new byte[]{0};
            }
            this.e = hVar.c(7, true);
            this.h = hVar.a(this.h, 8, true);
            if (l == null) {
                HashMap hashMap = new HashMap();
                l = hashMap;
                hashMap.put("", "");
            }
            this.i = (Map) hVar.a((h) l, 9, true);
            if (l == null) {
                HashMap hashMap2 = new HashMap();
                l = hashMap2;
                hashMap2.put("", "");
            }
            this.j = (Map) hVar.a((h) l, 10, true);
        } catch (Exception e) {
            e.printStackTrace();
            PrintStream printStream = System.out;
            printStream.println("RequestPacket decode error " + e.a(this.e));
            throw new RuntimeException(e);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
        z zVar = new z(sb, i);
        zVar.a(this.f12088a, "iVersion");
        zVar.a(this.f, "cPacketType");
        zVar.a(this.g, "iMessageType");
        zVar.a(this.b, "iRequestId");
        zVar.a(this.c, "sServantName");
        zVar.a(this.d, "sFuncName");
        zVar.a(this.e, "sBuffer");
        zVar.a(this.h, "iTimeout");
        zVar.a((Map) this.i, "context");
        zVar.a((Map) this.j, NotificationCompat.CATEGORY_STATUS);
    }
}
