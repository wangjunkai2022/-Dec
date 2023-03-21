package com.ss.android.socialbase.appdownloader;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import com.apk.Cgoto;
/* loaded from: classes7.dex */
public final class g {

    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f11782a;
        public String b;
        public Drawable c;
        public String d;
        public String e;
        public int f;
        public boolean g;

        public a(String str, String str2, Drawable drawable, String str3, String str4, int i, boolean z) {
            b(str2);
            a(drawable);
            a(str);
            c(str3);
            d(str4);
            a(i);
            a(z);
        }

        public Drawable a() {
            return this.c;
        }

        public boolean b() {
            return this.g;
        }

        public String c() {
            return this.f11782a;
        }

        public String d() {
            return this.b;
        }

        public String e() {
            return this.d;
        }

        public int f() {
            return this.f;
        }

        public String g() {
            return this.e;
        }

        public String toString() {
            StringBuilder m1016super = Cgoto.m1016super("{\n  pkg name: ");
            m1016super.append(c());
            m1016super.append("\n  app icon: ");
            m1016super.append(a());
            m1016super.append("\n  app name: ");
            m1016super.append(d());
            m1016super.append("\n  app path: ");
            m1016super.append(e());
            m1016super.append("\n  app v name: ");
            m1016super.append(g());
            m1016super.append("\n  app v code: ");
            m1016super.append(f());
            m1016super.append("\n  is system: ");
            m1016super.append(b());
            m1016super.append("}");
            return m1016super.toString();
        }

        public void a(Drawable drawable) {
            this.c = drawable;
        }

        public void b(String str) {
            this.b = str;
        }

        public void c(String str) {
            this.d = str;
        }

        public void d(String str) {
            this.e = str;
        }

        public void a(boolean z) {
            this.g = z;
        }

        public void a(String str) {
            this.f11782a = str;
        }

        public void a(int i) {
            this.f = i;
        }
    }

    public static int a(String str) {
        if (c(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = com.ss.android.socialbase.downloader.downloader.c.N().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static a b(String str) {
        try {
            PackageManager packageManager = com.ss.android.socialbase.downloader.downloader.c.N().getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return a(packageManager, packageManager.getPackageInfo(str, 0));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean c(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static a a(PackageManager packageManager, PackageInfo packageInfo) {
        Drawable drawable = null;
        if (packageInfo == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        String str = packageInfo.packageName;
        String charSequence = applicationInfo.loadLabel(packageManager).toString();
        try {
            drawable = applicationInfo.loadIcon(packageManager);
        } catch (Exception unused) {
        }
        return new a(str, charSequence, drawable, applicationInfo.sourceDir, packageInfo.versionName, packageInfo.versionCode, (applicationInfo.flags & 1) != 0);
    }
}
