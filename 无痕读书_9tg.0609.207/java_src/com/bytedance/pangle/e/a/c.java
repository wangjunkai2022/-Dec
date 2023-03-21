package com.bytedance.pangle.e.a;
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public int[] f11318a = new int[32];
    public int b;
    public int c;

    public final void a() {
        b();
        int i = this.b;
        int[] iArr = this.f11318a;
        iArr[i] = 0;
        iArr[i + 1] = 0;
        this.b = i + 2;
        this.c++;
    }

    public final void b() {
        int[] iArr = this.f11318a;
        int length = iArr.length;
        int i = this.b;
        int i2 = length - i;
        if (i2 <= 2) {
            int[] iArr2 = new int[(iArr.length + i2) * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f11318a = iArr2;
        }
    }
}
