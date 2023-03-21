package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_new1;

import java.util.Arrays;
/* compiled from: Settings.java */
/* loaded from: classes8.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    public int f10756a;
    public final int[] b = new int[10];

    public void a() {
        this.f10756a = 0;
        Arrays.fill(this.b, 0);
    }

    public int b() {
        if ((this.f10756a & 2) != 0) {
            return this.b[1];
        }
        return -1;
    }

    public int c(int i) {
        return (this.f10756a & 32) != 0 ? this.b[5] : i;
    }

    public boolean d(int i) {
        return ((1 << i) & this.f10756a) != 0;
    }

    public int b(int i) {
        return (this.f10756a & 16) != 0 ? this.b[4] : i;
    }

    public int c() {
        if ((this.f10756a & 128) != 0) {
            return this.b[7];
        }
        return 65535;
    }

    public int d() {
        return Integer.bitCount(this.f10756a);
    }

    public n a(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.b;
            if (i < iArr.length) {
                this.f10756a = (1 << i) | this.f10756a;
                iArr[i] = i2;
            }
        }
        return this;
    }

    public int a(int i) {
        return this.b[i];
    }

    public void a(n nVar) {
        for (int i = 0; i < 10; i++) {
            if (nVar.d(i)) {
                a(i, nVar.a(i));
            }
        }
    }
}
