package com.tencent.bugly.proguard;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class ap extends j implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public String f12083a = "";
    public String b = "";

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f12083a, 0);
        iVar.a(this.b, 1);
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f12083a = hVar.b(0, true);
        this.b = hVar.b(1, true);
    }
}
