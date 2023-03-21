package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import org.json.JSONObject;
/* compiled from: Storage.java */
/* loaded from: classes8.dex */
public class n {
    public static long a(Context context) {
        try {
            return a(context.getFilesDir().getParentFile());
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static long b() {
        try {
            return c(Environment.getRootDirectory());
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static JSONObject c(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("inner_app_used", a(context));
            jSONObject.put("inner_free", a());
            jSONObject.put("inner_total", b());
            jSONObject.put("sdcard_app_used", b(context));
            jSONObject.put("sdcard_free", c());
            jSONObject.put("sdcard_total", d());
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static long d() {
        try {
            if (e()) {
                return Environment.getExternalStorageDirectory().getTotalSpace();
            }
            return 0L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static boolean e() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    public static long b(Context context) {
        File externalFilesDir;
        try {
            if (!e() || (externalFilesDir = context.getExternalFilesDir(null)) == null) {
                return 0L;
            }
            return a(externalFilesDir.getParentFile());
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static long a() {
        try {
            return b(Environment.getRootDirectory());
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static long a(File file) {
        long length;
        File[] listFiles = file.listFiles();
        long j = 0;
        if (listFiles == null) {
            return 0L;
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                length = a(file2);
            } else {
                length = file2.length();
            }
            j = length + j;
        }
        return j;
    }

    public static long b(File file) {
        try {
            return new StatFs(file.getPath()).getFreeBytes();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static long c() {
        try {
            if (e()) {
                return Environment.getExternalStorageDirectory().getFreeSpace();
            }
            return 0L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static long c(File file) {
        try {
            return new StatFs(file.getPath()).getTotalBytes();
        } catch (Throwable unused) {
            return 0L;
        }
    }
}
