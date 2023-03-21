package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes8.dex */
public final class u0 {

    /* loaded from: classes8.dex */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final Runnable f10651a;
        public final String b;
        public final String c = Log.getStackTraceString(new RuntimeException("origin stacktrace"));

        public a(Runnable runnable, String str) {
            this.f10651a = runnable;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f10651a.run();
            } catch (Exception e) {
                e.printStackTrace();
                t0.b("TrackerDr", "Thread:" + this.b + " exception\n" + this.c, e);
            }
        }
    }

    public static boolean a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 128) != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void a(String str, Runnable runnable) {
        if (runnable == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = "TrackerDr";
        }
        new Thread(new a(runnable, str), str).start();
    }
}
