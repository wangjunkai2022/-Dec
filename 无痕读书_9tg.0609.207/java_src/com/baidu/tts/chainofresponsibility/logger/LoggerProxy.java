package com.baidu.tts.chainofresponsibility.logger;

import android.util.Log;
/* loaded from: classes8.dex */
public class LoggerProxy {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f11164a;

    public static void d(String str, String str2) {
        if (f11164a) {
            return;
        }
        Log.isLoggable("TTSLOG", 3);
    }

    public static void e(String str, String str2) {
        if (f11164a) {
            return;
        }
        Log.isLoggable("TTSLOG", 6);
    }

    public static void i(String str, String str2) {
        if (f11164a) {
            return;
        }
        Log.isLoggable("TTSLOG", 4);
    }

    public static void printable(boolean z) {
        f11164a = z;
    }

    public static void v(String str, String str2) {
        if (f11164a) {
            return;
        }
        Log.isLoggable("TTSLOG", 2);
    }

    public static void w(String str, String str2) {
        if (f11164a) {
            return;
        }
        Log.isLoggable("TTSLOG", 5);
    }
}
