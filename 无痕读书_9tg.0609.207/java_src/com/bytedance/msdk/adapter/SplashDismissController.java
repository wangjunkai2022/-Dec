package com.bytedance.msdk.adapter;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
/* loaded from: classes8.dex */
public class SplashDismissController {

    /* renamed from: do  reason: not valid java name */
    public WeakReference<Activity> f8414do;

    /* renamed from: new  reason: not valid java name */
    public CallBack f8417new;

    /* renamed from: if  reason: not valid java name */
    public boolean f8416if = false;

    /* renamed from: for  reason: not valid java name */
    public boolean f8415for = false;

    /* renamed from: try  reason: not valid java name */
    public boolean f8418try = false;

    /* loaded from: classes8.dex */
    public interface CallBack {
        void onResume();
    }

    public SplashDismissController(Activity activity) {
        WeakReference<Activity> weakReference = new WeakReference<>(activity);
        this.f8414do = weakReference;
        Activity activity2 = weakReference.get();
        if (activity2 != null) {
            activity2.getApplication().registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.bytedance.msdk.adapter.SplashDismissController.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity3, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity3) {
                    SplashDismissController splashDismissController = SplashDismissController.this;
                    splashDismissController.f8417new = null;
                    WeakReference<Activity> weakReference2 = splashDismissController.f8414do;
                    if (weakReference2 == null || weakReference2.get() != activity3) {
                        return;
                    }
                    activity3.getApplication().unregisterActivityLifecycleCallbacks(this);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity3) {
                    WeakReference<Activity> weakReference2 = SplashDismissController.this.f8414do;
                    if (weakReference2 == null || weakReference2.get() != activity3) {
                        return;
                    }
                    SplashDismissController.this.f8415for = true;
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity3) {
                    CallBack callBack;
                    WeakReference<Activity> weakReference2 = SplashDismissController.this.f8414do;
                    if (weakReference2 == null || weakReference2.get() != activity3 || (callBack = SplashDismissController.this.f8417new) == null) {
                        return;
                    }
                    callBack.onResume();
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity3, Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity3) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity3) {
                }
            });
        }
    }

    public boolean isCallDismiss() {
        return this.f8418try;
    }

    public boolean jumpToAdPage() {
        return this.f8416if && this.f8415for;
    }

    public void setCallBack(CallBack callBack) {
        this.f8417new = callBack;
    }

    public void setCallDismiss(boolean z) {
        this.f8418try = z;
    }

    public void setClick(boolean z) {
        this.f8416if = z;
    }
}
