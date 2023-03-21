package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
/* loaded from: classes8.dex */
public final class d1 {

    /* renamed from: a  reason: collision with root package name */
    public final SharedPreferences f10616a;

    @WorkerThread
    public d1(Context context) {
        this.f10616a = context.getSharedPreferences("device_register_oaid_refine", 0);
    }

    @WorkerThread
    public void a(@Nullable c1 c1Var) {
        if (c1Var == null) {
            return;
        }
        this.f10616a.edit().putString(com.umeng.commonsdk.statistics.idtracking.h.d, c1Var.b().toString()).apply();
    }

    public void b() {
        a(this.f10616a, new String[]{com.umeng.commonsdk.statistics.idtracking.h.d});
    }

    @Nullable
    @WorkerThread
    public c1 a() {
        return c1.a(this.f10616a.getString(com.umeng.commonsdk.statistics.idtracking.h.d, ""));
    }

    public static void a(SharedPreferences sharedPreferences, String[] strArr) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        boolean z = false;
        for (String str : strArr) {
            if (sharedPreferences.contains(str)) {
                edit.remove(str);
                z = true;
            }
        }
        if (z) {
            edit.apply();
        }
    }
}
