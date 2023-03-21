package com.umeng.analytics.pro;

import com.apk.Cgoto;
/* compiled from: ShortStack.java */
/* loaded from: classes7.dex */
public class ar {

    /* renamed from: a  reason: collision with root package name */
    public short[] f12147a;
    public int b = -1;

    public ar(int i) {
        this.f12147a = new short[i];
    }

    private void d() {
        short[] sArr = this.f12147a;
        short[] sArr2 = new short[sArr.length * 2];
        System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
        this.f12147a = sArr2;
    }

    public short a() {
        short[] sArr = this.f12147a;
        int i = this.b;
        this.b = i - 1;
        return sArr[i];
    }

    public short b() {
        return this.f12147a[this.b];
    }

    public void c() {
        this.b = -1;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("<ShortStack vector:[");
        for (int i = 0; i < this.f12147a.length; i++) {
            if (i != 0) {
                m1016super.append(" ");
            }
            if (i == this.b) {
                m1016super.append(">>");
            }
            m1016super.append((int) this.f12147a[i]);
            if (i == this.b) {
                m1016super.append("<<");
            }
        }
        m1016super.append("]>");
        return m1016super.toString();
    }

    public void a(short s) {
        if (this.f12147a.length == this.b + 1) {
            d();
        }
        short[] sArr = this.f12147a;
        int i = this.b + 1;
        this.b = i;
        sArr[i] = s;
    }
}
