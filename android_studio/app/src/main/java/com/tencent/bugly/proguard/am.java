package com.tencent.bugly.proguard;

import java.util.ArrayList;
import java.util.Collection;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class am extends j implements Cloneable {
    public static ArrayList<al> b;

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<al> f12080a = null;

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a((Collection) this.f12080a, 0);
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        if (b == null) {
            b = new ArrayList<>();
            b.add(new al());
        }
        this.f12080a = (ArrayList) hVar.a((h) b, 0, true);
    }
}
