package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.RequiresPermission;
import com.apk.Cgoto;
import com.umeng.commonsdk.statistics.idtracking.Envelope;
import java.io.File;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.nio.channels.FileLock;
import java.security.SecureRandom;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: IdUtils.java */
@SuppressLint({"MissingPermission"})
/* loaded from: classes8.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    public static volatile String f11010a;
    public static volatile String b;
    public static volatile String c;
    public static volatile String d;
    public static volatile String e;
    public static volatile String f;
    public static volatile String g;
    public static volatile String h;
    public static volatile String i;
    public static final AtomicInteger j = new AtomicInteger(0);

    public static String a(Context context) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUseAndroidId()) {
            if (TextUtils.isEmpty(b)) {
                synchronized (v.class) {
                    if (TextUtils.isEmpty(b)) {
                        n(context);
                    }
                }
            }
            return b;
        }
        return null;
    }

    public static String b(Context context) {
        if (TextUtils.isEmpty(g)) {
            synchronized (v.class) {
                if (TextUtils.isEmpty(g)) {
                    b();
                }
            }
        }
        return g;
    }

    public static Context c(Context context) {
        return context == null ? bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d() : context;
    }

    public static String d(Context context) {
        if (TextUtils.isEmpty(f11010a)) {
            synchronized (v.class) {
                if (TextUtils.isEmpty(f11010a)) {
                    p(context);
                }
            }
        }
        return f11010a;
    }

    public static String e(Context context) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUsePhoneState()) {
            if (TextUtils.isEmpty(c)) {
                synchronized (v.class) {
                    if (TextUtils.isEmpty(c)) {
                        s(context);
                    }
                }
            }
            return c;
        }
        return null;
    }

    public static String f(Context context) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUsePhoneState()) {
            if (TextUtils.isEmpty(f)) {
                synchronized (v.class) {
                    if (TextUtils.isEmpty(f)) {
                        s(context);
                    }
                }
            }
            return f;
        }
        return null;
    }

    public static String g(Context context) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUseLocation()) {
            if (TextUtils.isEmpty(d)) {
                synchronized (v.class) {
                    if (TextUtils.isEmpty(d)) {
                        r(context);
                    }
                }
            }
            return d;
        }
        return null;
    }

    public static String h(Context context) {
        if (TextUtils.isEmpty(h)) {
            synchronized (v.class) {
                if (TextUtils.isEmpty(h)) {
                    q(context);
                }
            }
        }
        return h;
    }

    public static String i(Context context) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUseLocation()) {
            if (TextUtils.isEmpty(e)) {
                synchronized (v.class) {
                    if (TextUtils.isEmpty(e)) {
                        r(context);
                    }
                }
            }
            return e;
        }
        return null;
    }

    public static String j(Context context) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUsePhoneState()) {
            if (TextUtils.isEmpty(i)) {
                synchronized (v.class) {
                    if (TextUtils.isEmpty(i)) {
                        o(context);
                    }
                }
            }
            return i;
        }
        return null;
    }

    public static boolean k(Context context) {
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.c.a(context, "android.permission.ACCESS_FINE_LOCATION") == 0 || bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.c.a(context, "android.permission.ACCESS_COARSE_LOCATION") == 0;
    }

    public static boolean l(Context context) {
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_else10.c.a(context, "android.permission.READ_PHONE_STATE") == 0;
    }

    public static synchronized void m(Context context) {
        synchronized (v.class) {
            Context c2 = c(context);
            if (c2 == null) {
                return;
            }
            s(c2);
            r(context);
            o(context);
            n(context);
            p(context);
            c();
            b();
            q(context);
        }
    }

    public static synchronized void n(Context context) {
        synchronized (v.class) {
            if (context == null) {
                return;
            }
            if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUseAndroidId()) {
                b = a(context, true);
            }
        }
    }

    @RequiresPermission("android.permission.READ_PHONE_STATE")
    public static synchronized void o(Context context) {
        synchronized (v.class) {
            if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUsePhoneState() && l(context)) {
                try {
                    if (Build.VERSION.SDK_INT >= 28) {
                        i = Build.getSerial();
                    } else {
                        i = Build.SERIAL;
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public static synchronized void p(Context context) {
        synchronized (v.class) {
            if (context == null) {
                return;
            }
            f11010a = p.c();
            if (TextUtils.isEmpty(f11010a)) {
                f11010a = c0.a("tt_device_info", context).a("did", (String) null);
            } else {
                a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d(), f11010a);
            }
        }
    }

    public static synchronized void q(Context context) {
        synchronized (v.class) {
            if (context == null) {
                return;
            }
            h = c0.a("tt_device_info", context).a("uuid", (String) null);
        }
    }

    public static synchronized void r(Context context) {
        WifiInfo connectionInfo;
        synchronized (v.class) {
            if (context == null) {
                return;
            }
            try {
                WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
                if (wifiManager != null) {
                    if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUseLocation() && k(context) && (connectionInfo = wifiManager.getConnectionInfo()) != null) {
                        d = connectionInfo.getSSID();
                    }
                    e = a(wifiManager, context);
                }
            } catch (Exception unused) {
            }
        }
    }

    @SuppressLint({"HardwareIds", "MissingPermission"})
    public static synchronized void s(Context context) {
        synchronized (v.class) {
            if (j.intValue() > 5) {
                return;
            }
            if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUsePhoneState() && l(context)) {
                try {
                    j.incrementAndGet();
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    if (telephonyManager != null) {
                        c = telephonyManager.getDeviceId();
                        f = telephonyManager.getSubscriberId();
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public static synchronized void t(Context context) {
        synchronized (v.class) {
            if (TextUtils.isEmpty(c)) {
                Context c2 = c(context);
                if (c2 == null) {
                    return;
                }
                try {
                    s(c2);
                } catch (Exception unused) {
                }
            }
        }
    }

    public static synchronized void c() {
        synchronized (v.class) {
            a();
        }
    }

    public static synchronized void b() {
        synchronized (v.class) {
            g = String.valueOf(Build.TIME);
        }
    }

    public static synchronized void a(Context context, String str) {
        synchronized (v.class) {
            if (!TextUtils.isEmpty(str) && !str.equals(f11010a)) {
                c0.a("tt_device_info", context).b("did", str);
                f11010a = str;
            }
        }
    }

    public static String a(WifiManager wifiManager, Context context) {
        String str = Envelope.dummyID2;
        if (wifiManager == null) {
            return Envelope.dummyID2;
        }
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().q().isCanUseLocation() && k(context)) {
            try {
                List<ScanResult> scanResults = wifiManager.getScanResults();
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                if (scanResults != null && connectionInfo != null && connectionInfo.getBSSID() != null) {
                    for (int i2 = 0; i2 < scanResults.size(); i2++) {
                        ScanResult scanResult = scanResults.get(i2);
                        if (connectionInfo.getBSSID().equals(scanResult.BSSID)) {
                            str = scanResult.BSSID;
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return str;
    }

    @SuppressLint({"TrulyRandom", "HardwareIds"})
    public static String a(Context context, boolean z) {
        String str;
        Context c2 = c(context);
        if (c2 == null) {
            return null;
        }
        try {
            str = Settings.Secure.getString(c2.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.f12304a);
        } catch (Exception unused) {
            str = null;
        }
        if (str != null) {
            try {
                if (!str.equals("9774d56d682e549c") && str.length() >= 13) {
                    return str;
                }
            } catch (Exception unused2) {
                return str;
            }
        }
        c0 a2 = c0.a("tt_device_info", c2);
        String a3 = a2.a("openudid", (String) null);
        if (!a(a3)) {
            a3 = new BigInteger(64, new SecureRandom()).toString(16);
            if (a3.charAt(0) == '-') {
                a3 = a3.substring(1);
            }
            int length = 13 - a3.length();
            if (length > 0) {
                StringBuilder sb = new StringBuilder();
                while (length > 0) {
                    sb.append('F');
                    length--;
                }
                sb.append(a3);
                a3 = sb.toString();
            }
            if (z) {
                String a4 = a("openudid.dat", a3);
                if (a(a4)) {
                    a3 = a4;
                }
            }
            a2.b("openudid", a3);
        }
        return a3;
    }

    public static String a(String str, String str2) {
        Throwable th;
        RandomAccessFile randomAccessFile;
        byte[] bArr;
        int read;
        if (!"mounted".equals(Environment.getExternalStorageState())) {
            return str2;
        }
        String str3 = Environment.getExternalStorageDirectory().getPath() + "/Android/data/com.snssdk.api/cache";
        String m996else = Cgoto.m996else(str3, "/", str);
        FileLock fileLock = null;
        try {
            File file = new File(str3);
            if (file.exists() || file.mkdirs()) {
                File file2 = new File(m996else);
                randomAccessFile = new RandomAccessFile(file2, "rwd");
                try {
                    fileLock = randomAccessFile.getChannel().lock();
                    if (file2.isFile() && (read = randomAccessFile.read((bArr = new byte[129]), 0, 129)) > 0 && read < 129) {
                        String str4 = new String(bArr, 0, read, "UTF-8");
                        if (a(str4)) {
                            if (fileLock != null) {
                                try {
                                    fileLock.release();
                                } catch (Exception unused) {
                                }
                            }
                            try {
                                randomAccessFile.close();
                            } catch (Exception unused2) {
                            }
                            return str4;
                        }
                    }
                    byte[] bytes = str2.getBytes("UTF-8");
                    randomAccessFile.setLength(0L);
                    randomAccessFile.write(bytes);
                    if (fileLock != null) {
                        try {
                            fileLock.release();
                        } catch (Exception unused3) {
                        }
                    }
                    try {
                        randomAccessFile.close();
                    } catch (Exception unused4) {
                    }
                    return str2;
                } catch (Exception unused5) {
                    if (fileLock != null) {
                        try {
                            fileLock.release();
                        } catch (Exception unused6) {
                        }
                    }
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception unused7) {
                        }
                    }
                    return str2;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileLock != null) {
                        try {
                            fileLock.release();
                        } catch (Exception unused8) {
                        }
                    }
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception unused9) {
                        }
                    }
                    throw th;
                }
            }
            return str2;
        } catch (Exception unused10) {
            randomAccessFile = null;
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    public static boolean a(String str) {
        int length;
        if (str != null && (length = str.length()) >= 13 && length <= 128) {
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i2);
                if ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'f') && ((charAt < 'A' || charAt > 'F') && charAt != '-'))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public static String a() {
        StringBuilder sb = new StringBuilder();
        try {
            if (b0.t()) {
                sb.append("MIUI-");
            } else if (b0.q()) {
                sb.append("FLYME-");
            } else {
                String f2 = b0.f();
                if (b0.d(f2)) {
                    sb.append("EMUI-");
                }
                if (!TextUtils.isEmpty(f2)) {
                    sb.append(f2);
                    sb.append("-");
                }
            }
            sb.append(Build.VERSION.INCREMENTAL);
        } catch (Exception unused) {
        }
        return sb.toString();
    }
}
