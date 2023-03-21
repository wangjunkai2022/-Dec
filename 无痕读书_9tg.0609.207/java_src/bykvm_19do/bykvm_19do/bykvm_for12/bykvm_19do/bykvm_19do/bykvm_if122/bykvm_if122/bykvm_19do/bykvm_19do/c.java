package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_19do;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.e;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y;
import java.util.Date;
import java.util.concurrent.TimeUnit;
/* compiled from: CacheStrategy.java */
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final y f10710a;
    public final a0 b;

    public c(y yVar, a0 a0Var) {
        this.f10710a = yVar;
        this.b = a0Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
        if (r3.j().b() == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0 r3, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y r4) {
        /*
            int r0 = r3.k()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L5a
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L5a
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L5a
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L5a
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L5a
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L5a
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L31
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L5a
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L5a
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L5a
            switch(r0) {
                case 300: goto L5a;
                case 301: goto L5a;
                case 302: goto L31;
                default: goto L30;
            }
        L30:
            goto L59
        L31:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.b(r0)
            if (r0 != 0) goto L5a
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.d r0 = r3.j()
            int r0 = r0.d()
            r1 = -1
            if (r0 != r1) goto L5a
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.d r0 = r3.j()
            boolean r0 = r0.c()
            if (r0 != 0) goto L5a
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.d r0 = r3.j()
            boolean r0 = r0.b()
            if (r0 == 0) goto L59
            goto L5a
        L59:
            return r2
        L5a:
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.d r3 = r3.j()
            boolean r3 = r3.i()
            if (r3 != 0) goto L6f
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.d r3 = r4.b()
            boolean r3 = r3.i()
            if (r3 != 0) goto L6f
            r2 = 1
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_19do.c.a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.a0, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.y):boolean");
    }

    /* compiled from: CacheStrategy.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final long f10711a;
        public final y b;
        public final a0 c;
        public Date d;
        public String e;
        public Date f;
        public String g;
        public Date h;
        public long i;
        public long j;
        public String k;
        public int l;

        public a(long j, y yVar, a0 a0Var) {
            this.l = -1;
            this.f10711a = j;
            this.b = yVar;
            this.c = a0Var;
            if (a0Var != null) {
                this.i = a0Var.t();
                this.j = a0Var.r();
                r m = a0Var.m();
                int b = m.b();
                for (int i = 0; i < b; i++) {
                    String a2 = m.a(i);
                    String b2 = m.b(i);
                    if ("Date".equalsIgnoreCase(a2)) {
                        this.d = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.d.a(b2);
                        this.e = b2;
                    } else if ("Expires".equalsIgnoreCase(a2)) {
                        this.h = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.d.a(b2);
                    } else if ("Last-Modified".equalsIgnoreCase(a2)) {
                        this.f = bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.d.a(b2);
                        this.g = b2;
                    } else if ("ETag".equalsIgnoreCase(a2)) {
                        this.k = b2;
                    } else if ("Age".equalsIgnoreCase(a2)) {
                        this.l = e.a(b2, -1);
                    }
                }
            }
        }

        private long b() {
            Date date = this.d;
            long max = date != null ? Math.max(0L, this.j - date.getTime()) : 0L;
            int i = this.l;
            if (i != -1) {
                max = Math.max(max, TimeUnit.SECONDS.toMillis(i));
            }
            long j = this.j;
            return max + (j - this.i) + (this.f10711a - j);
        }

        private long c() {
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.d j = this.c.j();
            if (j.d() != -1) {
                return TimeUnit.SECONDS.toMillis(j.d());
            }
            if (this.h != null) {
                Date date = this.d;
                long time = this.h.getTime() - (date != null ? date.getTime() : this.j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            } else if (this.f == null || this.c.s().g().k() != null) {
                return 0L;
            } else {
                Date date2 = this.d;
                long time2 = (date2 != null ? date2.getTime() : this.i) - this.f.getTime();
                if (time2 > 0) {
                    return time2 / 10;
                }
                return 0L;
            }
        }

        private c d() {
            if (this.c == null) {
                return new c(this.b, null);
            }
            if (this.b.d() && this.c.l() == null) {
                return new c(this.b, null);
            }
            if (!c.a(this.c, this.b)) {
                return new c(this.b, null);
            }
            bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.d b = this.b.b();
            if (!b.h() && !a(this.b)) {
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.d j = this.c.j();
                if (j.a()) {
                    return new c(null, this.c);
                }
                long b2 = b();
                long c = c();
                if (b.d() != -1) {
                    c = Math.min(c, TimeUnit.SECONDS.toMillis(b.d()));
                }
                long j2 = 0;
                long millis = b.f() != -1 ? TimeUnit.SECONDS.toMillis(b.f()) : 0L;
                if (!j.g() && b.e() != -1) {
                    j2 = TimeUnit.SECONDS.toMillis(b.e());
                }
                if (!j.h()) {
                    long j3 = millis + b2;
                    if (j3 < j2 + c) {
                        a0.a p = this.c.p();
                        if (j3 >= c) {
                            p.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                        }
                        if (b2 > 86400000 && e()) {
                            p.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                        }
                        return new c(null, p.a());
                    }
                }
                String str = this.k;
                String str2 = "If-Modified-Since";
                if (str != null) {
                    str2 = "If-None-Match";
                } else if (this.f != null) {
                    str = this.g;
                } else if (this.d != null) {
                    str = this.e;
                } else {
                    return new c(this.b, null);
                }
                r.a a2 = this.b.c().a();
                bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.a.f10706a.a(a2, str2, str);
                return new c(this.b.f().a(a2.a()).a(), this.c);
            }
            return new c(this.b, null);
        }

        private boolean e() {
            return this.c.j().d() == -1 && this.h == null;
        }

        public c a() {
            c d = d();
            return (d.f10710a == null || !this.b.b().j()) ? d : new c(null, null);
        }

        public static boolean a(y yVar) {
            return (yVar.a("If-Modified-Since") == null && yVar.a("If-None-Match") == null) ? false : true;
        }
    }
}
