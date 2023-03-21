package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class ar extends j {
    public static Map<String, String> i;

    /* renamed from: a  reason: collision with root package name */
    public long f12085a = 0;
    public byte b = 0;
    public String c = "";
    public String d = "";
    public String e = "";
    public Map<String, String> f = null;
    public String h = "";
    public boolean g = true;

    static {
        HashMap hashMap = new HashMap();
        i = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f12085a, 0);
        iVar.a(this.b, 1);
        String str = this.c;
        if (str != null) {
            iVar.a(str, 2);
        }
        String str2 = this.d;
        if (str2 != null) {
            iVar.a(str2, 3);
        }
        String str3 = this.e;
        if (str3 != null) {
            iVar.a(str3, 4);
        }
        Map<String, String> map = this.f;
        if (map != null) {
            iVar.a((Map) map, 5);
        }
        String str4 = this.h;
        if (str4 != null) {
            iVar.a(str4, 6);
        }
        iVar.a(this.g, 7);
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f12085a = hVar.a(this.f12085a, 0, true);
        this.b = hVar.a(this.b, 1, true);
        this.c = hVar.b(2, false);
        this.d = hVar.b(3, false);
        this.e = hVar.b(4, false);
        this.f = (Map) hVar.a((h) i, 5, false);
        this.h = hVar.b(6, false);
        this.g = hVar.a(7, false);
    }
}
