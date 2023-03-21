package com.bytedance.pangle.res.a;

import java.io.IOException;
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public g f11365a;
    public final h g;
    public final byte[] h;
    public int[] j;
    public boolean l;
    public int m;
    public int[] n;
    public int o;
    public boolean i = false;
    public final a k = new a();
    public int b = 0;
    public int c = 1;
    public int d = 2;
    public int e = 3;
    public int f = 4;

    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int[] f11366a = new int[32];
        public int b;
        public int c;

        public final void a() {
            b();
            int i = this.b;
            int[] iArr = this.f11366a;
            iArr[i] = 0;
            iArr[i + 1] = 0;
            this.b = i + 2;
            this.c++;
        }

        public final void b() {
            int[] iArr = this.f11366a;
            int length = iArr.length;
            int i = this.b;
            int i2 = length - i;
            if (i2 > 2) {
                return;
            }
            int[] iArr2 = new int[(iArr.length + i2) * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            this.f11366a = iArr2;
        }
    }

    public b(byte[] bArr, h hVar) {
        this.g = hVar;
        this.h = bArr;
        c();
    }

    private void c() {
        this.m = -1;
        this.n = null;
        this.o = -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f6, code lost:
        throw new java.io.IOException("Invalid resource ids size (" + r6 + ").");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d() {
        /*
            Method dump skipped, instructions count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.res.a.b.d():void");
    }

    public final void a() {
        if (this.i) {
            this.i = false;
            this.f11365a = null;
            this.j = null;
            a aVar = this.k;
            aVar.b = 0;
            aVar.c = 0;
            c();
        }
    }

    public final int b() {
        if (this.f11365a != null) {
            try {
                d();
                return this.m;
            } catch (IOException e) {
                a();
                throw e;
            }
        }
        throw new RuntimeException("Parser is not opened.");
    }
}
