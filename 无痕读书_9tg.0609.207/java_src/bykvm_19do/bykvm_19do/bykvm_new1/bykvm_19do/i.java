package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do;

import android.annotation.SuppressLint;
import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.j;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: NpthBus.java */
/* loaded from: classes8.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static Context f11096a = null;
    public static long b = 0;
    public static String c = "default";
    public static boolean d;
    @SuppressLint({"StaticFieldLeak"})
    public static bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.a e;
    public static volatile ConcurrentHashMap<Integer, String> h;
    public static volatile int j;
    public static volatile String k;
    public static bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.b f = new bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.b();
    public static b g = new b();
    public static j i = null;

    public static void a(Context context, e eVar) {
        b = System.currentTimeMillis();
        f11096a = context;
        e = new bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.a(context, eVar);
    }

    public static Context b() {
        return f11096a;
    }

    public static String c() {
        return c;
    }

    public static b d() {
        return g;
    }

    public static bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.a e() {
        return e;
    }

    public static bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.b f() {
        return f;
    }

    public static int g() {
        return j;
    }

    public static String h() {
        return k;
    }

    public static ConcurrentHashMap<Integer, String> i() {
        return h;
    }

    public static j j() {
        if (i == null) {
            synchronized (i.class) {
                i = new j(f11096a);
            }
        }
        return i;
    }

    public static boolean k() {
        return d;
    }

    public static long a() {
        return b;
    }
}
