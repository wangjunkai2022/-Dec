package com.ss.android.socialbase.downloader.c;

import android.text.TextUtils;
import com.apk.Cgoto;

/* loaded from: classes7.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f11824a = 4;
    public static AbstractC0153a b;

    /* renamed from: com.ss.android.socialbase.downloader.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static abstract class AbstractC0153a {
        public void a(String str, String str2) {
        }

        public void a(String str, String str2, Throwable th) {
        }

        public void b(String str, String str2) {
        }

        public void c(String str, String str2) {
        }

        public void d(String str, String str2) {
        }

        public void e(String str, String str2) {
        }
    }

    public static void a(int i) {
        f11824a = i;
    }

    public static String b(String str) {
        return !TextUtils.isEmpty(str) ? Cgoto.m989case("Downloader-", str) : "DownloaderLogger";
    }

    public static void c(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f11824a <= 4) {
            b(str);
        }
        AbstractC0153a abstractC0153a = b;
        if (abstractC0153a != null) {
            abstractC0153a.c(b(str), str2);
        }
    }

    public static void d(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f11824a <= 5) {
            b(str);
        }
        AbstractC0153a abstractC0153a = b;
        if (abstractC0153a != null) {
            abstractC0153a.e(b(str), str2);
        }
    }

    public static void e(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f11824a <= 6) {
            b(str);
        }
        AbstractC0153a abstractC0153a = b;
        if (abstractC0153a != null) {
            abstractC0153a.d(b(str), str2);
        }
    }

    public static boolean a() {
        return f11824a <= 3;
    }

    public static void a(String str, String str2) {
        if (str2 == null) {
            return;
        }
        int i = f11824a;
        AbstractC0153a abstractC0153a = b;
        if (abstractC0153a != null) {
            abstractC0153a.a(b(str), str2);
        }
    }

    public static void b(String str, String str2) {
        if (str2 == null) {
            return;
        }
        if (f11824a <= 3) {
            b(str);
        }
        AbstractC0153a abstractC0153a = b;
        if (abstractC0153a != null) {
            abstractC0153a.b(b(str), str2);
        }
    }

    public static void c(String str) {
        d("DownloaderLogger", str);
    }

    public static void a(String str) {
        b("DownloaderLogger", str);
    }

    public static void a(String str, String str2, Throwable th) {
        if (str2 == null && th == null) {
            return;
        }
        if (f11824a <= 6) {
            b(str);
        }
        AbstractC0153a abstractC0153a = b;
        if (abstractC0153a != null) {
            abstractC0153a.a(b(str), str2, th);
        }
    }
}
