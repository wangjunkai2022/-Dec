package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.r;
import com.apk.Cgoto;
import com.baidu.tts.loopj.HttpGet;
/* compiled from: Request.java */
/* loaded from: classes8.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    public final s f10796a;
    public final String b;
    public final r c;
    public final z d;
    public final Object e;
    public volatile d f;

    public y(a aVar) {
        this.f10796a = aVar.f10797a;
        this.b = aVar.b;
        this.c = aVar.c.a();
        this.d = aVar.d;
        Object obj = aVar.e;
        this.e = obj == null ? this : obj;
    }

    public String a(String str) {
        return this.c.a(str);
    }

    public d b() {
        d dVar = this.f;
        if (dVar != null) {
            return dVar;
        }
        d a2 = d.a(this.c);
        this.f = a2;
        return a2;
    }

    public r c() {
        return this.c;
    }

    public boolean d() {
        return this.f10796a.h();
    }

    public String e() {
        return this.b;
    }

    public a f() {
        return new a(this);
    }

    public s g() {
        return this.f10796a;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Request{method=");
        m1016super.append(this.b);
        m1016super.append(", url=");
        m1016super.append(this.f10796a);
        m1016super.append(", tag=");
        Object obj = this.e;
        if (obj == this) {
            obj = null;
        }
        m1016super.append(obj);
        m1016super.append('}');
        return m1016super.toString();
    }

    /* compiled from: Request.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public s f10797a;
        public String b;
        public r.a c;
        public z d;
        public Object e;

        public a() {
            this.b = HttpGet.METHOD_NAME;
            this.c = new r.a();
        }

        public a a(s sVar) {
            if (sVar != null) {
                this.f10797a = sVar;
                return this;
            }
            throw new NullPointerException("url == null");
        }

        public a b(String str) {
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    StringBuilder m1016super = Cgoto.m1016super("http:");
                    m1016super.append(str.substring(3));
                    str = m1016super.toString();
                } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    StringBuilder m1016super2 = Cgoto.m1016super("https:");
                    m1016super2.append(str.substring(4));
                    str = m1016super2.toString();
                }
                s d = s.d(str);
                if (d != null) {
                    return a(d);
                }
                throw new IllegalArgumentException(Cgoto.m989case("unexpected url: ", str));
            }
            throw new NullPointerException("url == null");
        }

        public a a(String str, String str2) {
            this.c.a(str, str2);
            return this;
        }

        public a(y yVar) {
            this.f10797a = yVar.f10796a;
            this.b = yVar.b;
            this.d = yVar.d;
            this.e = yVar.e;
            this.c = yVar.c.a();
        }

        public a a(String str) {
            this.c.b(str);
            return this;
        }

        public a a(r rVar) {
            this.c = rVar.a();
            return this;
        }

        public a a(d dVar) {
            String dVar2 = dVar.toString();
            return dVar2.isEmpty() ? a("Cache-Control") : b("Cache-Control", dVar2);
        }

        public a a(z zVar) {
            return a("POST", zVar);
        }

        public a b(String str, String str2) {
            this.c.c(str, str2);
            return this;
        }

        public a a(String str, z zVar) {
            if (str != null) {
                if (str.length() != 0) {
                    if (zVar != null && !bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.f.b(str)) {
                        throw new IllegalArgumentException(Cgoto.m996else("method ", str, " must not have a request body."));
                    }
                    if (zVar == null && bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.bykvm_19do.bykvm_for12.f.e(str)) {
                        throw new IllegalArgumentException(Cgoto.m996else("method ", str, " must have a request body."));
                    }
                    this.b = str;
                    this.d = zVar;
                    return this;
                }
                throw new IllegalArgumentException("method.length() == 0");
            }
            throw new NullPointerException("method == null");
        }

        public a b() {
            return a(HttpGet.METHOD_NAME, (z) null);
        }

        public a a(Object obj) {
            this.e = obj;
            return this;
        }

        public y a() {
            if (this.f10797a != null) {
                return new y(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    public z a() {
        return this.d;
    }
}
