package com.ss.android.socialbase.appdownloader.f.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes7.dex */
public class e {
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
        r13 = r1.getInputStream(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006e, code lost:
        r4 = r1;
        r5 = r2;
        r1 = null;
        r13 = r13;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.content.pm.PackageInfo a(@androidx.annotation.NonNull java.io.File r13) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.socialbase.appdownloader.f.a.e.a(java.io.File):android.content.pm.PackageInfo");
    }

    public static String a(int i) {
        return (i >>> 24) == 1 ? "android:" : "";
    }

    public static PackageInfo b(@NonNull Context context, @NonNull File file, int i) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            a("unzip_getpackagearchiveinfo", "packageManager == null");
            return null;
        }
        try {
            return packageManager.getPackageArchiveInfo(file.getPath(), i);
        } catch (Throwable th) {
            StringBuilder m1016super = Cgoto.m1016super("pm.getPackageArchiveInfo failed: ");
            m1016super.append(th.getMessage());
            a("unzip_getpackagearchiveinfo", m1016super.toString());
            return null;
        }
    }

    public static PackageInfo a(@NonNull Context context, @NonNull File file, int i) {
        if (com.ss.android.socialbase.downloader.i.a.a(268435456) && Build.VERSION.SDK_INT < 26) {
            try {
                return a(file);
            } catch (Throwable th) {
                a("getPackageInfo::unzip_getpackagearchiveinfo", th.getMessage());
                return b(context, file, i);
            }
        }
        return b(context, file, i);
    }

    public static void a(@NonNull String str, @NonNull String str2) {
        com.ss.android.socialbase.downloader.d.b g = com.ss.android.socialbase.downloader.downloader.c.g();
        if (g == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("message", str2);
        } catch (JSONException unused) {
        }
        g.a(str, jSONObject, null, null);
    }

    public static String a(a aVar, int i) {
        int b = aVar.b(i);
        int c = aVar.c(i);
        if (b == 3) {
            return aVar.d(i);
        }
        return b == 2 ? String.format("?%s%08X", a(c), Integer.valueOf(c)) : (b < 16 || b > 31) ? String.format("<0x%X, type 0x%02X>", Integer.valueOf(c), Integer.valueOf(b)) : String.valueOf(c);
    }

    public static String a(Context context, PackageInfo packageInfo, String str) {
        ApplicationInfo applicationInfo;
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null) {
            return null;
        }
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        try {
            return applicationInfo.loadLabel(context.getPackageManager()).toString();
        } catch (OutOfMemoryError e) {
            a("getPackageInfo::fail_load_label", e.getMessage());
            return null;
        }
    }
}
