package com.ss.android.socialbase.downloader.i;
/* loaded from: classes7.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public a f11901a;
    public a b;
    public int c;
    public int d = 10;

    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public long f11902a;
        public long b;
        public a c;
        public a d;

        public a() {
        }
    }

    public boolean a(long j, long j2) {
        synchronized (this) {
            a aVar = this.f11901a;
            if (aVar != null) {
                if (j >= aVar.f11902a && j2 >= aVar.b) {
                    a aVar2 = aVar.c;
                    if (aVar2 != null && j2 - aVar2.b < 1000) {
                        aVar.f11902a = j;
                        aVar.b = j2;
                        return true;
                    }
                }
                return false;
            }
            a a2 = a();
            a2.f11902a = j;
            a2.b = j2;
            if (aVar != null) {
                a2.c = aVar;
                aVar.d = a2;
            }
            this.f11901a = a2;
            return true;
        }
    }

    public long b(long j, long j2) {
        synchronized (this) {
            a aVar = this.f11901a;
            if (aVar == null) {
                return -1L;
            }
            a a2 = a(j);
            if (a2 == null) {
                return -1L;
            }
            long j3 = aVar.f11902a - a2.f11902a;
            long j4 = j2 - a2.b;
            if (j3 < 0 || j4 <= 0) {
                return -1L;
            }
            return j3 / j4;
        }
    }

    private a a() {
        a aVar;
        if (this.c >= this.d && (aVar = this.b) != null) {
            a aVar2 = aVar.d;
            aVar.d = null;
            this.b = aVar2;
            if (aVar2 != null) {
                aVar2.c = null;
            }
            return aVar;
        }
        this.c++;
        return new a();
    }

    private a a(long j) {
        a aVar = this.f11901a;
        a aVar2 = null;
        while (aVar != null && aVar.b > j) {
            aVar2 = aVar;
            aVar = aVar.c;
        }
        return (aVar == null || aVar2 == null || aVar == aVar2 || j - aVar.b >= aVar2.b - j) ? aVar2 : aVar;
    }
}
