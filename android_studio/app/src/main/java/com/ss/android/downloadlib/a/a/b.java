package com.ss.android.downloadlib.a.a;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.j;
import org.litepal.crud.LitePalSupport;

/* loaded from: classes8.dex */
public class b {
    public static String a(Context context) {
        try {
            return a(c.a(a(), LitePalSupport.MD5));
        } catch (Exception unused) {
            return null;
        }
    }

    public static String b(Context context) {
        String str;
        try {
            str = Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.f12304a);
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        return TextUtils.isEmpty(str) ? "normal" : str;
    }

    public static String a() {
        return b(j.getContext());
    }

    public static String a(byte[] bArr) {
        return a.a(bArr);
    }
}
