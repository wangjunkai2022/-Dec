package com.umeng.commonsdk.statistics.common;

import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Formatter;
import java.util.Locale;

/* loaded from: classes7.dex */
public class MLog {
    public static boolean DEBUG = false;
    public static final int LEVEL_DEBUG = 2;
    public static final int LEVEL_ERROR = 5;
    public static final int LEVEL_INFO = 3;
    public static final int LEVEL_VERBOSE = 1;
    public static final int LEVEL_WARN = 4;
    public static int LOG_MAXLENGTH = 2000;
    public static String TAG = "MobclickAgent";

    public static void d(Locale locale, String str, Object... objArr) {
        try {
            d(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void e(Locale locale, String str, Object... objArr) {
        try {
            e(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            e(th);
        }
    }

    public static String getStackTrace(Throwable th) {
        PrintWriter printWriter;
        StringWriter stringWriter;
        StringWriter stringWriter2 = null;
        try {
            stringWriter = new StringWriter();
            try {
                printWriter = new PrintWriter(stringWriter);
            } catch (Throwable unused) {
                printWriter = null;
            }
        } catch (Throwable unused2) {
            printWriter = null;
        }
        try {
            th.printStackTrace(printWriter);
            printWriter.flush();
            stringWriter.flush();
            String stringWriter3 = stringWriter.toString();
            try {
                stringWriter.close();
            } catch (Throwable unused3) {
            }
            printWriter.close();
            return stringWriter3;
        } catch (Throwable unused4) {
            stringWriter2 = stringWriter;
            if (stringWriter2 != null) {
                try {
                    stringWriter2.close();
                } catch (Throwable unused5) {
                }
            }
            if (printWriter != null) {
                printWriter.close();
            }
            return "";
        }
    }

    public static void i(Locale locale, String str, Object... objArr) {
        try {
            i(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void print(int i, String str, String str2, Throwable th) {
        if (!TextUtils.isEmpty(str2)) {
            int length = str2.length();
            int i2 = LOG_MAXLENGTH;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i3 >= 100) {
                    break;
                } else if (length > i2) {
                    if (i == 1) {
                        str2.substring(i4, i2);
                    } else if (i == 2) {
                        str2.substring(i4, i2);
                    } else if (i == 3) {
                        str2.substring(i4, i2);
                    } else if (i == 4) {
                        str2.substring(i4, i2);
                    } else if (i == 5) {
                        str2.substring(i4, i2);
                    }
                    i3++;
                    i4 = i2;
                    i2 = LOG_MAXLENGTH + i2;
                } else if (i == 1) {
                    str2.substring(i4, length);
                } else if (i == 2) {
                    str2.substring(i4, length);
                } else if (i == 3) {
                    str2.substring(i4, length);
                } else if (i == 4) {
                    str2.substring(i4, length);
                } else if (i == 5) {
                    str2.substring(i4, length);
                }
            }
        }
        if (th != null) {
            TextUtils.isEmpty(getStackTrace(th));
        }
    }

    public static void v(Locale locale, String str, Object... objArr) {
        try {
            v(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void w(Locale locale, String str, Object... objArr) {
        try {
            w(TAG, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void d(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                d(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                d(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void e(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                e(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                e(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void i(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                i(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                i(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void v(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                v(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                v(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void w(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                w(TAG, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                w(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void d(Throwable th) {
        d(TAG, (String) null, th);
    }

    public static void e(Throwable th) {
        e(TAG, (String) null, th);
    }

    public static void i(Throwable th) {
        i(TAG, (String) null, th);
    }

    public static void v(Throwable th) {
        v(TAG, (String) null, th);
    }

    public static void w(Throwable th) {
        w(TAG, (String) null, th);
    }

    public static void d(String str, Throwable th) {
        d(TAG, str, th);
    }

    public static void e(String str, Throwable th) {
        e(TAG, str, th);
    }

    public static void i(String str, Throwable th) {
        i(TAG, str, th);
    }

    public static void v(String str, Throwable th) {
        v(TAG, str, th);
    }

    public static void w(String str, Throwable th) {
        w(TAG, str, th);
    }

    public static void d(String str) {
        d(TAG, str, (Throwable) null);
    }

    public static void e(String str) {
        e(TAG, str, (Throwable) null);
    }

    public static void i(String str) {
        i(TAG, str, (Throwable) null);
    }

    public static void v(String str) {
        v(TAG, str, (Throwable) null);
    }

    public static void w(String str) {
        w(TAG, str, (Throwable) null);
    }

    public static void d(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(2, str, str2, th);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(5, str, str2, th);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(3, str, str2, th);
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(1, str, str2, th);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (DEBUG) {
            print(4, str, str2, th);
        }
    }
}
