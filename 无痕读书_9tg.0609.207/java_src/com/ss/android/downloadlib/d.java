package com.ss.android.downloadlib;

import android.content.SharedPreferences;
import android.util.SparseArray;
import androidx.appcompat.widget.ActivityChooserView;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.j;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes8.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public ExecutorService f11695a;
    public ExecutorService b;
    public ScheduledExecutorService c;

    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static d f11697a = new d();
    }

    public static d a() {
        return a.f11697a;
    }

    public void b(Runnable runnable) {
        b(runnable, false);
    }

    public ExecutorService c() {
        if (this.b == null) {
            synchronized (d.class) {
                if (this.b == null) {
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    SynchronousQueue synchronousQueue = new SynchronousQueue();
                    this.b = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 30L, timeUnit, synchronousQueue, new com.ss.android.socialbase.downloader.h.a(g.class.getName() + "-IOThreadPool"));
                }
            }
        }
        return this.b;
    }

    public ScheduledExecutorService d() {
        if (this.c == null) {
            synchronized (d.class) {
                if (this.c == null) {
                    this.c = new ScheduledThreadPoolExecutor(0, new com.ss.android.socialbase.downloader.h.a(g.class.getName() + "-ScheduledThreadPool"));
                }
            }
        }
        return this.c;
    }

    public void e() {
        a(new Runnable() { // from class: com.ss.android.downloadlib.d.1
            @Override // java.lang.Runnable
            public void run() {
                j x;
                synchronized (d.class) {
                    try {
                        String[] strArr = {"sp_ad_download_event", "sp_download_finish_cache", "sp_delay_operation_info", "sp_ttdownloader_md5", "sp_name_installed_app", "misc_config", "sp_ad_install_back_dialog", "sp_ttdownloader_clean", "sp_order_download", "sp_a_b_c", "sp_ah_config", "sp_download_info", "sp_appdownloader"};
                        for (int i = 0; i < 13; i++) {
                            SharedPreferences sharedPreferences = com.ss.android.downloadlib.addownload.j.getContext().getSharedPreferences(strArr[i], 0);
                            if (sharedPreferences != null) {
                                sharedPreferences.edit().clear().apply();
                            }
                        }
                        x = com.ss.android.socialbase.downloader.downloader.c.x();
                    } catch (Throwable unused) {
                    }
                    if (x instanceof com.ss.android.socialbase.downloader.impls.d) {
                        SparseArray<DownloadInfo> a2 = ((com.ss.android.socialbase.downloader.impls.d) x).a().a();
                        for (int size = a2.size() - 1; size >= 0; size--) {
                            DownloadInfo downloadInfo = a2.get(a2.keyAt(size));
                            if (downloadInfo != null) {
                                Downloader.getInstance(com.ss.android.downloadlib.addownload.j.getContext()).clearDownloadData(downloadInfo.getId());
                            }
                        }
                    }
                }
            }
        });
    }

    public d() {
    }

    public void a(Runnable runnable) {
        a(runnable, false);
    }

    public void b(Runnable runnable, boolean z) {
        if (runnable == null) {
            return;
        }
        if (z && !l.a()) {
            runnable.run();
        } else {
            c().execute(runnable);
        }
    }

    public void a(Runnable runnable, boolean z) {
        if (runnable == null) {
            return;
        }
        if (z && !l.a()) {
            runnable.run();
        } else {
            b().execute(runnable);
        }
    }

    public ExecutorService b() {
        if (this.f11695a == null) {
            synchronized (d.class) {
                if (this.f11695a == null) {
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    SynchronousQueue synchronousQueue = new SynchronousQueue();
                    this.f11695a = new ThreadPoolExecutor(0, (int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 30L, timeUnit, synchronousQueue, new com.ss.android.socialbase.downloader.h.a(g.class.getName() + "-CPUThreadPool"));
                }
            }
        }
        return this.f11695a;
    }

    public void a(Runnable runnable, long j) {
        try {
            d().schedule(runnable, j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
