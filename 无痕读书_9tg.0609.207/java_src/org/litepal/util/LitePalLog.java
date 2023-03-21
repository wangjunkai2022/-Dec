package org.litepal.util;
/* loaded from: classes7.dex */
public final class LitePalLog {
    public static final int DEBUG = 2;
    public static final int ERROR = 5;
    public static int level = 5;

    public static void d(String str, String str2) {
        int i = level;
    }

    public static void e(String str, Exception exc) {
        if (level <= 5) {
            exc.getMessage();
        }
    }
}
