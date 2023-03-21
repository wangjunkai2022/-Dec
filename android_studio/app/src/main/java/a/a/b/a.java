package a.a.b;

import a.b.a.a;
import a.d.a.a.e;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.lang.reflect.Method;

/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f10587a;
    public static boolean b;

    public static String a(Context context, String str) {
        a.e.a.b a2 = a.e.a.b.a(context);
        if (a2 == null) {
            return null;
        }
        String str2 = a.e.a.b.k;
        if (str2 != null) {
            return str2;
        }
        a2.a(2, str);
        if (a.e.a.b.e == null && a.e.a.b.k != null) {
            a.e.a.b.a(a.e.a.b.f10602a, 2, str);
        }
        return a.e.a.b.k;
    }

    public static final boolean a() {
        Context context = null;
        try {
            Method method = Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]);
            method.setAccessible(true);
            context = (Context) method.invoke(null, new Object[0]);
        } catch (Exception e) {
            e.toString();
        }
        if (context == null) {
            return false;
        }
        return e.a().a(context, false);
    }

    public static String b(Context context) {
        return (f10587a && b) ? a.b.C0005b.f10593a.a(f(context), "OUID") : "";
    }

    public static String b(Context context, String str) {
        a.e.a.b a2 = a.e.a.b.a(context);
        if (a2 == null) {
            return null;
        }
        String str2 = a.e.a.b.j;
        if (str2 != null) {
            return str2;
        }
        a2.a(1, str);
        if (a.e.a.b.d == null && a.e.a.b.j != null) {
            a.e.a.b.a(a.e.a.b.f10602a, 1, str);
        }
        return a.e.a.b.j;
    }

    public static String c(Context context) {
        a.e.a.b a2 = a.e.a.b.a(context);
        if (a2 == null) {
            return null;
        }
        String str = a.e.a.b.i;
        if (str != null) {
            return str;
        }
        a2.a(0, null);
        if (a.e.a.b.c == null) {
            a.e.a.b.a(a.e.a.b.f10602a, 0, null);
        }
        return a.e.a.b.i;
    }

    public static String d(Context context) {
        a.e.a.b a2 = a.e.a.b.a(context);
        if (a2 == null || Build.VERSION.SDK_INT == 28) {
            return null;
        }
        String str = a.e.a.b.j;
        if (str != null) {
            return str;
        }
        String packageName = a.e.a.b.f10602a.getPackageName();
        a2.a(1, packageName);
        if (a.e.a.b.d == null && a.e.a.b.j != null) {
            a.e.a.b.a(a.e.a.b.f10602a, 1, packageName);
        }
        return a.e.a.b.j;
    }

    public static void e(Context context) {
        if (f10587a) {
            return;
        }
        a.b bVar = a.b.C0005b.f10593a;
        Context f = f(context);
        if (bVar != null) {
            boolean z = false;
            try {
                PackageInfo packageInfo = f.getPackageManager().getPackageInfo("com.heytap.openid", 0);
                if (packageInfo != null) {
                    if (packageInfo.versionCode >= 1) {
                        z = true;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            b = z;
            f10587a = true;
            return;
        }
        throw null;
    }

    public static Context f(Context context) {
        return (context == null || context.getApplicationContext() == null) ? context : context.getApplicationContext();
    }

    public static String a(Context context) {
        a.e.a.b a2 = a.e.a.b.a(context);
        if (a2 == null || Build.VERSION.SDK_INT == 28) {
            return null;
        }
        String str = a.e.a.b.k;
        if (str != null) {
            return str;
        }
        String packageName = a.e.a.b.f10602a.getPackageName();
        a2.a(2, packageName);
        if (a.e.a.b.e == null && a.e.a.b.k != null) {
            a.e.a.b.a(a.e.a.b.f10602a, 2, packageName);
        }
        return a.e.a.b.k;
    }
}
