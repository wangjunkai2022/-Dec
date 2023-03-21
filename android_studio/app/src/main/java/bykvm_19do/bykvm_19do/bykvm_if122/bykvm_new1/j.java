package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* compiled from: AppStateHelper.java */
/* loaded from: classes8.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    public b f10995a;
    public final Application.ActivityLifecycleCallbacks b = new a();

    /* compiled from: AppStateHelper.java */
    /* loaded from: classes8.dex */
    public class a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a  reason: collision with root package name */
        public int f10996a = 0;

        public a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            int i = this.f10996a + 1;
            this.f10996a = i;
            if (i != 1 || j.this.f10995a == null) {
                return;
            }
            j.this.f10995a.a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            int i = this.f10996a - 1;
            this.f10996a = i;
            if (i != 0 || j.this.f10995a == null) {
                return;
            }
            j.this.f10995a.b();
        }
    }

    /* compiled from: AppStateHelper.java */
    /* loaded from: classes8.dex */
    public interface b {
        void a();

        void b();
    }

    public void a(Application application, b bVar) {
        if (application != null) {
            this.f10995a = bVar;
            application.registerActivityLifecycleCallbacks(this.b);
        }
    }

    public void a(Application application) {
        if (application != null) {
            application.unregisterActivityLifecycleCallbacks(this.b);
        }
    }
}
