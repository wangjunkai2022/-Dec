package com.ss.android.socialbase.downloader.impls;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.apk.Cgoto;
import com.ss.android.socialbase.downloader.a.a;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class r implements Handler.Callback, a.InterfaceC0150a {

    /* renamed from: a  reason: collision with root package name */
    public static volatile r f11974a;
    public static b i;
    public final boolean e;
    public long f;
    public ConnectivityManager h;
    public final Handler c = new Handler(Looper.getMainLooper(), this);
    public final SparseArray<a> d = new SparseArray<>();
    public int g = 0;
    public final Context b = com.ss.android.socialbase.downloader.downloader.c.N();

    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f11979a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final boolean f;
        public final int[] g;
        public int h;
        public int i;
        public boolean j;
        public long k;
        public boolean l;

        public a(int i, int i2, int i3, int i4, int i5, boolean z, int[] iArr) {
            i4 = i4 < 3000 ? 3000 : i4;
            i5 = i5 < 5000 ? 5000 : i5;
            this.f11979a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = z;
            this.g = iArr;
            this.h = i4;
        }

        public void c() {
            this.h = this.d;
        }

        public int d() {
            return this.h;
        }

        public boolean a(long j, int i, int i2, boolean z) {
            if (!this.l) {
                com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "canRetry: mIsWaitingRetry is false, return false!!!");
                return false;
            } else if (this.b >= i && this.i < this.c) {
                if (!this.j || i2 == 2) {
                    return z || j - this.k >= ((long) this.d);
                }
                return false;
            } else {
                return false;
            }
        }

        public synchronized void b() {
            this.i++;
        }

        public synchronized void a() {
            this.h += this.e;
        }

        public synchronized void a(long j) {
            this.k = j;
        }
    }

    /* loaded from: classes7.dex */
    public interface b {
        void a(DownloadInfo downloadInfo, long j, boolean z, int i);
    }

    public r() {
        f();
        this.e = com.ss.android.socialbase.downloader.i.f.c();
        com.ss.android.socialbase.downloader.a.a.a().a(this);
    }

    private void f() {
        if (com.ss.android.socialbase.downloader.g.a.c().a("use_network_callback", 0) != 1) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.c.l().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.r.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (r.this.b != null) {
                        r.this.h = (ConnectivityManager) r.this.b.getApplicationContext().getSystemService("connectivity");
                        r.this.h.registerNetworkCallback(new NetworkRequest.Builder().build(), new ConnectivityManager.NetworkCallback() { // from class: com.ss.android.socialbase.downloader.impls.r.1.1
                            @Override // android.net.ConnectivityManager.NetworkCallback
                            public void onAvailable(Network network) {
                                com.ss.android.socialbase.downloader.c.a.b("RetryScheduler", "network onAvailable: ");
                                r.this.a(1, true);
                            }
                        });
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int g() {
        try {
            if (this.h == null) {
                this.h = (ConnectivityManager) this.b.getApplicationContext().getSystemService("connectivity");
            }
            NetworkInfo activeNetworkInfo = this.h.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return activeNetworkInfo.getType() == 1 ? 2 : 1;
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            b(message.arg1, message.arg2 == 1);
        } else {
            StringBuilder m1016super = Cgoto.m1016super("handleMessage, doSchedulerRetry, id = ");
            m1016super.append(message.what);
            com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", m1016super.toString());
            a(message.what);
        }
        return true;
    }

    private void b(final int i2, final boolean z) {
        com.ss.android.socialbase.downloader.downloader.c.l().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.r.2
            @Override // java.lang.Runnable
            public void run() {
                int g;
                try {
                    if (r.this.g > 0 && (g = r.this.g()) != 0) {
                        com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "doScheduleAllTaskRetry: mWaitingRetryTasksCount = " + r.this.g);
                        long currentTimeMillis = System.currentTimeMillis();
                        ArrayList arrayList = new ArrayList();
                        synchronized (r.this.d) {
                            for (int i3 = 0; i3 < r.this.d.size(); i3++) {
                                a aVar = (a) r.this.d.valueAt(i3);
                                if (aVar != null && aVar.a(currentTimeMillis, i2, g, z)) {
                                    if (z) {
                                        aVar.c();
                                    }
                                    arrayList.add(aVar);
                                }
                            }
                        }
                        if (arrayList.size() > 0) {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                r.this.a(((a) it.next()).f11979a, g, false);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    private void c(int i2) {
        synchronized (this.d) {
            this.d.remove(i2);
        }
    }

    private a d(int i2) {
        int[] iArr;
        int i3;
        int i4;
        boolean z;
        com.ss.android.socialbase.downloader.g.a a2 = com.ss.android.socialbase.downloader.g.a.a(i2);
        boolean z2 = false;
        int a3 = a2.a("retry_schedule", 0);
        JSONObject d = a2.d("retry_schedule_config");
        int i5 = 60;
        if (d != null) {
            int optInt = d.optInt("max_count", 60);
            int optInt2 = d.optInt("interval_sec", 60);
            int optInt3 = d.optInt("interval_sec_acceleration", 60);
            if (i != null && d.optInt("use_job_scheduler", 0) == 1) {
                z2 = true;
            }
            iArr = a(d.optString("allow_error_code"));
            i3 = optInt3;
            z = z2;
            i4 = optInt;
            i5 = optInt2;
        } else {
            iArr = null;
            i3 = 60;
            i4 = 60;
            z = false;
        }
        return new a(i2, a3, i4, i5 * 1000, i3 * 1000, z, iArr);
    }

    public void e() {
        a(5, false);
    }

    private a b(int i2) {
        a aVar = this.d.get(i2);
        if (aVar == null) {
            synchronized (this.d) {
                aVar = this.d.get(i2);
                if (aVar == null) {
                    aVar = d(i2);
                }
                this.d.put(i2, aVar);
            }
        }
        return aVar;
    }

    public static r a() {
        if (f11974a == null) {
            synchronized (r.class) {
                if (f11974a == null) {
                    f11974a = new r();
                }
            }
        }
        return f11974a;
    }

    @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0150a
    public void c() {
        a(3, false);
    }

    @Override // com.ss.android.socialbase.downloader.a.a.InterfaceC0150a
    public void b() {
        a(4, false);
    }

    public static void a(b bVar) {
        i = bVar;
    }

    public void a(DownloadInfo downloadInfo) {
        if (downloadInfo == null || TextUtils.isEmpty(com.ss.android.socialbase.downloader.constants.e.f11830a) || !com.ss.android.socialbase.downloader.constants.e.f11830a.equals(downloadInfo.getMimeType())) {
            return;
        }
        a(downloadInfo, downloadInfo.isOnlyWifi() || downloadInfo.isPauseReserveOnWifi(), g());
    }

    public void d() {
        a(2, true);
    }

    private void a(DownloadInfo downloadInfo, boolean z, int i2) {
        BaseException failedException = downloadInfo.getFailedException();
        if (failedException == null) {
            return;
        }
        a b2 = b(downloadInfo.getId());
        if (b2.i > b2.c) {
            StringBuilder m1016super = Cgoto.m1016super("tryStartScheduleRetry, id = ");
            m1016super.append(b2.f11979a);
            m1016super.append(", mRetryCount = ");
            m1016super.append(b2.i);
            m1016super.append(", maxCount = ");
            m1016super.append(b2.c);
            com.ss.android.socialbase.downloader.c.a.d("RetryScheduler", m1016super.toString());
            return;
        }
        int errorCode = failedException.getErrorCode();
        if (!com.ss.android.socialbase.downloader.i.f.h(failedException) && !com.ss.android.socialbase.downloader.i.f.i(failedException) && (!downloadInfo.statusInPause() || !downloadInfo.isPauseReserveOnWifi())) {
            if (!a(b2, errorCode)) {
                return;
            }
            StringBuilder m1016super2 = Cgoto.m1016super("allow error code, id = ");
            m1016super2.append(b2.f11979a);
            m1016super2.append(", error code = ");
            m1016super2.append(errorCode);
            com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", m1016super2.toString());
        }
        b2.j = z;
        synchronized (this.d) {
            if (!b2.l) {
                b2.l = true;
                this.g++;
            }
        }
        int d = b2.d();
        StringBuilder m1016super3 = Cgoto.m1016super("tryStartScheduleRetry: id = ");
        m1016super3.append(b2.f11979a);
        m1016super3.append(", delayTimeMills = ");
        m1016super3.append(d);
        m1016super3.append(", mWaitingRetryTasks = ");
        m1016super3.append(this.g);
        com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", m1016super3.toString());
        if (!b2.f) {
            if (z) {
                return;
            }
            this.c.removeMessages(downloadInfo.getId());
            this.c.sendEmptyMessageDelayed(downloadInfo.getId(), d);
            return;
        }
        if (i2 == 0) {
            b2.c();
        }
        b bVar = i;
        if (bVar != null) {
            bVar.a(downloadInfo, d, z, i2);
        }
        if (this.e) {
            b2.a(System.currentTimeMillis());
            b2.b();
            b2.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, boolean z) {
        if (this.g <= 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            if (!z) {
                if (currentTimeMillis - this.f < FragmentStateAdapter.GRACE_WINDOW_TIME_MS) {
                    return;
                }
            }
            this.f = currentTimeMillis;
            com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", "scheduleAllTaskRetry, level = [" + i2 + "], force = [" + z + "]");
            if (z) {
                this.c.removeMessages(0);
            }
            Message obtain = Message.obtain();
            obtain.what = 0;
            obtain.arg1 = i2;
            obtain.arg2 = z ? 1 : 0;
            this.c.sendMessageDelayed(obtain, ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
        }
    }

    public void a(final int i2) {
        com.ss.android.socialbase.downloader.downloader.c.l().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.r.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    r.this.a(i2, r.this.g(), true);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3, boolean z) {
        com.ss.android.socialbase.downloader.downloader.r reserveWifiStatusListener;
        boolean z2;
        Context context = this.b;
        if (context == null) {
            return;
        }
        synchronized (this.d) {
            a aVar = this.d.get(i2);
            if (aVar == null) {
                return;
            }
            boolean z3 = true;
            if (aVar.l) {
                aVar.l = false;
                int i4 = this.g - 1;
                this.g = i4;
                if (i4 < 0) {
                    this.g = 0;
                }
            }
            StringBuilder m1020throw = Cgoto.m1020throw("doSchedulerRetryInSubThread: downloadId = ", i2, ", retryCount = ");
            m1020throw.append(aVar.i);
            m1020throw.append(", mWaitingRetryTasksCount = ");
            m1020throw.append(this.g);
            com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", m1020throw.toString());
            DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i2);
            if (downloadInfo == null) {
                c(i2);
                return;
            }
            com.ss.android.socialbase.downloader.c.a.e("RetryScheduler", "doSchedulerRetryInSubThread，id:" + i2);
            int realStatus = downloadInfo.getRealStatus();
            if (realStatus != -3 && realStatus != -4) {
                if (realStatus == -5 || (realStatus == -2 && downloadInfo.isPauseReserveOnWifi())) {
                    if (realStatus == -2 && (reserveWifiStatusListener = Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.c.N()).getReserveWifiStatusListener()) != null) {
                        reserveWifiStatusListener.a(downloadInfo, 4, 3);
                    }
                    com.ss.android.socialbase.downloader.downloader.l w = com.ss.android.socialbase.downloader.downloader.c.w();
                    if (w != null) {
                        w.a(Collections.singletonList(downloadInfo), 3);
                    }
                    c(i2);
                    return;
                } else if (realStatus != -1) {
                    return;
                } else {
                    if (i3 != 0) {
                        z2 = true;
                    } else if (!aVar.f) {
                        return;
                    } else {
                        z2 = false;
                    }
                    BaseException failedException = downloadInfo.getFailedException();
                    if (z2 && com.ss.android.socialbase.downloader.i.f.h(failedException)) {
                        z2 = a(downloadInfo, failedException);
                    }
                    aVar.b();
                    if (z2) {
                        StringBuilder m1016super = Cgoto.m1016super("doSchedulerRetry: restart task, ****** id = ");
                        m1016super.append(aVar.f11979a);
                        com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", m1016super.toString());
                        aVar.a(System.currentTimeMillis());
                        if (z) {
                            aVar.a();
                        }
                        downloadInfo.setRetryScheduleCount(aVar.i);
                        if (downloadInfo.getStatus() == -1) {
                            Downloader.getInstance(context).restart(downloadInfo.getId());
                            return;
                        }
                        return;
                    }
                    if (z) {
                        aVar.a();
                    }
                    if (!downloadInfo.isOnlyWifi() && !downloadInfo.isPauseReserveOnWifi()) {
                        z3 = false;
                    }
                    a(downloadInfo, z3, i3);
                    return;
                }
            }
            c(i2);
        }
    }

    private boolean a(a aVar, int i2) {
        int[] iArr = aVar.g;
        if (iArr != null && iArr.length != 0) {
            for (int i3 : iArr) {
                if (i3 == i2) {
                    return true;
                }
            }
        }
        return false;
    }

    private int[] a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] split = str.split(",");
            if (split.length <= 0) {
                return null;
            }
            int[] iArr = new int[split.length];
            for (int i2 = 0; i2 < split.length; i2++) {
                iArr[i2] = Integer.parseInt(split[i2]);
            }
            return iArr;
        } catch (Throwable unused) {
            return null;
        }
    }

    private boolean a(DownloadInfo downloadInfo, BaseException baseException) {
        long j;
        long totalBytes;
        try {
            j = com.ss.android.socialbase.downloader.i.f.d(downloadInfo.getTempPath());
        } catch (BaseException e) {
            e.printStackTrace();
            j = 0;
        }
        if (baseException instanceof com.ss.android.socialbase.downloader.exception.d) {
            totalBytes = ((com.ss.android.socialbase.downloader.exception.d) baseException).b();
        } else {
            totalBytes = downloadInfo.getTotalBytes() - downloadInfo.getCurBytes();
        }
        if (j < totalBytes) {
            com.ss.android.socialbase.downloader.g.a a2 = com.ss.android.socialbase.downloader.g.a.a(downloadInfo.getId());
            if (a2.a("space_fill_part_download", 0) == 1) {
                if (j > 0) {
                    int a3 = a2.a("space_fill_min_keep_mb", 100);
                    if (a3 > 0) {
                        long j2 = j - (a3 * DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL);
                        StringBuilder m1016super = Cgoto.m1016super("retry schedule: available = ");
                        m1016super.append(com.ss.android.socialbase.downloader.i.f.a(j));
                        m1016super.append("MB, minKeep = ");
                        m1016super.append(a3);
                        m1016super.append("MB, canDownload = ");
                        m1016super.append(com.ss.android.socialbase.downloader.i.f.a(j2));
                        m1016super.append("MB");
                        com.ss.android.socialbase.downloader.c.a.c("RetryScheduler", m1016super.toString());
                        if (j2 <= 0) {
                            com.ss.android.socialbase.downloader.c.a.d("RetryScheduler", "doSchedulerRetryInSubThread: canDownload <= 0 , canRetry = false !!!!");
                            return false;
                        }
                    }
                } else if (a2.a("download_when_space_negative", 0) != 1) {
                }
            }
            return false;
        }
        return true;
    }
}
