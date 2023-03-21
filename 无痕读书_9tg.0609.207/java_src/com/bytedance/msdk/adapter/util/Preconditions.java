package com.bytedance.msdk.adapter.util;

import android.os.Looper;
import com.apk.Cgoto;
import java.util.IllegalFormatException;
/* loaded from: classes8.dex */
public final class Preconditions {
    public static final String EMPTY_ARGUMENTS = "";

    public static void checkArgument(boolean z) {
        m3583new(z, true, "Illegal argument.", "");
    }

    public static void checkNotNull(Object obj) {
        m3582if(obj, true, "Object can not be null.", "");
    }

    public static void checkState(boolean z) {
        m3584try(z, true, "Illegal state.", "");
    }

    public static void checkUiThread() {
        m3581for(true, "This method must be called from the UI thread.", "");
    }

    /* renamed from: do  reason: not valid java name */
    public static String m3580do(String str, Object... objArr) {
        String valueOf = String.valueOf(str);
        try {
            return String.format(valueOf, objArr);
        } catch (IllegalFormatException e) {
            StringBuilder m1016super = Cgoto.m1016super("MoPub preconditions had a format exception: ");
            m1016super.append(e.getMessage());
            Logger.e("TTMediationSDK_ADAPTER", m1016super.toString());
            return valueOf;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static boolean m3581for(boolean z, String str, Object... objArr) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            return true;
        }
        String m3580do = m3580do(str, objArr);
        if (!z) {
            Logger.e("TTMediationSDK_ADAPTER", m3580do);
            return false;
        }
        throw new IllegalStateException(m3580do);
    }

    /* renamed from: if  reason: not valid java name */
    public static boolean m3582if(Object obj, boolean z, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String m3580do = m3580do(str, objArr);
        if (!z) {
            Logger.e("TTMediationSDK_ADAPTER", m3580do);
            return false;
        }
        throw new NullPointerException(m3580do);
    }

    /* renamed from: new  reason: not valid java name */
    public static boolean m3583new(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String m3580do = m3580do(str, objArr);
        if (!z2) {
            Logger.e("TTMediationSDK_ADAPTER", m3580do);
            return false;
        }
        throw new IllegalArgumentException(m3580do);
    }

    /* renamed from: try  reason: not valid java name */
    public static boolean m3584try(boolean z, boolean z2, String str, Object... objArr) {
        if (z) {
            return true;
        }
        String m3580do = m3580do(str, objArr);
        if (!z2) {
            Logger.e("TTMediationSDK_ADAPTER", m3580do);
            return false;
        }
        throw new IllegalStateException(m3580do);
    }

    /* loaded from: classes8.dex */
    public static final class NoThrow {

        /* renamed from: do  reason: not valid java name */
        public static volatile boolean f8750do;

        public static boolean checkArgument(boolean z) {
            return Preconditions.m3583new(z, f8750do, "Illegal argument", "");
        }

        public static boolean checkNotNull(Object obj) {
            return Preconditions.m3582if(obj, f8750do, "Object can not be null.", "");
        }

        public static boolean checkState(boolean z) {
            return Preconditions.m3584try(z, f8750do, "Illegal state.", "");
        }

        public static boolean checkUiThread() {
            return Preconditions.m3581for(f8750do, "This method must be called from the UI thread.", "");
        }

        public static void setStrictMode(boolean z) {
            f8750do = z;
        }

        public static boolean checkArgument(boolean z, String str) {
            return Preconditions.m3583new(z, f8750do, str, "");
        }

        public static boolean checkNotNull(Object obj, String str) {
            return Preconditions.m3582if(obj, f8750do, str, "");
        }

        public static boolean checkState(boolean z, String str) {
            return Preconditions.m3584try(z, f8750do, str, "");
        }

        public static boolean checkUiThread(String str) {
            return Preconditions.m3581for(f8750do, str, "");
        }

        public static boolean checkArgument(boolean z, String str, Object... objArr) {
            return Preconditions.m3583new(z, f8750do, str, objArr);
        }

        public static boolean checkNotNull(Object obj, String str, Object... objArr) {
            return Preconditions.m3582if(obj, f8750do, str, objArr);
        }

        public static boolean checkState(boolean z, String str, Object... objArr) {
            return Preconditions.m3584try(z, f8750do, str, objArr);
        }

        public static boolean checkUiThread(String str, Object... objArr) {
            return Preconditions.m3581for(false, str, objArr);
        }
    }

    public static void checkArgument(boolean z, String str) {
        m3583new(z, true, str, "");
    }

    public static void checkNotNull(Object obj, String str) {
        m3582if(obj, true, str, "");
    }

    public static void checkState(boolean z, String str) {
        m3584try(z, true, str, "");
    }

    public static void checkUiThread(String str) {
        m3581for(true, str, "");
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        m3583new(z, true, str, objArr);
    }

    public static void checkNotNull(Object obj, String str, Object... objArr) {
        m3582if(obj, true, str, objArr);
    }

    public static void checkState(boolean z, String str, Object... objArr) {
        m3584try(z, true, str, objArr);
    }

    public static void checkUiThread(String str, Object... objArr) {
        m3581for(true, str, objArr);
    }
}
