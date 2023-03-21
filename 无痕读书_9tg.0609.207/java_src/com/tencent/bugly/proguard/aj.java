package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class aj extends j implements Cloneable {
    public static ArrayList<String> c;

    /* renamed from: a  reason: collision with root package name */
    public String f12077a = "";
    public ArrayList<String> b = null;

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f12077a, 0);
        ArrayList<String> arrayList = this.b;
        if (arrayList != null) {
            iVar.a((Collection) arrayList, 1);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f12077a = hVar.b(0, true);
        if (c == null) {
            ArrayList<String> arrayList = new ArrayList<>();
            c = arrayList;
            arrayList.add("");
        }
        this.b = (ArrayList) hVar.a((h) c, 1, false);
    }
}
