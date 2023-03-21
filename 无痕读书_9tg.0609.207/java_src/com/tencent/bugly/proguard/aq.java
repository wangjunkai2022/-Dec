package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class aq extends j implements Cloneable {
    public static Map<String, String> n;
    public static /* synthetic */ boolean o = !aq.class.desiredAssertionStatus();
    public static ap m = new ap();

    /* renamed from: a  reason: collision with root package name */
    public boolean f12084a = true;
    public boolean b = true;
    public boolean c = true;
    public String d = "";
    public String e = "";
    public ap f = null;
    public Map<String, String> g = null;
    public long h = 0;
    public String j = "";
    public String k = "";
    public int l = 0;
    public int i = 0;

    static {
        HashMap hashMap = new HashMap();
        n = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f12084a, 0);
        iVar.a(this.b, 1);
        iVar.a(this.c, 2);
        String str = this.d;
        if (str != null) {
            iVar.a(str, 3);
        }
        String str2 = this.e;
        if (str2 != null) {
            iVar.a(str2, 4);
        }
        ap apVar = this.f;
        if (apVar != null) {
            iVar.a((j) apVar, 5);
        }
        Map<String, String> map = this.g;
        if (map != null) {
            iVar.a((Map) map, 6);
        }
        iVar.a(this.h, 7);
        String str3 = this.j;
        if (str3 != null) {
            iVar.a(str3, 8);
        }
        String str4 = this.k;
        if (str4 != null) {
            iVar.a(str4, 9);
        }
        iVar.a(this.l, 10);
        iVar.a(this.i, 11);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (o) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        aq aqVar = (aq) obj;
        return k.a(this.f12084a, aqVar.f12084a) && k.a(this.b, aqVar.b) && k.a(this.c, aqVar.c) && k.a(this.d, aqVar.d) && k.a(this.e, aqVar.e) && k.a(this.f, aqVar.f) && k.a(this.g, aqVar.g) && k.a(this.h, aqVar.h) && k.a(this.j, aqVar.j) && k.a(this.k, aqVar.k) && k.a(this.l, aqVar.l) && k.a(this.i, aqVar.i);
    }

    public final int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f12084a = hVar.a(0, true);
        this.b = hVar.a(1, true);
        this.c = hVar.a(2, true);
        this.d = hVar.b(3, false);
        this.e = hVar.b(4, false);
        this.f = (ap) hVar.a((j) m, 5, false);
        this.g = (Map) hVar.a((h) n, 6, false);
        this.h = hVar.a(this.h, 7, false);
        this.j = hVar.b(8, false);
        this.k = hVar.b(9, false);
        this.l = hVar.a(this.l, 10, false);
        this.i = hVar.a(this.i, 11, false);
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
        z zVar = new z(sb, i);
        zVar.a(this.f12084a, "enable");
        zVar.a(this.b, "enableUserInfo");
        zVar.a(this.c, "enableQuery");
        zVar.a(this.d, "url");
        zVar.a(this.e, "expUrl");
        zVar.a((j) this.f, "security");
        zVar.a((Map) this.g, "valueMap");
        zVar.a(this.h, "strategylastUpdateTime");
        zVar.a(this.j, "httpsUrl");
        zVar.a(this.k, "httpsExpUrl");
        zVar.a(this.l, "eventRecordCount");
        zVar.a(this.i, "eventTimeInterval");
    }
}
