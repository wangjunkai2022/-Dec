package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1;

import android.system.Os;
import android.system.OsConstants;
import com.umeng.analytics.pro.ak;

/* compiled from: ProcessCpuTracker.java */
/* loaded from: classes8.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public static long f11088a = -1;

    /* compiled from: ProcessCpuTracker.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static long f11089a = -1;

        public static long a(long j) {
            long j2 = f11089a;
            if (j2 > 0) {
                return j2;
            }
            long sysconf = Os.sysconf(OsConstants._SC_CLK_TCK);
            if (sysconf > 0) {
                j = sysconf;
            }
            f11089a = j;
            return j;
        }

        public static long b() {
            return a(100L);
        }

        public static long a() {
            if (i.f11088a == -1) {
                long unused = i.f11088a = 1000 / b();
            }
            return i.f11088a;
        }

        public static long a(String str, long j) {
            try {
                int i = Class.forName("libcore.io.OsConstants").getField(str).getInt(null);
                Class<?> cls = Class.forName("libcore.io.Libcore");
                Class<?> cls2 = Class.forName("libcore.io.Os");
                return ((Long) cls2.getMethod("sysconf", Integer.TYPE).invoke(cls.getField(ak.x).get(null), Integer.valueOf(i))).longValue();
            } catch (Throwable th) {
                th.printStackTrace();
                return j;
            }
        }
    }
}
