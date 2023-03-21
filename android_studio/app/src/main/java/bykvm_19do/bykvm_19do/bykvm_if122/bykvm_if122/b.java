package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.a;
import bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.n;
import java.util.concurrent.TimeUnit;

/* compiled from: TTNetClient.java */
/* loaded from: classes8.dex */
public class b {
    @SuppressLint({"StaticFieldLeak"})
    public static volatile b b;

    /* renamed from: a  reason: collision with root package name */
    public final bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.a f10964a;

    public b(Context context) {
        if (context == null) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d();
        } else {
            context.getApplicationContext();
        }
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.a a2 = new a.b().a(FragmentStateAdapter.GRACE_WINDOW_TIME_MS, TimeUnit.MILLISECONDS).b(FragmentStateAdapter.GRACE_WINDOW_TIME_MS, TimeUnit.MILLISECONDS).c(FragmentStateAdapter.GRACE_WINDOW_TIME_MS, TimeUnit.MILLISECONDS).a(true).a();
        this.f10964a = a2;
        n g = a2.b().g();
        if (g != null) {
            g.a(16);
        }
    }

    public static b b() {
        if (b == null) {
            synchronized (b.class) {
                if (b == null) {
                    b = new b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d());
                }
            }
        }
        return b;
    }

    public bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.a a() {
        return this.f10964a;
    }
}
