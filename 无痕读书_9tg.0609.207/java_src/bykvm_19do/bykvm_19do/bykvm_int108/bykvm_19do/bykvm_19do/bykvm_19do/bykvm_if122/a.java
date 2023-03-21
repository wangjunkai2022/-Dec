package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122;

import android.content.Context;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.e;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
/* compiled from: DBEventUtils.java */
/* loaded from: classes8.dex */
public class a {
    public static long a(int i, Context context) {
        long b = b(i, context);
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("ad limit by memory:" + b);
        return b;
    }

    public static long b(int i, Context context) {
        if (context == null) {
            return i;
        }
        Runtime runtime = Runtime.getRuntime();
        long freeMemory = runtime.freeMemory() / DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL;
        long j = runtime.totalMemory() / DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL;
        long maxMemory = runtime.maxMemory() / DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL;
        long j2 = maxMemory - j;
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("ad limit:" + j2 + " free:" + freeMemory + " at:" + i + " tot:" + j + " max:" + maxMemory);
        if (j2 <= 0) {
            if (freeMemory <= 2) {
                return 1L;
            }
            if (freeMemory <= 10) {
                return Math.min(i, 10);
            }
            return Math.min((freeMemory / 2) * 10, i);
        }
        long j3 = (freeMemory + j2) - 10;
        long j4 = j3 / 2;
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("ad limit ava:" + j3 + " event:" + j4 + " at:" + i);
        if (j4 <= 2) {
            return 1L;
        }
        if (j4 <= 10) {
            return Math.min(i, 10);
        }
        return Math.min(j4 * 10, i);
    }

    public static boolean c() {
        e e = j.l().e();
        return (e == null || TextUtils.isEmpty(e.b())) ? false : true;
    }

    public static boolean d() {
        e e = j.l().e();
        return (e == null || TextUtils.isEmpty(e.f())) ? false : true;
    }

    public static boolean e() {
        e e = j.l().e();
        return (e == null || TextUtils.isEmpty(e.e())) ? false : true;
    }

    public static boolean f() {
        e e = j.l().e();
        return (e == null || TextUtils.isEmpty(e.c())) ? false : true;
    }

    public static boolean a() {
        e e = j.l().e();
        return (e == null || TextUtils.isEmpty(e.a())) ? false : true;
    }

    public static boolean b() {
        e e = j.l().e();
        return (e == null || TextUtils.isEmpty(e.d())) ? false : true;
    }
}
