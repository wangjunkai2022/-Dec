package com.bytedance.pangle.c;

import android.app.Application;
import android.os.Environment;
import android.text.TextUtils;
import com.bytedance.pangle.GlobalParam;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusConstants;
import java.io.File;
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static File f11298a;
    public static File b;
    public static File c;

    public static String a(File file) {
        if (file != null) {
            if (!file.exists()) {
                file.mkdirs();
            }
            return file.getPath();
        }
        return null;
    }

    public static String b() {
        Application appApplication = Zeus.getAppApplication();
        if (c == null) {
            File filesDir = appApplication.getFilesDir();
            c = new File(filesDir, "." + ZeusConstants.BASE_LIB_NAME + ZeusConstants.f11287a);
        }
        return a(c);
    }

    public static String c() {
        Application appApplication = Zeus.getAppApplication();
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                File externalFilesDir = appApplication.getExternalFilesDir("." + ZeusConstants.BASE_LIB_NAME + ZeusConstants.b);
                if (externalFilesDir != null) {
                    return a(externalFilesDir);
                }
                return null;
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void d() {
        if (f11298a == null) {
            File filesDir = Zeus.getAppApplication().getFilesDir();
            File file = new File(filesDir, ZeusConstants.BASE_LIB_NAME + ZeusConstants.c);
            f11298a = file;
            a(file);
        }
    }

    public static String a(String... strArr) {
        d();
        File file = f11298a;
        if (strArr.length > 0) {
            for (String str : strArr) {
                if (!TextUtils.isEmpty(str)) {
                    file = new File(file, str);
                }
            }
        }
        return a(file);
    }

    public static String d(String str, int i) {
        return a(str, "version-".concat(String.valueOf(i)), "lib");
    }

    public static String b(String str, int i) {
        return new File(a(str, "version-".concat(String.valueOf(i)), "apk"), "base-1.apk").getPath();
    }

    public static String c(String str, int i) {
        return a(str, "version-".concat(String.valueOf(i)), "dalvik-cache");
    }

    public static String a() {
        Application appApplication = Zeus.getAppApplication();
        if (b == null) {
            File downloadDir = GlobalParam.getInstance().getDownloadDir();
            if (downloadDir == null) {
                File filesDir = appApplication.getFilesDir();
                downloadDir = new File(filesDir, "." + ZeusConstants.BASE_LIB_NAME + ZeusConstants.b);
            }
            b = downloadDir;
        }
        return a(b);
    }

    public static String a(String str, int i) {
        d();
        File file = f11298a;
        String[] strArr = {str, "version-".concat(String.valueOf(i))};
        for (int i2 = 0; i2 < 2; i2++) {
            String str2 = strArr[i2];
            if (!TextUtils.isEmpty(str2)) {
                file = new File(file, str2);
            }
        }
        if (file != null) {
            return file.getPath();
        }
        return null;
    }

    public static String a(String str) {
        return a(str);
    }
}
