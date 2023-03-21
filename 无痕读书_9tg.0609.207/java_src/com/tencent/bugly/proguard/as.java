package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class as extends j implements Cloneable {
    public static ArrayList<ar> f;
    public static Map<String, String> g;

    /* renamed from: a  reason: collision with root package name */
    public byte f12086a = 0;
    public String b = "";
    public String c = "";
    public ArrayList<ar> d = null;
    public Map<String, String> e = null;

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f12086a, 0);
        String str = this.b;
        if (str != null) {
            iVar.a(str, 1);
        }
        String str2 = this.c;
        if (str2 != null) {
            iVar.a(str2, 2);
        }
        ArrayList<ar> arrayList = this.d;
        if (arrayList != null) {
            iVar.a((Collection) arrayList, 3);
        }
        Map<String, String> map = this.e;
        if (map != null) {
            iVar.a((Map) map, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f12086a = hVar.a(this.f12086a, 0, true);
        this.b = hVar.b(1, false);
        this.c = hVar.b(2, false);
        if (f == null) {
            f = new ArrayList<>();
            f.add(new ar());
        }
        this.d = (ArrayList) hVar.a((h) f, 3, false);
        if (g == null) {
            HashMap hashMap = new HashMap();
            g = hashMap;
            hashMap.put("", "");
        }
        this.e = (Map) hVar.a((h) g, 4, false);
    }
}
