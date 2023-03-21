package com.apk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.RecyclerView;
import com.biquge.ebook.app.app.AppContext;
import com.bytedance.msdk.api.v2.GMAdConfig;
import com.bytedance.msdk.api.v2.GMConfigUserInfoForSegment;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.GMPangleOption;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.qq.e.comm.managers.GDTAdSdk;
import com.swl.gg.sdk.TrAdSdk;
import com.tr.comment.sdk.R$drawable;
import com.tr.comment.sdk.TrCommentSdk;
import java.lang.ref.SoftReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;
import javax.crypto.spec.IvParameterSpec;

/* compiled from: SwlAdSdk.java */
/* loaded from: classes7.dex */
public class k40 {

    /* renamed from: case  reason: not valid java name */
    public static boolean f2466case;

    /* renamed from: do  reason: not valid java name */
    public static r40 f2467do;

    /* renamed from: for  reason: not valid java name */
    public static boolean f2468for;

    /* renamed from: if  reason: not valid java name */
    public static ThreadPoolExecutor f2469if;

    /* renamed from: new  reason: not valid java name */
    public static boolean f2470new;
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: try  reason: not valid java name */
    public static SoftReference<Toast> f2471try;

    /* renamed from: abstract  reason: not valid java name */
    public static boolean m1436abstract(String str) {
        return "gdtjlsp".equals(str) || "gdtjlsp2.0".equals(str);
    }

    /* renamed from: break  reason: not valid java name */
    public static boolean m1437break(Context context, String str) {
        return (TextUtils.isEmpty(str) || context.getPackageManager().getLaunchIntentForPackage(str) == null) ? false : true;
    }

    /* renamed from: case  reason: not valid java name */
    public static String m1438case(int i, Object... objArr) {
        try {
            return TrCommentSdk.getAppContext().getString(i, objArr);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public static boolean m1439catch(CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0 && Pattern.matches("^[1][0-9][0-9]{9}$", charSequence);
    }

    /* renamed from: class  reason: not valid java name */
    public static boolean m1440class(String str) {
        return "csjsp".equals(str) || "csjnewcp".equals(str) || "csjnewsp".equals(str);
    }

    /* renamed from: const  reason: not valid java name */
    public static void m1441const(String str) {
        try {
            if (f2468for || TextUtils.isEmpty(str)) {
                return;
            }
            f2468for = true;
            GDTAdSdk.init(TrAdSdk.getApp(), str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: continue  reason: not valid java name */
    public static Application m1442continue() {
        r40 r40Var = f2467do;
        if (r40Var != null) {
            if (((y) r40Var) != null) {
                return AppContext.f6392case;
            }
            throw null;
        }
        return null;
    }

    /* renamed from: default  reason: not valid java name */
    public static boolean m1443default(String str) {
        return "gdtsp".equals(str) || "gdt2.0".equals(str) || "gdt2.0f".equals(str) || "gdtfull".equals(str);
    }

    /* renamed from: do  reason: not valid java name */
    public static int m1444do(int i) {
        return m1451if(TrCommentSdk.getAppContext(), i);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00fd A[Catch: Exception -> 0x01a1, TRY_LEAVE, TryCatch #2 {Exception -> 0x01a1, blocks: (B:3:0x0006, B:5:0x001d, B:7:0x002e, B:12:0x0046, B:27:0x00fd, B:38:0x0118, B:40:0x0128, B:42:0x0139, B:46:0x0144, B:48:0x0154, B:50:0x0165, B:52:0x016d, B:54:0x0183, B:56:0x0194, B:24:0x00f6, B:6:0x0028), top: B:65:0x0006 }] */
    /* renamed from: else  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m1445else(long r19) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.k40.m1445else(long):java.lang.String");
    }

    /* renamed from: extends  reason: not valid java name */
    public static boolean m1446extends() {
        NetworkInfo networkInfo = null;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) TrAdSdk.getApp().getSystemService("connectivity");
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            }
        } catch (Exception unused) {
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    @SuppressLint({"ShowToast"})
    /* renamed from: final  reason: not valid java name */
    public static void m1447final(String str) {
        boolean z = true;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            SoftReference<Toast> softReference = f2471try;
            if (softReference != null && softReference.get() != null) {
                z = false;
            }
            if (!z) {
                f2471try.get().cancel();
            }
            Toast makeText = Toast.makeText(TrAdSdk.getApp(), "", 0);
            makeText.setText(str);
            makeText.show();
            f2471try = new SoftReference<>(makeText);
            return;
        }
        throw new IllegalStateException("请不要在子线程中做弹窗操作");
    }

    /* renamed from: finally  reason: not valid java name */
    public static boolean m1448finally(String str) {
        return "gdt".equals(str) || "gdt2.0".equals(str);
    }

    /* renamed from: for  reason: not valid java name */
    public static DividerItemDecoration m1449for(Context context, RecyclerView recyclerView) {
        DividerItemDecoration dividerItemDecoration = new DividerItemDecoration(context, 1);
        if (fa0.m760extends()) {
            dividerItemDecoration.setDrawable(ContextCompat.getDrawable(context, R$drawable.tr_sdk_shape_list_division_line_night));
        } else {
            dividerItemDecoration.setDrawable(ContextCompat.getDrawable(context, R$drawable.tr_sdk_shape_list_division_line));
        }
        recyclerView.addItemDecoration(dividerItemDecoration);
        return dividerItemDecoration;
    }

    /* renamed from: goto  reason: not valid java name */
    public static String m1450goto(String str) {
        try {
            SecretKey generateSecret = SecretKeyFactory.getInstance("DESede").generateSecret(new DESedeKeySpec("rT84U8Eerdb99rtsTXWSILDO".getBytes("UTF-8")));
            Cipher cipher = Cipher.getInstance("desede/CBC/PKCS5Padding");
            cipher.init(2, generateSecret, new IvParameterSpec("SK4bnAVu".getBytes("UTF-8")));
            return new String(cipher.doFinal(Base64.decode(str, 0)), "UTF-8");
        } catch (Exception unused) {
            return str;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public static int m1451if(Context context, int i) {
        if (context != null) {
            try {
                return ContextCompat.getColor(context, i);
            } catch (Exception e) {
                e.printStackTrace();
                return 0;
            }
        }
        return 0;
    }

    /* renamed from: import  reason: not valid java name */
    public static String m1452import(String str) {
        try {
            SecretKey generateSecret = SecretKeyFactory.getInstance("DESede").generateSecret(new DESedeKeySpec("rT84U8Eerdb99rtsTXWSILDO".getBytes("UTF-8")));
            Cipher cipher = Cipher.getInstance("desede/CBC/PKCS5Padding");
            cipher.init(1, generateSecret, new IvParameterSpec("SK4bnAVu".getBytes("UTF-8")));
            return Base64.encodeToString(cipher.doFinal(str.getBytes("UTF-8")), 0);
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    /* renamed from: native  reason: not valid java name */
    public static void m1453native(String str) {
        if (f2470new || TextUtils.isEmpty(str)) {
            return;
        }
        Application app = TrAdSdk.getApp();
        GMConfigUserInfoForSegment gMConfigUserInfoForSegment = new GMConfigUserInfoForSegment();
        gMConfigUserInfoForSegment.setUserId(TrAdSdk.getUserId());
        gMConfigUserInfoForSegment.setChannel(TrAdSdk.getChannel());
        gMConfigUserInfoForSegment.setSubChannel(TrAdSdk.getChannel());
        gMConfigUserInfoForSegment.setAge(25);
        gMConfigUserInfoForSegment.setUserValueGroup(TrAdSdk.getChannel());
        GMMediationAdSdk.initialize(app, new GMAdConfig.Builder().setAppId(str).setAppName(m1464throw()).setDebug(TrAdSdk.isOpenLog()).setPublisherDid(m1466try()).setOpenAdnTest(false).setConfigUserInfoForSegment(gMConfigUserInfoForSegment).setPangleOption(new GMPangleOption.Builder().setTitleBarTheme(1).build()).setPangleOption(new GMPangleOption.Builder().setIsPaid(false).setTitleBarTheme(1).setAllowShowNotify(true).setAllowShowPageWhenScreenLock(true).setDirectDownloadNetworkType(4, 3, 5, 6).setIsUseTextureView(true).setNeedClearTaskReset(new String[0]).setKeywords("").build()).build());
        f2470new = true;
    }

    /* renamed from: new  reason: not valid java name */
    public static TTAdNative m1454new(Activity activity) {
        return TTAdSdk.getAdManager().createAdNative(activity);
    }

    /* renamed from: package  reason: not valid java name */
    public static boolean m1455package(String str) {
        return "gdtcuslayout".equals(str) || "gdtydtop".equals(str);
    }

    /* renamed from: private  reason: not valid java name */
    public static boolean m1456private(String str) {
        return "gdt".equals(str) || "gdt_v".equals(str);
    }

    /* renamed from: public  reason: not valid java name */
    public static boolean m1457public(String str) {
        return "csjjlsp".equals(str);
    }

    /* renamed from: return  reason: not valid java name */
    public static String m1458return(String str) {
        try {
            if (!TextUtils.isEmpty(str) && m1439catch(str)) {
                str = str.replaceAll("(\\d{2})\\d{6}(\\d{3})", "$1******$2");
            }
            return str.length() > 15 ? str.substring(0, 15) : str;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    /* renamed from: static  reason: not valid java name */
    public static void m1459static(String str) {
        if (f2466case || TextUtils.isEmpty(str)) {
            return;
        }
        f2466case = true;
        TTAdSdk.init(TrAdSdk.getApp(), new TTAdConfig.Builder().appId(str).appName(m1464throw()).useTextureView(true).allowShowNotify(true).titleBarTheme(1).debug(TrAdSdk.isOpenLog()).directDownloadNetworkType(4, 3, 5, 6).supportMultiProcess(false).needClearTaskReset(new String[0]).customController(new x70()).build(), new w70());
    }

    /* renamed from: strictfp  reason: not valid java name */
    public static boolean m1460strictfp() {
        NetworkInfo networkInfo = null;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) m1442continue().getSystemService("connectivity");
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            }
        } catch (Exception unused) {
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    /* renamed from: super  reason: not valid java name */
    public static int m1461super(float f) {
        return (int) ((f * TrCommentSdk.getAppContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: switch  reason: not valid java name */
    public static String m1462switch() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    /* renamed from: this  reason: not valid java name */
    public static void m1463this(String str) {
        try {
            if (TrAdSdk.isOpenLog()) {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    m1447final(str);
                } else {
                    n70.m1848do(new w40(str, true));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public static String m1464throw() {
        try {
            PackageManager packageManager = TrAdSdk.getApp().getPackageManager();
            return packageManager.getPackageInfo(TrAdSdk.getApp().getPackageName(), 0).applicationInfo.loadLabel(packageManager).toString();
        } catch (Exception unused) {
            return "tr-sdk";
        }
    }

    /* renamed from: throws  reason: not valid java name */
    public static String m1465throws(String str) {
        Date date;
        long j;
        try {
            try {
                date = new SimpleDateFormat(str.contains("-") ? "yyyy-MM-dd HH:mm:ss" : "yyyy/MM/dd HH:mm:ss").parse(str);
            } catch (Exception e) {
                try {
                    e.printStackTrace();
                    date = null;
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (date != null) {
                j = date.getTime();
                return m1445else(j);
            }
            j = 0;
            return m1445else(j);
        } catch (Exception e3) {
            e3.printStackTrace();
            return str;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static String m1466try() {
        try {
            return Settings.System.getString(TrAdSdk.getApp().getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.f12304a);
        } catch (Exception e) {
            e.printStackTrace();
            return "123";
        }
    }

    /* renamed from: while  reason: not valid java name */
    public static String m1467while(int i) {
        try {
            return TrCommentSdk.getAppContext().getResources().getString(i);
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }
}
