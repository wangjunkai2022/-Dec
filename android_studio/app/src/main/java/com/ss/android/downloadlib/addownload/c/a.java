package com.ss.android.downloadlib.addownload.c;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.g.k;
import com.ss.android.downloadlib.g.l;
import com.ss.android.socialbase.downloader.depend.q;
import com.ss.android.socialbase.downloader.depend.r;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;

/* loaded from: classes7.dex */
public class a implements r {

    /* renamed from: a  reason: collision with root package name */
    public int f11608a;

    private long b(com.ss.android.socialbase.downloader.g.a aVar) {
        long a2 = aVar.a("clear_space_sleep_time", 0L);
        if (a2 <= 0) {
            return 0L;
        }
        if (a2 > 5000) {
            a2 = 5000;
        }
        k.b("AppDownloadDiskSpaceHandler", "waiting for space clear, sleepTime = " + a2, null);
        try {
            Thread.sleep(a2);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        k.b("AppDownloadDiskSpaceHandler", "waiting end!", null);
        return a2;
    }

    public void a(int i) {
        this.f11608a = i;
    }

    @Override // com.ss.android.socialbase.downloader.depend.r
    public boolean a(long j, long j2, q qVar) {
        long j3;
        com.ss.android.socialbase.downloader.g.a a2 = com.ss.android.socialbase.downloader.g.a.a(this.f11608a);
        if (a(a2)) {
            long currentTimeMillis = System.currentTimeMillis();
            d.a().c();
            long a3 = l.a(0L);
            a();
            long a4 = l.a(0L);
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (a4 < j2) {
                long b = b(a2);
                if (b > 0) {
                    a4 = l.a(0L);
                }
                j3 = b;
            } else {
                j3 = 0;
            }
            k.b("AppDownloadDiskSpaceHandler", "cleanUpDisk, byteRequired = " + j2 + ", byteAvailableAfter = " + a4 + ", cleaned = " + (a4 - a3), null);
            a(a3, a4, j2, currentTimeMillis2, j3);
            if (a4 < j2) {
                return false;
            }
            if (qVar != null) {
                qVar.a();
                return true;
            }
            return true;
        }
        return false;
    }

    private boolean a(com.ss.android.socialbase.downloader.g.a aVar) {
        if (aVar.a("clear_space_use_disk_handler", 0) != 1) {
            return false;
        }
        return System.currentTimeMillis() - d.a().b() >= aVar.a("clear_space_min_time_interval", TTAdConstant.AD_MAX_EVENT_TIME);
    }

    private void a() {
        com.ss.android.download.api.config.e o = j.o();
        if (o != null) {
            o.a();
        }
        c.a();
        c.b();
    }

    private void a(long j, long j2, long j3, long j4, long j5) {
        DownloadInfo downloadInfo = Downloader.getInstance(j.getContext()).getDownloadInfo(this.f11608a);
        if (downloadInfo == null) {
            return;
        }
        try {
            com.ss.android.downloadlib.a.a().a(downloadInfo, j, j2, j3, j4, j5, j2 > j3);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
