package com.umeng.analytics.pro;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.widget.TooltipCompatHandler;
import com.umeng.commonsdk.debug.UMRTLog;
import java.util.ArrayList;
/* compiled from: BackgroundMonitor.java */
/* loaded from: classes7.dex */
public class m implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    public static m f12208a = new m();
    public final int b = 3000;
    public boolean c = false;
    public boolean d = true;
    public Handler e = new Handler(Looper.getMainLooper());
    public ArrayList<n> f = new ArrayList<>();
    public a g = new a();

    /* compiled from: BackgroundMonitor.java */
    /* loaded from: classes7.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (m.this.c && m.this.d) {
                m.this.c = false;
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> went background.");
                for (int i = 0; i < m.this.f.size(); i++) {
                    ((n) m.this.f.get(i)).n();
                }
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> still foreground.");
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.d = true;
        a aVar = this.g;
        if (aVar != null) {
            this.e.removeCallbacks(aVar);
            this.e.postDelayed(this.g, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.d = false;
        this.c = true;
        a aVar = this.g;
        if (aVar != null) {
            this.e.removeCallbacks(aVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    public synchronized void b(n nVar) {
        if (nVar != null) {
            for (int i = 0; i < this.f.size(); i++) {
                if (this.f.get(i) == nVar) {
                    this.f.remove(i);
                }
            }
        }
    }

    public static void a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(f12208a);
        }
    }

    public static m a() {
        return f12208a;
    }

    public synchronized void a(n nVar) {
        if (nVar != null) {
            this.f.add(nVar);
        }
    }
}
