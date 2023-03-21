package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class al extends j {
    public static ArrayList<ak> A;
    public static Map<String, String> B;
    public static Map<String, String> C;
    public static Map<String, String> v;
    public static aj w;
    public static ai x;
    public static ArrayList<ai> y;
    public static ArrayList<ai> z;

    /* renamed from: a  reason: collision with root package name */
    public String f12079a = "";
    public long b = 0;
    public String c = "";
    public String d = "";
    public String e = "";
    public String f = "";
    public String g = "";
    public Map<String, String> h = null;
    public String i = "";
    public aj j = null;
    public int k = 0;
    public String l = "";
    public String m = "";
    public ai n = null;
    public ArrayList<ai> o = null;
    public ArrayList<ai> p = null;
    public ArrayList<ak> q = null;
    public Map<String, String> r = null;
    public Map<String, String> s = null;
    public String t = "";
    public boolean u = true;

    static {
        HashMap hashMap = new HashMap();
        v = hashMap;
        hashMap.put("", "");
        w = new aj();
        x = new ai();
        y = new ArrayList<>();
        y.add(new ai());
        z = new ArrayList<>();
        z.add(new ai());
        A = new ArrayList<>();
        A.add(new ak());
        HashMap hashMap2 = new HashMap();
        B = hashMap2;
        hashMap2.put("", "");
        HashMap hashMap3 = new HashMap();
        C = hashMap3;
        hashMap3.put("", "");
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f12079a, 0);
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
        String str3 = this.f;
        if (str3 != null) {
            iVar.a(str3, 5);
        }
        String str4 = this.g;
        if (str4 != null) {
            iVar.a(str4, 6);
        }
        Map<String, String> map = this.h;
        if (map != null) {
            iVar.a((Map) map, 7);
        }
        String str5 = this.i;
        if (str5 != null) {
            iVar.a(str5, 8);
        }
        aj ajVar = this.j;
        if (ajVar != null) {
            iVar.a((j) ajVar, 9);
        }
        iVar.a(this.k, 10);
        String str6 = this.l;
        if (str6 != null) {
            iVar.a(str6, 11);
        }
        String str7 = this.m;
        if (str7 != null) {
            iVar.a(str7, 12);
        }
        ai aiVar = this.n;
        if (aiVar != null) {
            iVar.a((j) aiVar, 13);
        }
        ArrayList<ai> arrayList = this.o;
        if (arrayList != null) {
            iVar.a((Collection) arrayList, 14);
        }
        ArrayList<ai> arrayList2 = this.p;
        if (arrayList2 != null) {
            iVar.a((Collection) arrayList2, 15);
        }
        ArrayList<ak> arrayList3 = this.q;
        if (arrayList3 != null) {
            iVar.a((Collection) arrayList3, 16);
        }
        Map<String, String> map2 = this.r;
        if (map2 != null) {
            iVar.a((Map) map2, 17);
        }
        Map<String, String> map3 = this.s;
        if (map3 != null) {
            iVar.a((Map) map3, 18);
        }
        String str8 = this.t;
        if (str8 != null) {
            iVar.a(str8, 19);
        }
        iVar.a(this.u, 20);
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f12079a = hVar.b(0, true);
        this.b = hVar.a(this.b, 1, true);
        this.c = hVar.b(2, true);
        this.d = hVar.b(3, false);
        this.e = hVar.b(4, false);
        this.f = hVar.b(5, false);
        this.g = hVar.b(6, false);
        this.h = (Map) hVar.a((h) v, 7, false);
        this.i = hVar.b(8, false);
        this.j = (aj) hVar.a((j) w, 9, false);
        this.k = hVar.a(this.k, 10, false);
        this.l = hVar.b(11, false);
        this.m = hVar.b(12, false);
        this.n = (ai) hVar.a((j) x, 13, false);
        this.o = (ArrayList) hVar.a((h) y, 14, false);
        this.p = (ArrayList) hVar.a((h) z, 15, false);
        this.q = (ArrayList) hVar.a((h) A, 16, false);
        this.r = (Map) hVar.a((h) B, 17, false);
        this.s = (Map) hVar.a((h) C, 18, false);
        this.t = hVar.b(19, false);
        this.u = hVar.a(20, false);
    }
}
