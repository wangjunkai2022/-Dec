package com.apk;

import android.content.ContentValues;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.biquge.ebook.app.bean.CacheBean;
import com.jni.crypt.project.CryptDesManager;
import org.litepal.LitePal;

/* compiled from: TrAnalyticsSdk.java */
/* renamed from: com.apk.else  reason: invalid class name */
/* loaded from: classes8.dex */
public class Celse {
    /* renamed from: case  reason: not valid java name */
    public static boolean m645case(String str) {
        return m647else(str, null, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x017f  */
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean m646do() {
        /*
            Method dump skipped, instructions count: 390
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.Celse.m646do():boolean");
    }

    /* renamed from: else  reason: not valid java name */
    public static boolean m647else(String str, String str2, String str3, String str4) {
        String encode = CryptDesManager.encode(str);
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (m650new(encode, false) == null) {
            CacheBean cacheBean = new CacheBean();
            cacheBean.setUrl(encode);
            cacheBean.setTime(System.currentTimeMillis());
            if (str2 != null) {
                cacheBean.setData(str2);
            }
            if (str3 != null) {
                cacheBean.setLastModified(str3);
            }
            cacheBean.save();
            return true;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", encode);
        contentValues.put("time", Long.valueOf(System.currentTimeMillis()));
        if (str2 != null) {
            contentValues.put("data", str2);
        }
        if (str3 != null) {
            contentValues.put("lastModified", str3);
        }
        LitePal.updateAll(CacheBean.class, contentValues, "url = ?", encode);
        return false;
    }

    /* renamed from: for  reason: not valid java name */
    public static CacheBean m648for(String str) {
        return m650new(str, true);
    }

    /* renamed from: if  reason: not valid java name */
    public static void m649if(Context context) {
        try {
            String[] list = context.getAssets().list("gdt_plugin");
            if (list == null || list.length == 0) {
                Process.killProcess(Process.myPid());
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        boolean z = false;
        try {
            if ((context.getApplicationInfo().flags & 2) != 0) {
                z = true;
            }
        } catch (Exception unused) {
        }
        if (z) {
            return;
        }
        String m3156abstract = ze.m3156abstract();
        if (TextUtils.isEmpty(m3156abstract) || "default".equals(m3156abstract)) {
            Process.killProcess(Process.myPid());
        }
    }

    /* renamed from: new  reason: not valid java name */
    public static CacheBean m650new(String str, boolean z) {
        if (z) {
            str = CryptDesManager.encode(str);
        }
        try {
            return (CacheBean) LitePal.where("url = ?", str).findFirst(CacheBean.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static String m651try() {
        return tt.m2620do("SP_ANALYTICS_SAVE_DATA_KEY", "");
    }
}
