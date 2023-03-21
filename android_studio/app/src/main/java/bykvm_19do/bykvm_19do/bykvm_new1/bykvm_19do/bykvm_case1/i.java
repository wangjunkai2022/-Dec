package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_byte12b.b;

/* compiled from: Net.java */
/* loaded from: classes8.dex */
public final class i {

    /* compiled from: Net.java */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f11062a;

        static {
            int[] iArr = new int[b.EnumC0054b.values().length];
            f11062a = iArr;
            try {
                b.EnumC0054b enumC0054b = b.EnumC0054b.WIFI;
                iArr[4] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = f11062a;
                b.EnumC0054b enumC0054b2 = b.EnumC0054b.MOBILE_2G;
                iArr2[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = f11062a;
                b.EnumC0054b enumC0054b3 = b.EnumC0054b.MOBILE_3G;
                iArr3[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = f11062a;
                b.EnumC0054b enumC0054b4 = b.EnumC0054b.MOBILE_4G;
                iArr4[5] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = f11062a;
                b.EnumC0054b enumC0054b5 = b.EnumC0054b.MOBILE;
                iArr5[1] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static String a(Context context) {
        return a(b(context));
    }

    public static b.EnumC0054b b(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return b.EnumC0054b.NONE;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (1 == type) {
                    return b.EnumC0054b.WIFI;
                }
                if (type == 0) {
                    switch (((TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
                        case 3:
                        case 5:
                        case 6:
                        case 8:
                        case 9:
                        case 10:
                        case 12:
                        case 14:
                        case 15:
                            return b.EnumC0054b.MOBILE_3G;
                        case 4:
                        case 7:
                        case 11:
                        default:
                            return b.EnumC0054b.MOBILE;
                        case 13:
                            return b.EnumC0054b.MOBILE_4G;
                    }
                }
                return b.EnumC0054b.MOBILE;
            }
            return b.EnumC0054b.NONE;
        } catch (Throwable unused) {
            return b.EnumC0054b.MOBILE;
        }
    }

    public static boolean c(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isAvailable();
        } catch (Exception unused) {
            return false;
        }
    }

    public static String a(b.EnumC0054b enumC0054b) {
        int i;
        try {
            i = a.f11062a[enumC0054b.ordinal()];
        } catch (Exception unused) {
        }
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "" : "mobile" : "4g" : "3g" : "2g" : "wifi";
    }
}
