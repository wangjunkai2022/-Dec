package com.apk;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.ui.activity.ToforegroundActivity;
import com.biquge.ebook.app.ui.activity.WelComeActivity;
import java.util.List;
/* compiled from: AppFrontBackHelper.java */
/* loaded from: classes8.dex */
public class n {

    /* renamed from: do  reason: not valid java name */
    public Cif f3144do;

    /* renamed from: if  reason: not valid java name */
    public final Application.ActivityLifecycleCallbacks f3145if = new Cdo();

    /* compiled from: AppFrontBackHelper.java */
    /* renamed from: com.apk.n$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Application.ActivityLifecycleCallbacks {

        /* renamed from: do  reason: not valid java name */
        public int f3146do = 0;

        public Cdo() {
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

        /* JADX WARN: Removed duplicated region for block: B:45:0x008e  */
        @Override // android.app.Application.ActivityLifecycleCallbacks
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onActivityStarted(android.app.Activity r18) {
            /*
                Method dump skipped, instructions count: 354
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.n.Cdo.onActivityStarted(android.app.Activity):void");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            Cif cif;
            int i = this.f3146do - 1;
            this.f3146do = i;
            if (i != 0 || n.m1798do(n.this, activity) || (cif = n.this.f3144do) == null) {
                return;
            }
            AppContext.Cdo cdo = (AppContext.Cdo) cif;
            if (AppContext.this.f6396new == 0 && v.m2734do() == null) {
                throw null;
            }
            if (Cfinally.m797else().m817protected()) {
                AppContext appContext = AppContext.this;
                if (appContext.f6393do == null) {
                    appContext.f6393do = new Cstatic();
                }
                List<g> list = AppContext.this.f6393do.f4584do;
                if (list != null && list.size() > 0) {
                    Cstatic cstatic = AppContext.this.f6393do;
                    if (cstatic.f4586for == null) {
                        List<g> list2 = cstatic.f4584do;
                        cstatic.f4586for = list2.get(cstatic.f4587if % list2.size());
                        cstatic.f4587if++;
                    }
                    AppContext.this.f6393do.f4589try = System.currentTimeMillis();
                }
            }
            if (Ccontinue.m379if().f728try == 0) {
                q5 q5Var = new q5(null, null);
                q5Var.f3799try = true;
                q5Var.m2106case(false);
            }
        }
    }

    /* compiled from: AppFrontBackHelper.java */
    /* renamed from: com.apk.n$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
    }

    /* renamed from: do  reason: not valid java name */
    public static boolean m1798do(n nVar, Activity activity) {
        if (nVar != null) {
            return activity != null && ((activity instanceof WelComeActivity) || (activity instanceof ToforegroundActivity));
        }
        throw null;
    }
}
