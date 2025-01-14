package com.bytedance.pangle.util;

import android.app.Application;
import android.content.SharedPreferences;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.ZeusConstants;
import com.bytedance.pangle.log.ZeusLogger;
import java.util.Locale;

/* loaded from: classes8.dex */
public class l {
    public static volatile l b;

    /* renamed from: a  reason: collision with root package name */
    public SharedPreferences f11391a;

    public l() {
        Application appApplication = Zeus.getAppApplication();
        this.f11391a = appApplication.getSharedPreferences(ZeusConstants.BASE_LIB_NAME + "_meta_data_sp", 0);
    }

    public static l a() {
        if (b == null) {
            synchronized (l.class) {
                if (b == null) {
                    b = new l();
                }
            }
        }
        return b;
    }

    public final String b(String str) {
        String string = this.f11391a.getString("HOST_IDENTITY_".concat(String.valueOf(str)), "");
        ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils getHostIdentity pluginPKg = " + str + ", hostIdentity = " + string);
        return string;
    }

    public final int a(String str) {
        int i = this.f11391a.getInt("PLUGIN_API_VERSION_".concat(String.valueOf(str)), 0);
        ZeusLogger.i(ZeusLogger.TAG_INIT, "ZeusSpUtils getPluginApiVersion pluginPKg = " + str + ", pluginApiVersion = " + i);
        return i;
    }

    public final void a(String str, int i, boolean z) {
        SharedPreferences.Editor edit = this.f11391a.edit();
        String str2 = "INSTALLED_" + str + "-" + i;
        if (z) {
            edit.putBoolean(str2, true);
        } else {
            edit.remove(str2);
        }
        edit.apply();
    }

    public final boolean a(String str, int i) {
        return this.f11391a.getBoolean(String.format(Locale.getDefault(), "INSTALLED_%s-%d", str, Integer.valueOf(i)), false);
    }
}
