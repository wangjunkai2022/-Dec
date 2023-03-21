package com.apk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.WeakHashMap;
import skin.support.annotation.Skinable;

/* compiled from: SkinActivityLifecycle.java */
/* loaded from: classes7.dex */
public class zp0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: new  reason: not valid java name */
    public static volatile zp0 f6225new;

    /* renamed from: do  reason: not valid java name */
    public WeakHashMap<Context, bq0> f6226do;

    /* renamed from: for  reason: not valid java name */
    public WeakReference<Activity> f6227for;

    /* renamed from: if  reason: not valid java name */
    public WeakHashMap<Context, Cdo> f6228if;

    /* compiled from: SkinActivityLifecycle.java */
    /* renamed from: com.apk.zp0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements ir0 {

        /* renamed from: do  reason: not valid java name */
        public final Context f6229do;

        /* renamed from: if  reason: not valid java name */
        public boolean f6231if = false;

        public Cdo(Context context) {
            this.f6229do = context;
        }

        @Override // com.apk.ir0
        /* renamed from: do */
        public void mo1269do(hr0 hr0Var, Object obj) {
            WeakReference<Activity> weakReference = zp0.this.f6227for;
            if (weakReference != null && this.f6229do != weakReference.get() && (this.f6229do instanceof Activity)) {
                this.f6231if = true;
            } else {
                m3244if();
            }
        }

        /* renamed from: if  reason: not valid java name */
        public void m3244if() {
            Context context = this.f6229do;
            if (context == null) {
                return;
            }
            if ((context instanceof Activity) && zp0.this.m3241for(context)) {
                zp0.this.m3243new((Activity) this.f6229do);
            }
            bq0 m3242if = zp0.this.m3242if(this.f6229do);
            List<WeakReference<js0>> list = m3242if.f444for;
            if (list != null && !list.isEmpty()) {
                for (WeakReference<js0> weakReference : m3242if.f444for) {
                    if (weakReference != null && weakReference.get() != null) {
                        weakReference.get().mo101do();
                    }
                }
            }
            Context context2 = this.f6229do;
            if (context2 instanceof js0) {
                ((js0) context2).mo101do();
            }
            this.f6231if = false;
        }
    }

    public zp0(Application application) {
        application.registerActivityLifecycleCallbacks(this);
        try {
            LayoutInflater.from(application).setFactory2(m3242if(application));
        } catch (Throwable unused) {
        }
        yp0.f6038class.m1167do(m3240do(application));
    }

    /* renamed from: do  reason: not valid java name */
    public final Cdo m3240do(Context context) {
        if (this.f6228if == null) {
            this.f6228if = new WeakHashMap<>();
        }
        Cdo cdo = this.f6228if.get(context);
        if (cdo == null) {
            Cdo cdo2 = new Cdo(context);
            this.f6228if.put(context, cdo2);
            return cdo2;
        }
        return cdo;
    }

    /* renamed from: for  reason: not valid java name */
    public final boolean m3241for(Context context) {
        HashMap<String, String> hashMap = yp0.f6038class.f6041catch;
        if (hashMap != null ? hashMap.containsKey(context.getClass().getName()) : false) {
            return false;
        }
        return yp0.f6038class.f6047this || context.getClass().getAnnotation(Skinable.class) != null || (context instanceof js0);
    }

    /* renamed from: if  reason: not valid java name */
    public final bq0 m3242if(Context context) {
        if (this.f6226do == null) {
            this.f6226do = new WeakHashMap<>();
        }
        bq0 bq0Var = this.f6226do.get(context);
        if (bq0Var == null) {
            bq0 bq0Var2 = new bq0(context);
            this.f6226do.put(context, bq0Var2);
            return bq0Var2;
        }
        return bq0Var;
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3243new(Activity activity) {
        Drawable m1661for;
        if (yp0.f6038class.f6039break) {
            int m1746case = mq0.m1746case(activity);
            if (tr0.m2617do(m1746case) == 0 || (m1661for = lq0.m1661for(activity, m1746case)) == null) {
                return;
            }
            activity.getWindow().setBackgroundDrawable(m1661for);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (m3241for(activity)) {
            try {
                LayoutInflater.from(activity).setFactory2(m3242if(activity));
            } catch (Throwable unused) {
            }
            m3243new(activity);
            if (activity instanceof js0) {
                ((js0) activity).mo101do();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (m3241for(activity)) {
            yp0 yp0Var = yp0.f6038class;
            Cdo m3240do = m3240do(activity);
            synchronized (yp0Var) {
                yp0Var.f1977do.remove(m3240do);
            }
            this.f6228if.remove(activity);
            this.f6226do.remove(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        this.f6227for = new WeakReference<>(activity);
        if (m3241for(activity)) {
            Cdo m3240do = m3240do(activity);
            yp0.f6038class.m1167do(m3240do);
            if (m3240do.f6231if) {
                m3240do.m3244if();
            }
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
}
