package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
/* compiled from: NetworkUtils.java */
/* loaded from: classes8.dex */
public class y {
    public static int a(int i) {
        if (i != 0) {
            int i2 = 1;
            if (i != 1) {
                i2 = 2;
                if (i != 2) {
                    i2 = 3;
                    if (i != 3) {
                        i2 = 4;
                        if (i != 4) {
                            return i;
                        }
                    }
                }
            }
            return i2;
        }
        return 0;
    }

    public static boolean a(Context context) {
        NetworkInfo[] allNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
                for (NetworkInfo networkInfo : allNetworkInfo) {
                    if (networkInfo.getState() == NetworkInfo.State.CONNECTED || networkInfo.getState() == NetworkInfo.State.CONNECTING) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static int b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    return type != 1 ? 0 : 1;
                }
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
                        return 3;
                    case 4:
                    case 7:
                    case 11:
                    default:
                        return 0;
                    case 13:
                        return 4;
                }
            }
        } catch (Throwable unused) {
        }
        return 0;
    }

    public static String b(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "mobile" : "4g" : "3g" : "2g" : "wifi";
    }

    public static int c(Context context) {
        return a(b(context));
    }

    public static String d(Context context) {
        return b(b(context));
    }

    public static boolean e(Context context) {
        return b(context) == 2;
    }

    public static boolean f(Context context) {
        return b(context) == 3;
    }
}
