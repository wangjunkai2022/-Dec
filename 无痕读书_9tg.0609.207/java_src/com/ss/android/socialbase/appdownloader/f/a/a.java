package com.ss.android.socialbase.appdownloader.f.a;

import com.apk.Cgoto;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes7.dex */
public class a implements i {
    public d b;
    public f d;
    public int[] e;
    public boolean g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int[] l;
    public int m;
    public int n;
    public int o;
    public boolean c = false;
    public C0149a f = new C0149a();

    public a() {
        g();
    }

    private final void g() {
        this.h = -1;
        this.i = -1;
        this.j = -1;
        this.k = -1;
        this.l = null;
        this.m = -1;
        this.n = -1;
        this.o = -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0172, code lost:
        throw new java.io.IOException(com.apk.Cgoto.m1005instanceof("Invalid chunk type (", r5, ")."));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void h() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.f.a.a.h():void");
    }

    public void a(InputStream inputStream) {
        a();
        if (inputStream != null) {
            this.b = new d(inputStream, false);
        }
    }

    public int b() throws h, IOException {
        if (this.b != null) {
            try {
                h();
                return this.h;
            } catch (IOException e) {
                a();
                throw e;
            }
        }
        throw new h("Parser is not opened.", this, null);
    }

    @Override // com.ss.android.socialbase.appdownloader.f.a.g
    public int c() {
        return this.i;
    }

    @Override // com.ss.android.socialbase.appdownloader.f.a.g
    public String d() {
        StringBuilder m1016super = Cgoto.m1016super("XML line #");
        m1016super.append(c());
        return m1016super.toString();
    }

    public int e() {
        if (this.h != 2) {
            return -1;
        }
        return this.l.length / 5;
    }

    @Override // com.ss.android.socialbase.appdownloader.f.a.g
    public int f() {
        return -1;
    }

    /* renamed from: com.ss.android.socialbase.appdownloader.f.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0149a {

        /* renamed from: a  reason: collision with root package name */
        public int[] f11774a = new int[32];
        public int b;
        public int c;

        public final void a() {
            this.b = 0;
            this.c = 0;
        }

        public final int b() {
            int i = this.b;
            if (i == 0) {
                return 0;
            }
            return this.f11774a[i - 1];
        }

        public final boolean c() {
            int i;
            int[] iArr;
            int i2;
            int i3 = this.b;
            if (i3 == 0 || (i2 = (iArr = this.f11774a)[i3 - 1]) == 0) {
                return false;
            }
            int i4 = i2 - 1;
            int i5 = i - 2;
            iArr[i5] = i4;
            iArr[i5 - ((i4 * 2) + 1)] = i4;
            this.b = i3 - 2;
            return true;
        }

        public final int d() {
            return this.c;
        }

        public final void e() {
            a(2);
            int i = this.b;
            int[] iArr = this.f11774a;
            iArr[i] = 0;
            iArr[i + 1] = 0;
            this.b = i + 2;
            this.c++;
        }

        public final void f() {
            int i = this.b;
            if (i != 0) {
                int i2 = i - 1;
                int i3 = this.f11774a[i2] * 2;
                if ((i2 - 1) - i3 != 0) {
                    this.b = i - (i3 + 2);
                    this.c--;
                }
            }
        }

        public final void a(int i, int i2) {
            if (this.c == 0) {
                e();
            }
            a(2);
            int i3 = this.b;
            int i4 = i3 - 1;
            int[] iArr = this.f11774a;
            int i5 = iArr[i4];
            int i6 = i5 + 1;
            iArr[(i4 - 1) - (i5 * 2)] = i6;
            iArr[i4] = i;
            iArr[i4 + 1] = i2;
            iArr[i4 + 2] = i6;
            this.b = i3 + 2;
        }

        private void a(int i) {
            int[] iArr = this.f11774a;
            int length = iArr.length;
            int i2 = this.b;
            int i3 = length - i2;
            if (i3 <= i) {
                int[] iArr2 = new int[(iArr.length + i3) * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                this.f11774a = iArr2;
            }
        }
    }

    private final int e(int i) {
        if (this.h == 2) {
            int i2 = i * 5;
            if (i2 < this.l.length) {
                return i2;
            }
            throw new IndexOutOfBoundsException(Cgoto.m1005instanceof("Invalid attribute index (", i, ")."));
        }
        throw new IndexOutOfBoundsException("Current event is not START_TAG.");
    }

    public int c(int i) {
        return this.l[e(i) + 4];
    }

    public String d(int i) {
        int e = e(i);
        int[] iArr = this.l;
        if (iArr[e + 3] == 3) {
            return this.d.a(iArr[e + 2]);
        }
        int i2 = iArr[e + 4];
        return "";
    }

    public void a() {
        if (this.c) {
            this.c = false;
            this.b.a();
            this.b = null;
            this.d = null;
            this.e = null;
            this.f.a();
            g();
        }
    }

    public int b(int i) {
        return this.l[e(i) + 3];
    }

    public String a(int i) {
        int i2 = this.l[e(i) + 1];
        return i2 == -1 ? "" : this.d.a(i2);
    }
}
