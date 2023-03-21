package com.ss.android.downloadlib.addownload.b;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.j;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes7.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public static volatile d f11595a;
    public static final String[] c = {"com", "android", "ss"};
    public static final int[] d = {3101, 3102, 3103, 3201, 3202, 3203};
    public final LinkedList<a> b = new LinkedList<>();

    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f11596a;
        public final int b;
        public final String c;
        public final String d;
        public final long e;

        public a(String str, int i, String str2, String str3, long j) {
            this.f11596a = str;
            this.b = i;
            this.c = str2 != null ? str2.toLowerCase() : null;
            this.d = str3 != null ? str3.toLowerCase() : null;
            this.e = j;
        }
    }

    public static d a() {
        if (f11595a == null) {
            synchronized (d.class) {
                if (f11595a == null) {
                    f11595a = new d();
                }
            }
        }
        return f11595a;
    }

    private a c(String str) {
        try {
            PackageManager packageManager = j.getContext().getPackageManager();
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            if (packageInfo != null) {
                return new a(str, packageInfo.versionCode, packageInfo.versionName, (String) packageManager.getApplicationLabel(packageInfo.applicationInfo), System.currentTimeMillis());
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void b(String str) {
        b();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.b) {
            Iterator<a> it = this.b.iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().f11596a)) {
                    it.remove();
                    return;
                }
            }
        }
    }

    public void a(String str) {
        a c2;
        b();
        if (TextUtils.isEmpty(str) || (c2 = c(str)) == null) {
            return;
        }
        synchronized (this.b) {
            this.b.add(c2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0096, code lost:
        r7[1] = r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.util.Pair<com.ss.android.downloadlib.addownload.b.d.a, java.lang.Integer> b(com.ss.android.downloadad.api.a.b r19) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.android.downloadlib.addownload.b.d.b(com.ss.android.downloadad.api.a.b):android.util.Pair");
    }

    public a a(com.ss.android.downloadad.api.a.b bVar) {
        if (bVar == null) {
            return null;
        }
        b();
        synchronized (this.b) {
            Iterator<a> it = this.b.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.e > bVar.C()) {
                    return next;
                }
            }
            return null;
        }
    }

    public static boolean a(String str, String str2) {
        String[] split;
        String[] split2;
        boolean z;
        try {
            split = str.split("\\.");
            split2 = str2.split("\\.");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (split.length != 0 && split2.length != 0) {
            int i = 0;
            int i2 = 0;
            for (String str3 : split) {
                String[] strArr = c;
                int length = strArr.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z = false;
                        break;
                    }
                    String str4 = strArr[i3];
                    if (str4.equals(str3)) {
                        if (i < split2.length && str4.equals(split2[i])) {
                            i++;
                        }
                        z = true;
                    } else {
                        i3++;
                    }
                }
                if (!z) {
                    int i4 = i2;
                    int i5 = i;
                    while (i < split2.length) {
                        if (str3.equals(split2[i])) {
                            if (i == i5) {
                                i5++;
                            }
                            i4++;
                            if (i4 >= 2) {
                                return true;
                            }
                        }
                        i++;
                    }
                    i = i5;
                    i2 = i4;
                }
            }
            return false;
        }
        return false;
    }

    private void b() {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.b) {
            Iterator<a> it = this.b.iterator();
            while (it.hasNext() && currentTimeMillis - it.next().e > 1800000) {
                it.remove();
            }
        }
    }
}
