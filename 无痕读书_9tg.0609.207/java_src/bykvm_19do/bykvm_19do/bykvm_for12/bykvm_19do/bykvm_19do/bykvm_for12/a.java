package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12;

import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.b;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_for12.g;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_for12.h;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.c;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108.f;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.v;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
/* compiled from: NetClient.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public v f10661a;
    public g b;
    public int c;

    /* compiled from: NetClient.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public int f10662a;
        public int b;
        public int c;
        public boolean d = true;

        public b() {
            new ArrayList();
            this.f10662a = 10000;
            this.b = 10000;
            this.c = 10000;
        }

        public b a(long j, TimeUnit timeUnit) {
            this.f10662a = a("timeout", j, timeUnit);
            return this;
        }

        public b b(long j, TimeUnit timeUnit) {
            this.b = a("timeout", j, timeUnit);
            return this;
        }

        public b c(long j, TimeUnit timeUnit) {
            this.c = a("timeout", j, timeUnit);
            return this;
        }

        public b a(boolean z) {
            this.d = z;
            return this;
        }

        public static int a(String str, long j, TimeUnit timeUnit) {
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (i >= 0) {
                if (timeUnit != null) {
                    long millis = timeUnit.toMillis(j);
                    if (millis <= 2147483647L) {
                        if (millis != 0 || i <= 0) {
                            return (int) millis;
                        }
                        throw new IllegalArgumentException(Cgoto.m989case(str, " too small."));
                    }
                    throw new IllegalArgumentException(Cgoto.m989case(str, " too large."));
                }
                throw new NullPointerException("unit == null");
            }
            throw new IllegalArgumentException(Cgoto.m989case(str, " < 0"));
        }

        public a a() {
            return new a(this);
        }
    }

    public static void d() {
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.b.a(b.EnumC0019b.DEBUG);
    }

    public void a(Context context, boolean z, boolean z2, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_for12.b bVar) {
        if (context == null) {
            throw new IllegalArgumentException("tryInitAdTTNet context is null");
        }
        if (bVar != null) {
            int a2 = bVar.a();
            this.c = a2;
            g gVar = this.b;
            if (gVar != null) {
                gVar.a(a2);
            }
            h.a().a(this.c).a(z2);
            h.a().a(this.c).a(bVar);
            h.a().a(this.c).a(context, f.b(context));
            if (f.c(context) || (!f.b(context) && z)) {
                h.a().a(this.c, context).d();
                h.a().a(this.c, context).f();
            }
            if (f.b(context)) {
                h.a().a(this.c, context).d();
                h.a().a(this.c, context).f();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("tryInitAdTTNet ITTAdNetDepend is null");
    }

    public v b() {
        return this.f10661a;
    }

    public c c() {
        return new c(this.f10661a);
    }

    public a(b bVar) {
        v.b b2 = new v.b().a(bVar.f10662a, TimeUnit.MILLISECONDS).c(bVar.c, TimeUnit.MILLISECONDS).b(bVar.b, TimeUnit.MILLISECONDS);
        if (bVar.d) {
            g gVar = new g();
            this.b = gVar;
            b2.a(gVar);
        }
        this.f10661a = b2.a();
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.a a() {
        return new bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.a(this.f10661a);
    }
}
