package com.tencent.bugly.proguard;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class ai extends j implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    public String f12076a = "";
    public String d = "";
    public String b = "";
    public String e = "";
    public String c = "";

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f12076a, 0);
        String str = this.d;
        if (str != null) {
            iVar.a(str, 1);
        }
        String str2 = this.b;
        if (str2 != null) {
            iVar.a(str2, 2);
        }
        String str3 = this.e;
        if (str3 != null) {
            iVar.a(str3, 3);
        }
        String str4 = this.c;
        if (str4 != null) {
            iVar.a(str4, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f12076a = hVar.b(0, true);
        this.d = hVar.b(1, false);
        this.b = hVar.b(2, false);
        this.e = hVar.b(3, false);
        this.c = hVar.b(4, false);
    }
}
