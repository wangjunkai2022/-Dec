package org.litepal.util;

import android.content.SharedPreferences;
import android.text.TextUtils;
import org.litepal.LitePalApplication;

/* loaded from: classes7.dex */
public class SharedUtil {
    public static final String LITEPAL_PREPS = "litepal_prefs";
    public static final String VERSION = "litepal_version";

    public static int getLastVersion(String str) {
        SharedPreferences sharedPreferences = LitePalApplication.getContext().getSharedPreferences(LITEPAL_PREPS, 0);
        if (TextUtils.isEmpty(str)) {
            return sharedPreferences.getInt(VERSION, 0);
        }
        if (str.endsWith(".db")) {
            str = str.replace(".db", "");
        }
        return sharedPreferences.getInt("litepal_version_" + str, 0);
    }

    public static void removeVersion(String str) {
        SharedPreferences.Editor edit = LitePalApplication.getContext().getSharedPreferences(LITEPAL_PREPS, 0).edit();
        if (TextUtils.isEmpty(str)) {
            edit.remove(VERSION);
        } else {
            if (str.endsWith(".db")) {
                str = str.replace(".db", "");
            }
            edit.remove("litepal_version_" + str);
        }
        edit.apply();
    }

    public static void updateVersion(String str, int i) {
        SharedPreferences.Editor edit = LitePalApplication.getContext().getSharedPreferences(LITEPAL_PREPS, 0).edit();
        if (TextUtils.isEmpty(str)) {
            edit.putInt(VERSION, i);
        } else {
            if (str.endsWith(".db")) {
                str = str.replace(".db", "");
            }
            edit.putInt("litepal_version_" + str, i);
        }
        edit.apply();
    }
}
