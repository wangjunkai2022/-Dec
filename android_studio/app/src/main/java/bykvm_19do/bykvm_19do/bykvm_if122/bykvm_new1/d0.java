package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.content.res.Configuration;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.bytedance.msdk.adapter.util.Logger;

/* compiled from: SimUtils.java */
/* loaded from: classes8.dex */
public class d0 {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f10985a = false;
    public static String b = null;
    public static String c = null;
    public static String d = null;
    public static boolean e = true;

    public static String a() {
        if (!f10985a) {
            d();
        }
        return b;
    }

    public static String b() {
        try {
            if (!f10985a) {
                d();
            }
            Configuration configuration = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d().getResources().getConfiguration();
            String valueOf = configuration.mcc != 0 ? String.valueOf(configuration.mcc) : c;
            Logger.e("MCC", "config=" + configuration.mcc + ",sMCC=" + c);
            if (e) {
                return valueOf;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("getMCC");
            sb.append(e ? "有SIM卡" : "无SIM卡,MCC返回null");
            Logger.e("MCC", sb.toString());
            return "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String c() {
        if (!f10985a) {
            d();
        }
        return d;
    }

    public static void d() {
        String str;
        String str2;
        String str3;
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d() == null || f10985a) {
            return;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d().getSystemService("phone");
            int simState = telephonyManager.getSimState();
            if (simState == 0) {
                e = false;
            } else if (simState == 1) {
                e = false;
            }
            Logger.e("MCC", e ? "有SIM卡" : "无SIM卡");
            String str4 = null;
            try {
                str = telephonyManager.getSimOperatorName();
            } catch (Throwable unused) {
                str = null;
            }
            try {
                str2 = telephonyManager.getNetworkOperator();
            } catch (Throwable unused2) {
                str2 = null;
            }
            if (str2 == null || str2.length() < 5) {
                try {
                    str2 = telephonyManager.getSimOperator();
                } catch (Throwable unused3) {
                }
            }
            if (TextUtils.isEmpty(str2) || str2.length() <= 4) {
                str3 = null;
            } else {
                str4 = str2.substring(0, 3);
                str3 = str2.substring(3);
            }
            if (!TextUtils.isEmpty(str)) {
                b = str;
            }
            if (!TextUtils.isEmpty(str4)) {
                c = str4;
            }
            if (!TextUtils.isEmpty(str3)) {
                d = str3;
            }
        } catch (Throwable unused4) {
        }
        f10985a = true;
    }
}
