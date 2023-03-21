package com.ss.android.download.api.c;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.downloadlib.addownload.j;
import com.umeng.analytics.pro.ak;

/* loaded from: classes8.dex */
public class a {
    public static boolean a(Uri uri) {
        if (uri == null) {
            return false;
        }
        String scheme = uri.getScheme();
        if (TextUtils.isEmpty(scheme)) {
            return false;
        }
        if (j.i().optInt("market_url_opt", 1) == 0) {
            return BaseConstants.SCHEME_MARKET.equals(scheme);
        }
        return BaseConstants.SCHEME_MARKET.equals(scheme) || "appmarket".equals(scheme) || "oaps".equals(scheme) || "oppomarket".equals(scheme) || "mimarket".equals(scheme) || "vivomarket".equals(scheme) || "vivoMarket".equals(scheme) || "gomarket".equals(scheme) || "goMarket".equals(scheme) || "mstore".equals(scheme) || "samsungapps".equals(scheme);
    }

    public static String b(@NonNull Uri uri) {
        return b.a(uri.getQueryParameter("id"), uri.getQueryParameter("packagename"), uri.getQueryParameter("pkg"), uri.getQueryParameter(ak.o), uri.getQueryParameter("appId"));
    }
}
