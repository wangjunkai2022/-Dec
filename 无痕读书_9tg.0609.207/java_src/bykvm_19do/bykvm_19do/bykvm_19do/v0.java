package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.IBinder;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import bykvm_19do.bykvm_19do.bykvm_19do.a1;
import bykvm_19do.bykvm_19do.bykvm_19do.h1;
import bykvm_19do.bykvm_19do.bykvm_19do.j1;
import com.huawei.hms.ads.identifier.AdvertisingIdClient;
/* loaded from: classes8.dex */
public final class v0 implements a1 {

    /* renamed from: a  reason: collision with root package name */
    public static final o0<Boolean> f10653a = new a();

    /* loaded from: classes8.dex */
    public static class a extends o0<Boolean> {
        @Override // bykvm_19do.bykvm_19do.bykvm_19do.o0
        /* renamed from: c */
        public Boolean a(Object... objArr) {
            return Boolean.valueOf(u0.a((Context) objArr[0], "com.huawei.hwid"));
        }
    }

    /* loaded from: classes8.dex */
    public static class c extends a1.a {
        public long c = 0;
    }

    public static boolean d(Context context) {
        if (context == null) {
            return false;
        }
        return f10653a.b(context).booleanValue();
    }

    public static int e(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.huawei.hwid", 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return 0;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    @Nullable
    public static Pair<String, Boolean> f(Context context) {
        return (Pair) new j1(context, new Intent("com.uodis.opendevice.OPENIDS_SERVICE").setPackage("com.huawei.hwid"), new b()).a();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public boolean a(Context context) {
        return d(context);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    @Nullable
    @WorkerThread
    /* renamed from: c */
    public c b(Context context) {
        c cVar = new c();
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                String string = Settings.Global.getString(context.getContentResolver(), AdvertisingIdClient.SETTINGS_AD_ID);
                String string2 = Settings.Global.getString(context.getContentResolver(), AdvertisingIdClient.SETTINGS_TRACK_LIMIT);
                if (!TextUtils.isEmpty(string)) {
                    cVar.f10613a = string;
                    cVar.b = Boolean.parseBoolean(string2);
                    cVar.c = 202003021704L;
                    return cVar;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        Pair<String, Boolean> f = f(context);
        if (f != null) {
            cVar.f10613a = (String) f.first;
            cVar.b = ((Boolean) f.second).booleanValue();
            cVar.c = e(context);
        }
        return cVar;
    }

    /* loaded from: classes8.dex */
    public static class b implements j1.b<h1, Pair<String, Boolean>> {
        @Override // bykvm_19do.bykvm_19do.bykvm_19do.j1.b
        /* renamed from: b */
        public h1 a(IBinder iBinder) {
            return h1.a.a(iBinder);
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.j1.b
        public Pair<String, Boolean> a(h1 h1Var) {
            if (h1Var == null) {
                return null;
            }
            return new Pair<>(h1Var.a(), Boolean.valueOf(h1Var.c()));
        }
    }
}
