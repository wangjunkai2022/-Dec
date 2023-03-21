package com.apk;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.NotificationCompat;
import com.biquge.ebook.app.app.AppContext;
import java.util.concurrent.ThreadPoolExecutor;

/* compiled from: CrashHandler.java */
/* loaded from: classes8.dex */
public class t {

    /* renamed from: if  reason: not valid java name */
    public static t f4622if;

    /* renamed from: do  reason: not valid java name */
    public Cdo f4623do;

    /* compiled from: CrashHandler.java */
    /* renamed from: com.apk.t$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
        /* renamed from: do  reason: not valid java name */
        void m2569do(Thread thread, Throwable th);
    }

    /* renamed from: do  reason: not valid java name */
    public static void m2567do(t tVar, Throwable th, boolean z) {
        if (tVar != null) {
            if (z) {
                try {
                    if (!ze.D("is_save_carsh_log")) {
                        tt.f4763do.putString("is_save_carsh_log", "");
                        AppContext appContext = AppContext.f6392case;
                        Intent launchIntentForPackage = appContext.getPackageManager().getLaunchIntentForPackage(appContext.getPackageName());
                        launchIntentForPackage.addFlags(67108864);
                        ((AlarmManager) appContext.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(1, System.currentTimeMillis(), PendingIntent.getActivity(appContext, 0, launchIntentForPackage, 1073741824));
                    } else {
                        System.exit(0);
                    }
                } catch (Exception unused) {
                }
            }
            o m1921for = o.m1921for();
            s sVar = new s(tVar, th);
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(sVar);
                return;
            }
            return;
        }
        throw null;
    }

    /* renamed from: if  reason: not valid java name */
    public static void m2568if(Cdo cdo) {
        if (f4622if == null) {
            synchronized (t.class) {
                if (f4622if == null) {
                    f4622if = new t();
                }
            }
        }
        t tVar = f4622if;
        tVar.f4623do = null;
        new Handler(Looper.getMainLooper()).post(new q(tVar));
        Thread.setDefaultUncaughtExceptionHandler(new r(tVar));
        ze.W("is_save_carsh_log");
    }
}
