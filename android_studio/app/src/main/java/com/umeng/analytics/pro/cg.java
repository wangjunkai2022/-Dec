package com.umeng.analytics.pro;

/* compiled from: TTransport.java */
/* loaded from: classes7.dex */
public abstract class cg {
    public abstract int a(byte[] bArr, int i, int i2) throws ch;

    public void a(int i) {
    }

    public abstract boolean a();

    public abstract void b() throws ch;

    public void b(byte[] bArr) throws ch {
        b(bArr, 0, bArr.length);
    }

    public abstract void b(byte[] bArr, int i, int i2) throws ch;

    public abstract void c();

    public int d(byte[] bArr, int i, int i2) throws ch {
        int i3 = 0;
        while (i3 < i2) {
            int a2 = a(bArr, i + i3, i2 - i3);
            if (a2 <= 0) {
                throw new ch("Cannot read. Remote side has closed. Tried to read " + i2 + " bytes, but only got " + i3 + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)");
            }
            i3 += a2;
        }
        return i3;
    }

    public void d() throws ch {
    }

    public byte[] f() {
        return null;
    }

    public int g() {
        return 0;
    }

    public int h() {
        return -1;
    }

    public boolean i() {
        return a();
    }
}
