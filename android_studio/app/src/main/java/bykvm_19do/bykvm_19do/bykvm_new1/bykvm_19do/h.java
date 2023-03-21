package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import java.util.Map;

/* compiled from: Npth.java */
/* loaded from: classes8.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f11094a;

    /* compiled from: Npth.java */
    /* loaded from: classes8.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f11095a;
        public final /* synthetic */ boolean b;

        public a(Context context, boolean z) {
            this.f11095a = context;
            this.b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.a.a().a(this.f11095a);
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b.d.a(this.f11095a);
            if (this.b) {
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_19do.f.a(this.f11095a).a();
            }
        }
    }

    public static synchronized void a(@NonNull Context context, @NonNull e eVar, boolean z, boolean z2) {
        synchronized (h.class) {
            a(context, eVar, z, false, z2);
        }
    }

    public static synchronized void a(@NonNull Context context, @NonNull e eVar, boolean z, boolean z2, boolean z3) {
        synchronized (h.class) {
            a(context, eVar, z, z, z2, z3);
        }
    }

    public static synchronized void a(@NonNull Context context, @NonNull e eVar, boolean z, boolean z2, boolean z3, boolean z4) {
        synchronized (h.class) {
            if (f11094a) {
                return;
            }
            if (context == null) {
                throw new IllegalArgumentException("context must be not null.");
            }
            if (eVar != null) {
                if (!(context instanceof Application)) {
                    context = context.getApplicationContext();
                }
                if (bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.a.f(context)) {
                    return;
                }
                i.a(context, eVar);
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.bykvm_19do.e.a(context);
                if (z || z2) {
                    bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_int108.a a2 = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_int108.a.a();
                    if (z) {
                        a2.a(new bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_int108.c(context));
                    }
                }
                f11094a = true;
                bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.h.a().post(new a(context, z4));
                return;
            }
            throw new IllegalArgumentException("params must be not null.");
        }
    }

    public static void a(g gVar) {
        i.d().a(gVar);
    }

    public static void a(Map<? extends String, ? extends String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        i.d().a(map);
    }
}
