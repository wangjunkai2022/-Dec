package com.tencent.bugly.proguard;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class ak extends j implements Cloneable {
    public static byte[] d;

    /* renamed from: a  reason: collision with root package name */
    public byte f12078a;
    public String b;
    public byte[] c;

    public ak() {
        this.f12078a = (byte) 0;
        this.b = "";
        this.c = null;
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(i iVar) {
        iVar.a(this.f12078a, 0);
        iVar.a(this.b, 1);
        byte[] bArr = this.c;
        if (bArr != null) {
            iVar.a(bArr, 2);
        }
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(StringBuilder sb, int i) {
    }

    public ak(byte b, String str, byte[] bArr) {
        this.f12078a = (byte) 0;
        this.b = "";
        this.c = null;
        this.f12078a = b;
        this.b = str;
        this.c = bArr;
    }

    @Override // com.tencent.bugly.proguard.j
    public final void a(h hVar) {
        this.f12078a = hVar.a(this.f12078a, 0, true);
        this.b = hVar.b(1, true);
        if (d == null) {
            d = r0;
            byte[] bArr = {0};
        }
        this.c = hVar.c(2, false);
    }
}
