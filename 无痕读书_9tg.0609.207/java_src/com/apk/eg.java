package com.apk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.webkit.WebSettings;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.SameTjHistory;
import com.biquge.ebook.app.bean.StoreConfigBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.codelibrary.R$string;
import com.expand.listen.bean.ListenDetail;
import com.expand.videoplayer.bean.VideoDetail;
import com.expand.videoplayer.ui.PlayWebViewActivity;
import com.lxj.xpopup.impl.ConfirmPopupView;
import com.manhua.data.bean.ComicBean;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Pattern;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* compiled from: ScreenUtils.java */
/* loaded from: classes8.dex */
public class eg {

    /* renamed from: do  reason: not valid java name */
    public static st<String, Object> f1043do;

    @RequiresPermission("android.permission.ACCESS_NETWORK_STATE")
    public static boolean a() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) AppContext.f6392case.getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || activeNetworkInfo.getType() != 1) ? false : true;
    }

    /* renamed from: abstract  reason: not valid java name */
    public static void m584abstract(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setFlags(268435456);
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
            if (context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0) {
                context.startActivity(intent);
            } else {
                Intent intent2 = new Intent();
                intent2.setFlags(268435456);
                intent2.setAction("android.intent.action.VIEW");
                intent2.setData(Uri.parse(str));
                context.startActivity(intent2);
            }
        } catch (Exception e) {
            e.printStackTrace();
            Intent intent3 = new Intent();
            intent3.setFlags(268435456);
            intent3.setAction("android.intent.action.VIEW");
            intent3.setData(Uri.parse(str));
            context.startActivity(intent3);
        }
    }

    public static void b(String str, ListenDetail listenDetail) {
        try {
            if (((SameTjHistory) LitePal.where("type = ? and sId = ?", str, listenDetail.getId()).findFirst(SameTjHistory.class)) == null) {
                SameTjHistory sameTjHistory = new SameTjHistory();
                sameTjHistory.setType(str);
                sameTjHistory.setsId(listenDetail.getId());
                sameTjHistory.setImg(listenDetail.getImg());
                sameTjHistory.setName(listenDetail.getName());
                sameTjHistory.setDesc(listenDetail.getDesc());
                sameTjHistory.setData(Convert.toJson(listenDetail));
                sameTjHistory.setReadTime(System.currentTimeMillis());
                sameTjHistory.save();
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("readTime", Long.valueOf(System.currentTimeMillis()));
                LitePal.updateAll(SameTjHistory.class, contentValues, "type = ? and sId = ?", str, listenDetail.getId());
            }
            mf.m1712do("REFRESH_SAME_TJ_HISTORY_KEY", null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: break  reason: not valid java name */
    public static float m585break(float f) {
        return f * AppContext.f6392case.getResources().getDisplayMetrics().density;
    }

    public static void c(String str, VideoDetail videoDetail) {
        try {
            if (((SameTjHistory) LitePal.where("type = ? and sId = ?", str, videoDetail.getId()).findFirst(SameTjHistory.class)) == null) {
                SameTjHistory sameTjHistory = new SameTjHistory();
                sameTjHistory.setType(str);
                sameTjHistory.setsId(videoDetail.getId());
                sameTjHistory.setImg(videoDetail.getImg());
                sameTjHistory.setName(videoDetail.getName());
                sameTjHistory.setDesc(videoDetail.getDesc());
                sameTjHistory.setData(Convert.toJson(videoDetail));
                sameTjHistory.setReadTime(System.currentTimeMillis());
                sameTjHistory.save();
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("readTime", Long.valueOf(System.currentTimeMillis()));
                LitePal.updateAll(SameTjHistory.class, contentValues, "type = ? and sId = ?", str, videoDetail.getId());
            }
            mf.m1712do("REFRESH_SAME_TJ_HISTORY_KEY", null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: case  reason: not valid java name */
    public static boolean m586case(View view) {
        return !(view == null ? false : view.canScrollVertically(-1));
    }

    /* renamed from: catch  reason: not valid java name */
    public static int m587catch(float f) {
        return (int) (m585break(f) + 0.5f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
        if (r8 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0034, code lost:
        if (r8 == null) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0036, code lost:
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0039, code lost:
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003f  */
    /* renamed from: class  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m588class(android.content.Context r8, android.net.Uri r9, java.lang.String r10, java.lang.String[] r11) {
        /*
            java.lang.String r0 = "_data"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            r7 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            r6 = 0
            r2 = r9
            r4 = r10
            r5 = r11
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L2e
            if (r8 == 0) goto L29
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L3a
            if (r9 == 0) goto L29
            int r9 = r8.getColumnIndexOrThrow(r0)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L3a
            java.lang.String r9 = r8.getString(r9)     // Catch: java.lang.Exception -> L27 java.lang.Throwable -> L3a
            r8.close()
            return r9
        L27:
            r9 = move-exception
            goto L31
        L29:
            if (r8 == 0) goto L39
            goto L36
        L2c:
            r8 = move-exception
            goto L3d
        L2e:
            r8 = move-exception
            r9 = r8
            r8 = r7
        L31:
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L3a
            if (r8 == 0) goto L39
        L36:
            r8.close()
        L39:
            return r7
        L3a:
            r9 = move-exception
            r7 = r8
            r8 = r9
        L3d:
            if (r7 == 0) goto L42
            r7.close()
        L42:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.eg.m588class(android.content.Context, android.net.Uri, java.lang.String, java.lang.String[]):java.lang.String");
    }

    /* renamed from: const  reason: not valid java name */
    public static String m589const() {
        List<StoreConfigBean> list = Ccontinue.m379if().f707case;
        if (list != null) {
            for (StoreConfigBean storeConfigBean : list) {
                if ("tingshu".equals(storeConfigBean.getType())) {
                    return storeConfigBean.getPlay_page();
                }
            }
            return "";
        }
        return "";
    }

    /* renamed from: continue  reason: not valid java name */
    public static boolean m590continue(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("com.huawei.android.util.HwNotchSizeUtil");
            return ((Boolean) loadClass.getMethod("hasNotchInScreen", new Class[0]).invoke(loadClass, new Object[0])).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    public static void d(Context context, final String str, String str2, final ListenDetail listenDetail) {
        p0.m2011super("SP_TEMP_COMMEND_LISTENETAIL_KEY", listenDetail);
        String name = listenDetail.getName();
        String id = listenDetail.getId();
        PlayWebViewActivity.j(context, name, str2, m604native() + "/BookFiles/Html/" + ((Integer.parseInt(id) / 1000) + 1) + "/" + id + "/info.html", "tingshu");
        o m1921for = o.m1921for();
        Runnable runnable = new Runnable() { // from class: com.apk.xe
            @Override // java.lang.Runnable
            public final void run() {
                eg.b(str, listenDetail);
            }
        };
        ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(runnable);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b5, code lost:
        r0 = r3.getHardwareAddress();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b9, code lost:
        if (r0 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00bc, code lost:
        r2 = new java.lang.StringBuilder();
        r3 = r0.length;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c5, code lost:
        if (r5 >= r3) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00c7, code lost:
        r2.append(java.lang.String.format("%02X:", java.lang.Byte.valueOf(r0[r5])));
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e1, code lost:
        if (r2.length() <= 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e3, code lost:
        r2.deleteCharAt(r2.length() - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00eb, code lost:
        r0 = r2.toString().toLowerCase();
     */
    /* renamed from: default  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m591default(boolean r9, boolean r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.eg.m591default(boolean, boolean, boolean):java.lang.String");
    }

    /* renamed from: do  reason: not valid java name */
    public static String m592do(int i) {
        return i == 3 ? "gdt" : i == 2 ? "admob" : i == 1 ? "pangle" : i == 4 ? "mintegral" : i == 5 ? "unity" : i == 6 ? "baidu" : i == 7 ? "ks" : i == 8 ? "sigmob" : i == 9 ? "klevin" : i == -1 ? "custom" : "";
    }

    public static void e(Context context, final String str, String str2, final VideoDetail videoDetail) {
        p0.m2011super("SP_TEMP_COMMEND_VIDEODETAIL_KEY", videoDetail);
        String name = videoDetail.getName();
        String id = videoDetail.getId();
        PlayWebViewActivity.j(context, name, str2, m596finally() + "/BookFiles/Html/" + ((Integer.parseInt(id) / 1000) + 1) + "/" + id + "/info.html", "movie");
        o m1921for = o.m1921for();
        Runnable runnable = new Runnable() { // from class: com.apk.ye
            @Override // java.lang.Runnable
            public final void run() {
                eg.c(str, videoDetail);
            }
        };
        ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(runnable);
        }
    }

    @NonNull
    /* renamed from: else  reason: not valid java name */
    public static <T> T m593else(@Nullable T t, @NonNull String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: extends  reason: not valid java name */
    public static String m594extends() {
        String property;
        String m2620do = tt.m2620do("SP_UA_VALUE_KEY", "");
        if (TextUtils.isEmpty(m2620do)) {
            try {
                property = WebSettings.getDefaultUserAgent(AppContext.f6392case);
            } catch (Exception unused) {
                property = System.getProperty("http.agent");
            }
            StringBuffer stringBuffer = new StringBuffer();
            int length = property.length();
            for (int i = 0; i < length; i++) {
                char charAt = property.charAt(i);
                if (charAt <= 31 || charAt >= 127) {
                    stringBuffer.append(String.format("\\u%04x", Integer.valueOf(charAt)));
                } else {
                    stringBuffer.append(charAt);
                }
            }
            m2620do = stringBuffer.toString();
            if (!TextUtils.isEmpty(m2620do)) {
                tt.f4763do.putString("SP_UA_VALUE_KEY", m2620do);
            }
        }
        return m2620do;
    }

    public static void f(zs zsVar) {
        String str = zsVar.f6248if;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        if (TextUtils.isEmpty(str)) {
            zsVar.f6248if = m606package(R$string.dialog_tips_title_txt);
        }
        String str3 = zsVar.f6249new;
        if (str3 == null) {
            str3 = "";
        }
        if (TextUtils.isEmpty(str3)) {
            zsVar.f6249new = m606package(17039370);
        }
        String str4 = zsVar.f6239case;
        if (str4 == null) {
            str4 = "";
        }
        if (TextUtils.isEmpty(str4)) {
            zsVar.f6239case = m606package(17039360);
        }
        try {
            Context context = zsVar.getContext();
            lv lvVar = new lv();
            lvVar.f2930new = Boolean.valueOf(zsVar.f6238break);
            lvVar.f2924for = Boolean.valueOf(zsVar.f6241class);
            lvVar.f2926if = Boolean.valueOf(zsVar.f6242const);
            lvVar.f2941throw = new ct(zsVar);
            String str5 = zsVar.f6248if;
            if (str5 == null) {
                str5 = "";
            }
            String str6 = zsVar.f6246for;
            if (str6 == null) {
                str6 = "";
            }
            String str7 = zsVar.f6239case;
            if (str7 == null) {
                str7 = "";
            }
            String str8 = zsVar.f6249new;
            if (str8 != null) {
                str2 = str8;
            }
            at atVar = new at(zsVar);
            bt btVar = new bt(zsVar);
            boolean z = zsVar.f6240catch;
            lvVar.f2917continue = zu.f6266try;
            ConfirmPopupView confirmPopupView = new ConfirmPopupView(context, 0);
            confirmPopupView.f9575else = str5;
            confirmPopupView.f9577goto = str6;
            confirmPopupView.f9580this = null;
            confirmPopupView.f9569break = str7;
            confirmPopupView.f9571catch = str2;
            confirmPopupView.f9574do = btVar;
            confirmPopupView.f9578if = atVar;
            confirmPopupView.f9573const = z;
            confirmPopupView.popupInfo = lvVar;
            confirmPopupView.show();
        } catch (Exception unused) {
        }
    }

    /* renamed from: final  reason: not valid java name */
    public static String m595final() {
        List<StoreConfigBean> list = Ccontinue.m379if().f707case;
        if (list != null) {
            for (StoreConfigBean storeConfigBean : list) {
                if ("movie".equals(storeConfigBean.getType())) {
                    return storeConfigBean.getPlay_page();
                }
            }
            return "";
        }
        return "";
    }

    /* renamed from: finally  reason: not valid java name */
    public static String m596finally() {
        List<StoreConfigBean> list = Ccontinue.m379if().f707case;
        if (list != null) {
            for (StoreConfigBean storeConfigBean : list) {
                if ("movie".equals(storeConfigBean.getType())) {
                    return storeConfigBean.getData_yu();
                }
            }
            return "";
        }
        return "";
    }

    /* renamed from: for  reason: not valid java name */
    public static String m597for(int i, int i2, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, int i3) {
        switch (i) {
            case 1:
                return "Banner";
            case 2:
                return "Interstitial";
            case 3:
            case 4:
                return "Splash";
            case 5:
                if (iVar != null) {
                    int s = iVar.s();
                    if (s == 1) {
                        return "Native-模板渲染";
                    }
                    if (s == 2) {
                        return "Native-自渲染";
                    }
                }
                return i3 == 1 ? "Native-模板渲染" : "Native-自渲染";
            case 6:
            default:
                return null;
            case 7:
                return "RewardVideo";
            case 8:
                return "FullVideo";
            case 9:
                return "NativeDraw";
            case 10:
                if (i2 == 1) {
                    return "InterstitialFull—Interstitial";
                }
                if (i2 == 2) {
                    return "InterstitialFull—FullVideo";
                }
                return null;
        }
    }

    public static void g(Context context, String str, ft ftVar, gt gtVar, et etVar) {
        m(context, null, str, null, ftVar, null, null, gtVar, etVar, true);
    }

    /* renamed from: goto  reason: not valid java name */
    public static boolean m598goto(String str) {
        boolean contains;
        st<String, Object> stVar = f1043do;
        if (stVar != null) {
            synchronized (stVar) {
                contains = stVar.f4578if.contains(str);
            }
            return contains;
        }
        return false;
    }

    public static void h(Context context, String str, ft ftVar) {
        j(context, str, null, true, false);
    }

    public static void i(Context context, String str, ft ftVar, dt dtVar, boolean z) {
        k(context, null, str, null, ftVar, null, null, z);
    }

    /* renamed from: if  reason: not valid java name */
    public static String m599if(int i, int i2) {
        switch (i) {
            case 1:
                return "Banner";
            case 2:
                return "Interstitial";
            case 3:
            case 4:
                return "Splash";
            case 5:
                return "Native";
            case 6:
            default:
                return null;
            case 7:
                return "RewardVideo";
            case 8:
                return "FullVideo";
            case 9:
                return "Draw";
            case 10:
                if (i2 == 1) {
                    return "Interstitial";
                }
                if (i2 == 2) {
                    return "FullVideo";
                }
                return null;
        }
    }

    /* renamed from: implements  reason: not valid java name */
    public static boolean m600implements() {
        NetworkInfo networkInfo = null;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) AppContext.f6392case.getSystemService("connectivity");
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            }
        } catch (Exception unused) {
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    @TargetApi(19)
    /* renamed from: import  reason: not valid java name */
    public static String m601import(Context context, Uri uri) {
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if ("com.android.externalstorage.documents".equals(uri.getAuthority())) {
                String[] split = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(split[0])) {
                    return Environment.getExternalStorageDirectory() + "/" + split[1];
                }
            } else if ("com.android.providers.downloads.documents".equals(uri.getAuthority())) {
                return m588class(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
            } else {
                if ("com.android.providers.media.documents".equals(uri.getAuthority())) {
                    String[] split2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str = split2[0];
                    if ("image".equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if ("video".equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return m588class(context, uri2, "_id=?", new String[]{split2[1]});
                }
            }
        } else if ("content".equalsIgnoreCase(uri.getScheme())) {
            if ("com.google.android.apps.photos.content".equals(uri.getAuthority())) {
                return uri.getLastPathSegment();
            }
            return m588class(context, uri, null, null);
        } else if ("file".equalsIgnoreCase(uri.getScheme())) {
            return uri.getPath();
        }
        return null;
    }

    /* renamed from: instanceof  reason: not valid java name */
    public static boolean m602instanceof(CharSequence charSequence) {
        return m608protected("^[1][0-9][0-9]{9}$", charSequence);
    }

    /* renamed from: interface  reason: not valid java name */
    public static boolean m603interface(Activity activity) {
        boolean z;
        if (activity != null) {
            if (m621volatile(activity) || m590continue(activity)) {
                return true;
            }
            try {
                z = activity.getPackageManager().hasSystemFeature("com.oppo.feature.screen.heteromorphism");
            } catch (Exception unused) {
                z = false;
            }
            if (z || m612strictfp(activity)) {
                return true;
            }
            if (m617throw(activity) != null) {
                return true;
            }
        }
        return false;
    }

    public static void j(Context context, String str, ft ftVar, boolean z, boolean z2) {
        zs zsVar = new zs();
        zsVar.f6243do = context;
        zsVar.f6246for = str;
        zsVar.f6251try = ftVar;
        zsVar.f6240catch = true;
        zsVar.f6241class = z;
        zsVar.f6242const = z;
        zsVar.f6245final = z2;
        f(zsVar);
    }

    public static void k(Context context, String str, String str2, String str3, ft ftVar, dt dtVar, et etVar, boolean z) {
        l(context, str, str2, str3, ftVar, null, dtVar, null, z);
    }

    public static void l(Context context, String str, String str2, String str3, ft ftVar, String str4, dt dtVar, et etVar, boolean z) {
        m(context, str, str2, str3, ftVar, str4, dtVar, null, etVar, z);
    }

    public static void m(Context context, String str, String str2, String str3, ft ftVar, String str4, dt dtVar, gt gtVar, et etVar, boolean z) {
        zs zsVar = new zs();
        zsVar.f6243do = context;
        zsVar.f6248if = str;
        zsVar.f6246for = str2;
        zsVar.f6249new = str3;
        zsVar.f6251try = ftVar;
        zsVar.f6239case = str4;
        zsVar.f6244else = dtVar;
        zsVar.f6247goto = gtVar;
        zsVar.f6250this = etVar;
        zsVar.f6242const = z;
        zsVar.f6241class = z;
        f(zsVar);
    }

    public static boolean n(String str, String str2, String str3) {
        ff0 ff0Var;
        try {
            re0 re0Var = new re0(str);
            if (re0Var.m2259if()) {
                re0Var.m2260new(str3);
            }
            re0Var.m2257do(str2);
            re0Var.m2258for();
            of0 of0Var = re0Var.f4039for;
            if (of0Var != null && (ff0Var = of0Var.f3405do) != null) {
                ArrayList arrayList = ff0Var.f1289do;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: native  reason: not valid java name */
    public static String m604native() {
        List<StoreConfigBean> list = Ccontinue.m379if().f707case;
        if (list != null) {
            for (StoreConfigBean storeConfigBean : list) {
                if ("tingshu".equals(storeConfigBean.getType())) {
                    return storeConfigBean.getData_yu();
                }
            }
            return "";
        }
        return "";
    }

    /* renamed from: new  reason: not valid java name */
    public static String m605new(String str) {
        return TextUtils.isEmpty(str) ? str : str.equalsIgnoreCase("gdt") ? "gdt" : str.equalsIgnoreCase("admob") ? "admob" : str.equalsIgnoreCase("pangle") ? "pangle" : str.equalsIgnoreCase("mintegral") ? "mintegral" : str.equalsIgnoreCase("unity") ? "unity" : str.equalsIgnoreCase("baidu") ? "baidu" : str.equalsIgnoreCase("ks") ? "ks" : str.equalsIgnoreCase("sigmob") ? "sigmob" : str.equalsIgnoreCase("klevin") ? "klevin" : str;
    }

    public static void o(String str, String str2, String str3, String str4, String str5) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("cname", str3);
            contentValues.put("protxt", str4);
            contentValues.put("historyData", str5);
            LitePal.updateAll(SameTjHistory.class, contentValues, "type = ? and sId = ?", str, str2);
            mf.m1712do("REFRESH_SAME_TJ_HISTORY_KEY", null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: package  reason: not valid java name */
    public static String m606package(int i) {
        return ys.getContext().getString(i);
    }

    /* renamed from: private  reason: not valid java name */
    public static void m607private(Context context, et etVar) {
        ze.d0(context, ze.q(R.string.cache_tips_title_txt), ze.q(R.string.cache_tips_no_network_txt), ze.q(R.string.cache_setting_network_txt), new ig(context), null, etVar, true);
    }

    /* renamed from: protected  reason: not valid java name */
    public static boolean m608protected(String str, CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0 && Pattern.matches(str, charSequence);
    }

    /* renamed from: public  reason: not valid java name */
    public static String m609public() {
        return tt.m2620do("CODE_SP_OAID_KEY", "");
    }

    /* renamed from: return  reason: not valid java name */
    public static SameTjHistory m610return(String str, String str2) {
        return (SameTjHistory) LitePal.where("type = ? and sId = ?", str, str2).findFirst(SameTjHistory.class);
    }

    /* renamed from: static  reason: not valid java name */
    public static int m611static() {
        return AppContext.f6392case.getResources().getDisplayMetrics().heightPixels;
    }

    /* renamed from: strictfp  reason: not valid java name */
    public static boolean m612strictfp(Context context) {
        try {
            Class<?> loadClass = context.getClassLoader().loadClass("android.util.FtFeature");
            return ((Boolean) loadClass.getMethod("isFeatureSupport", Integer.TYPE).invoke(loadClass, 32)).booleanValue();
        } catch (ClassNotFoundException | NoSuchMethodException | Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003e, code lost:
        r3 = (android.telephony.TelephonyManager) com.apk.ys.getContext().getSystemService("phone");
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004a, code lost:
        if (r3 == null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0054, code lost:
        if (android.text.TextUtils.isEmpty(r3.getImei()) == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0056, code lost:
        r1 = r3.getDeviceId();
     */
    /* renamed from: super  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m613super() {
        /*
            java.lang.String r0 = "CODE_SP_DEVICEID_KEY"
            java.lang.String r1 = ""
            java.lang.String r2 = com.apk.tt.m2620do(r0, r1)
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto Lf
            return r2
        Lf:
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L1b
            if (r3 == 0) goto L1b
            java.lang.String r3 = "CODE_SP_OAID_KEY"
            java.lang.String r2 = com.apk.tt.m2620do(r3, r1)     // Catch: java.lang.Exception -> L1b
        L1b:
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L60
            if (r3 == 0) goto L60
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L5b
            r4 = 29
            if (r3 >= r4) goto L5f
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L5b
            r4 = 23
            r5 = 1
            if (r3 < r4) goto L3c
            android.content.Context r3 = com.apk.ys.getContext()     // Catch: java.lang.Exception -> L5b
            java.lang.String r4 = "android.permission.READ_PHONE_STATE"
            int r3 = androidx.core.content.ContextCompat.checkSelfPermission(r3, r4)     // Catch: java.lang.Exception -> L5b
            if (r3 != 0) goto L3b
            goto L3c
        L3b:
            r5 = 0
        L3c:
            if (r5 == 0) goto L5f
            android.content.Context r3 = com.apk.ys.getContext()     // Catch: java.lang.Exception -> L5b
            java.lang.String r4 = "phone"
            java.lang.Object r3 = r3.getSystemService(r4)     // Catch: java.lang.Exception -> L5b
            android.telephony.TelephonyManager r3 = (android.telephony.TelephonyManager) r3     // Catch: java.lang.Exception -> L5b
            if (r3 == 0) goto L5f
            java.lang.String r4 = r3.getImei()     // Catch: java.lang.Exception -> L5b
            boolean r4 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L5b
            if (r4 == 0) goto L5f
            java.lang.String r1 = r3.getDeviceId()     // Catch: java.lang.Exception -> L5b
            goto L5f
        L5b:
            r3 = move-exception
            r3.printStackTrace()     // Catch: java.lang.Exception -> L60
        L5f:
            r2 = r1
        L60:
            boolean r1 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L6c
            if (r1 == 0) goto L70
            java.lang.String r1 = m618throws()     // Catch: java.lang.Exception -> L70
            r2 = r1
            goto L70
        L6c:
            r1 = move-exception
            r1.printStackTrace()
        L70:
            com.tencent.mmkv.MMKV r1 = com.apk.tt.f4763do
            r1.putString(r0, r2)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.eg.m613super():java.lang.String");
    }

    /* renamed from: switch  reason: not valid java name */
    public static int m614switch() {
        return AppContext.f6392case.getResources().getDisplayMetrics().widthPixels;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static boolean m615synchronized(int i, int i2) {
        return i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384;
    }

    /* renamed from: this  reason: not valid java name */
    public static ComicBean m616this(Book book) {
        ComicBean comicBean = new ComicBean();
        if (book != null) {
            comicBean.setId(book.getId());
            comicBean.setName(book.getName());
            comicBean.setImg(book.getImg());
            comicBean.setLastChapter(book.getLastChapter());
            comicBean.setLastChapterId(book.getLastChapterId());
            comicBean.setFirstChapterId(book.getFirstChapterId());
            comicBean.setLastTime(book.getLastTime());
            comicBean.setUpdateTime(book.getUpdateTime());
            comicBean.setAuthor(book.getAuthor());
            comicBean.setDesc(book.getDesc());
            comicBean.setCName(book.getCName());
        }
        return comicBean;
    }

    /* renamed from: throw  reason: not valid java name */
    public static DisplayCutout m617throw(Activity activity) {
        Window window;
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT < 28 || activity == null || (window = activity.getWindow()) == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null) {
            return null;
        }
        return rootWindowInsets.getDisplayCutout();
    }

    /* renamed from: throws  reason: not valid java name */
    public static String m618throws() {
        return m591default(true, true, true);
    }

    /* renamed from: transient  reason: not valid java name */
    public static boolean m619transient(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* renamed from: try  reason: not valid java name */
    public static void m620try(boolean z, @NonNull String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0041 A[ORIG_RETURN, RETURN] */
    /* renamed from: volatile  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m621volatile(android.content.Context r6) {
        /*
            java.lang.String r0 = android.os.Build.MANUFACTURER
            java.lang.String r1 = "Xiaomi"
            boolean r0 = r1.equals(r0)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L3e
            java.lang.ClassLoader r6 = r6.getClassLoader()     // Catch: java.lang.Throwable -> L3e
            java.lang.String r0 = "android.os.SystemProperties"
            java.lang.Class r6 = r6.loadClass(r0)     // Catch: java.lang.Throwable -> L3e
            java.lang.String r0 = "getInt"
            r3 = 2
            java.lang.Class[] r4 = new java.lang.Class[r3]     // Catch: java.lang.Throwable -> L3e
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r4[r1] = r5     // Catch: java.lang.Throwable -> L3e
            java.lang.Class r5 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> L3e
            r4[r2] = r5     // Catch: java.lang.Throwable -> L3e
            java.lang.reflect.Method r0 = r6.getMethod(r0, r4)     // Catch: java.lang.Throwable -> L3e
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L3e
            java.lang.String r4 = "ro.miui.notch"
            r3[r1] = r4     // Catch: java.lang.Throwable -> L3e
            java.lang.Integer r4 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L3e
            r3[r2] = r4     // Catch: java.lang.Throwable -> L3e
            java.lang.Object r6 = r0.invoke(r6, r3)     // Catch: java.lang.Throwable -> L3e
            java.lang.Integer r6 = (java.lang.Integer) r6     // Catch: java.lang.Throwable -> L3e
            int r6 = r6.intValue()     // Catch: java.lang.Throwable -> L3e
            goto L3f
        L3e:
            r6 = 0
        L3f:
            if (r6 != r2) goto L42
            r1 = 1
        L42:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.eg.m621volatile(android.content.Context):boolean");
    }

    /* renamed from: while  reason: not valid java name */
    public static String m622while(String str, String str2, String str3, String str4, String str5, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(m596finally());
        sb.append("/Categories/");
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        Cgoto.m993continue(sb, "/", str3, "/", str4);
        sb.append("/");
        sb.append(str5);
        sb.append("/");
        sb.append(i);
        sb.append(".html");
        return sb.toString();
    }
}
