package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class ao extends j {
    public static byte[] i;
    public static Map<String, String> j;

    /* renamed from: a  reason: collision with root package name */
    public byte f12082a = 0;
    public int b = 0;
    public byte[] c = null;
    public String f = "";
    public long d = 0;
    public String g = "";
    public String e = "";
    public Map<String, String> h = null;

    static {
        i = r0;
        byte[] bArr = {0};
        HashMap hashMap = new HashMap();
        j = hashMap;
        hashMap.put("", "");
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f12082a, 0);
        iVar.a(this.b, 1);
        byte[] bArr = this.c;
        if (bArr != null) {
            iVar.a(bArr, 2);
        }
        String str = this.f;
        if (str != null) {
            iVar.a(str, 3);
        }
        iVar.a(this.d, 4);
        String str2 = this.g;
        if (str2 != null) {
            iVar.a(str2, 5);
        }
        String str3 = this.e;
        if (str3 != null) {
            iVar.a(str3, 6);
        }
        Map<String, String> map = this.h;
        if (map != null) {
            iVar.a((Map) map, 7);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f12082a = hVar.a(this.f12082a, 0, true);
        this.b = hVar.a(this.b, 1, true);
        this.c = hVar.c(2, false);
        this.f = hVar.b(3, false);
        this.d = hVar.a(this.d, 4, false);
        this.g = hVar.b(5, false);
        this.e = hVar.b(6, false);
        this.h = (Map) hVar.a((h) j, 7, false);
    }
}
