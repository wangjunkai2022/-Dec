package com.bytedance.pangle.log;

import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.bytedance.pangle.GlobalParam;
import java.util.Arrays;

@Keep
/* loaded from: classes8.dex */
public class ZeusLogger {
    public static final String TAG = "Zeus";
    public static final String TAG_ACTIVITY = "Zeus/activity";
    public static final String TAG_DOWNLOAD = "Zeus/download";
    public static final String TAG_INIT = "Zeus/init";
    public static final String TAG_INSTALL = "Zeus/install";
    public static final String TAG_LOAD = "Zeus/load";
    public static final String TAG_PAM = "Zeus/pam";
    public static final String TAG_PPM = "Zeus/ppm";
    public static final String TAG_PROVIDER = "Zeus/provider";
    public static final String TAG_RECEIVER = "Zeus/receiver";
    public static final String TAG_REPORTER = "Zeus/reporter";
    public static final String TAG_RESOURCES = "Zeus/resources";
    public static final String TAG_SERVER = "Zeus/server";
    public static final String TAG_SERVICE = "Zeus/service";
    public static final String TAG_SO = "Zeus/so";
    public static boolean sDebug = true;
    public static boolean sEnableTrace;

    public static void d(String str) {
        d(null, str);
    }

    public static void errReport(String str, String str2) {
        RuntimeException runtimeException = new RuntimeException();
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, 1, stackTrace.length - 1));
        errReport(str, str2, runtimeException, false);
    }

    public static String getTraceInfo() {
        try {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            StackTraceElement stackTraceElement = null;
            int i = 1;
            while (true) {
                if (i >= stackTrace.length) {
                    break;
                } else if (!TextUtils.equals(stackTrace[i].getClassName(), ZeusLogger.class.getName())) {
                    stackTraceElement = stackTrace[i];
                    break;
                } else {
                    i++;
                }
            }
            if (stackTraceElement != null) {
                return "\t\t[" + stackTraceElement.toString() + "]";
            }
            return "\t\t[No Trace Info]";
        } catch (Exception e) {
            e.printStackTrace();
            return "\t\t[No Trace Info]";
        }
    }

    public static void i(String str) {
        i(null, str);
    }

    public static boolean isDebug() {
        return sDebug;
    }

    public static boolean isEnableTrace() {
        return sEnableTrace;
    }

    public static String prefixTraceInfo(String str) {
        if (sEnableTrace) {
            StringBuilder m1016super = Cgoto.m1016super(str);
            m1016super.append(getTraceInfo());
            return m1016super.toString();
        }
        return str;
    }

    public static void setDebug(boolean z) {
        sDebug = z;
    }

    public static void setEnableTrace(boolean z) {
        sEnableTrace = z;
    }

    public static void v(String str) {
        v(null, str);
    }

    public static void w(String str) {
        w(null, str);
    }

    public static void d(String str, String str2) {
        i(str, str2);
    }

    public static void i(String str, String str2) {
        String prefixTraceInfo = prefixTraceInfo(str2);
        if (sDebug || GlobalParam.getInstance().getLogger() == null) {
            return;
        }
        GlobalParam.getInstance().getLogger().i(str, prefixTraceInfo);
    }

    public static void v(String str, String str2) {
        String prefixTraceInfo = prefixTraceInfo(str2);
        if (sDebug || GlobalParam.getInstance().getLogger() == null) {
            return;
        }
        GlobalParam.getInstance().getLogger().v(str, prefixTraceInfo);
    }

    public static void w(String str, String str2) {
        String prefixTraceInfo = prefixTraceInfo(str2);
        if (sDebug || GlobalParam.getInstance().getLogger() == null) {
            return;
        }
        GlobalParam.getInstance().getLogger().w(str, prefixTraceInfo);
    }

    public static void errReport(String str, String str2, @NonNull Throwable th) {
        errReport(str, str2, th, true);
    }

    public static void w(String str, String str2, Throwable th) {
        String prefixTraceInfo = prefixTraceInfo(str2);
        if (sDebug || GlobalParam.getInstance().getLogger() == null) {
            return;
        }
        GlobalParam.getInstance().getLogger().w(str, prefixTraceInfo, th);
    }

    public static void errReport(String str, String str2, @NonNull Throwable th, boolean z) {
        if (sDebug || GlobalParam.getInstance().getLogger() == null) {
            return;
        }
        IZeusLogger logger = GlobalParam.getInstance().getLogger();
        if (!z) {
            th = null;
        }
        logger.e(str, str2, th);
    }
}
