package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.f;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.y;
import com.bytedance.msdk.adapter.util.Logger;
import java.lang.reflect.Method;

/* compiled from: InternalContainer.java */
/* loaded from: classes8.dex */
public class a {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a  reason: collision with root package name */
    public static volatile Context f10799a;
    public static volatile bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c b;
    public static volatile bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122.a<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> c;
    public static volatile bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> d;
    public static volatile bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> e;

    /* compiled from: InternalContainer.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static class C0030a implements f.a {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f10800a;

        public C0030a(Context context) {
            this.f10800a = context;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.f.a
        public boolean a() {
            Context context = this.f10800a;
            if (context == null) {
                context = a.d();
            }
            return y.a(context);
        }
    }

    /* compiled from: InternalContainer.java */
    /* loaded from: classes8.dex */
    public static class b {
        @SuppressLint({"StaticFieldLeak"})

        /* renamed from: a  reason: collision with root package name */
        public static volatile Application f10801a;

        static {
            try {
                Object b = b();
                f10801a = (Application) b.getClass().getMethod("getApplication", new Class[0]).invoke(b, new Object[0]);
                Logger.e("MyApplication", "application get success");
            } catch (Throwable th) {
                Logger.e("MyApplication", "application get failed", th);
            }
        }

        public static Application a() {
            return f10801a;
        }

        public static Object b() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
                method.setAccessible(true);
                return method.invoke(null, new Object[0]);
            } catch (Throwable th) {
                Logger.e("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }
    }

    public static bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> a() {
        if (d == null) {
            synchronized (a.class) {
                if (d == null) {
                    d = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b<>("V1", new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.b(f10799a), e(), b(), a(f10799a));
                }
            }
        }
        return d;
    }

    public static synchronized void b(Context context) {
        synchronized (a.class) {
            if (f10799a == null) {
                synchronized (a.class) {
                    if (b.a() != null) {
                        try {
                            f10799a = b.a();
                            if (f10799a != null) {
                            }
                        } catch (Throwable unused) {
                        }
                    }
                    if (context != null) {
                        f10799a = context.getApplicationContext();
                    }
                }
            }
        }
    }

    public static bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> c() {
        if (e == null) {
            synchronized (a.class) {
                if (e == null) {
                    e = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.b<>("V3", new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.b(f10799a), e(), b(), a(f10799a));
                }
            }
        }
        return e;
    }

    public static Context d() {
        if (f10799a == null) {
            b(null);
        }
        return f10799a;
    }

    public static bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122.a<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> e() {
        if (c == null) {
            synchronized (a.class) {
                if (c == null) {
                    c = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_if122.b(f10799a);
                }
            }
        }
        return c;
    }

    public static bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c f() {
        if (b == null) {
            synchronized (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c.class) {
                if (b == null) {
                    b = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c();
                }
            }
        }
        return b;
    }

    public static f.b b() {
        return f.b.b();
    }

    public static f.a a(Context context) {
        return new C0030a(context);
    }
}
