package com.apk;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.apk.d50;
import java.util.List;

/* compiled from: TrFrontBackHelper.java */
/* loaded from: classes7.dex */
public class e50 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ d50 f1008do;

    public e50(d50 d50Var) {
        this.f1008do = d50Var;
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
        if (activity == null) {
            return;
        }
        this.f1008do.f826try = activity.getClass().getSimpleName();
        d50 d50Var = this.f1008do;
        if (d50Var.f823for == 0 && d50Var.f824if) {
            d50Var.f825new = false;
            k40.m1463this("切到前台");
            List<d50.Cdo> list = d50Var.f822do;
            if (list != null) {
                for (d50.Cdo cdo : list) {
                    if (cdo != null) {
                        cdo.mo407do(activity);
                    }
                }
            }
        }
        this.f1008do.f823for++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (activity == null) {
            return;
        }
        d50 d50Var = this.f1008do;
        int i = d50Var.f823for;
        if (i > 0) {
            d50Var.f823for = i - 1;
        }
        d50 d50Var2 = this.f1008do;
        if (d50Var2.f823for == 0 && d50Var2.f824if) {
            d50Var2.f825new = true;
            k40.m1463this("切到后台");
            List<d50.Cdo> list = d50Var2.f822do;
            if (list != null) {
                for (d50.Cdo cdo : list) {
                    if (cdo != null) {
                        cdo.mo408if(activity);
                    }
                }
            }
        }
    }
}
