package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

/* compiled from: Segment.java */
/* loaded from: classes8.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f10697a;
    public int b;
    public int c;
    public boolean d;
    public boolean e;
    public o f;
    public o g;

    public o() {
        this.f10697a = new byte[8192];
        this.e = true;
        this.d = false;
    }

    public final o a(o oVar) {
        oVar.g = this;
        oVar.f = this.f;
        this.f.g = oVar;
        this.f = oVar;
        return oVar;
    }

    public final o b() {
        o oVar = this.f;
        if (oVar == this) {
            oVar = null;
        }
        o oVar2 = this.g;
        if (oVar2 != null) {
            oVar2.f = this.f;
        }
        o oVar3 = this.f;
        if (oVar3 != null) {
            oVar3.g = this.g;
        }
        this.f = null;
        this.g = null;
        return oVar;
    }

    public final o c() {
        this.d = true;
        return new o(this.f10697a, this.b, this.c, true, false);
    }

    public o(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.f10697a = bArr;
        this.b = i;
        this.c = i2;
        this.d = z;
        this.e = z2;
    }

    public final o a(int i) {
        o a2;
        if (i > 0 && i <= this.c - this.b) {
            if (i >= 1024) {
                a2 = c();
            } else {
                a2 = p.a();
                System.arraycopy(this.f10697a, this.b, a2.f10697a, 0, i);
            }
            a2.c = a2.b + i;
            this.b += i;
            this.g.a(a2);
            return a2;
        }
        throw new IllegalArgumentException();
    }

    public final void a() {
        o oVar = this.g;
        if (oVar != this) {
            if (oVar.e) {
                int i = this.c - this.b;
                if (i > (8192 - oVar.c) + (oVar.d ? 0 : oVar.b)) {
                    return;
                }
                a(this.g, i);
                b();
                p.a(this);
                return;
            }
            return;
        }
        throw new IllegalStateException();
    }

    public final void a(o oVar, int i) {
        if (oVar.e) {
            int i2 = oVar.c;
            int i3 = i2 + i;
            if (i3 > 8192) {
                if (!oVar.d) {
                    int i4 = oVar.b;
                    if (i3 - i4 <= 8192) {
                        byte[] bArr = oVar.f10697a;
                        System.arraycopy(bArr, i4, bArr, 0, i2 - i4);
                        oVar.c -= oVar.b;
                        oVar.b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f10697a, this.b, oVar.f10697a, oVar.c, i);
            oVar.c += i;
            this.b += i;
            return;
        }
        throw new IllegalArgumentException();
    }
}
