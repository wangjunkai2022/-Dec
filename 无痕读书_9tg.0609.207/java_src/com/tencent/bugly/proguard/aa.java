package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import com.apk.Cgoto;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class aa {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f12070a = true;
    public static boolean b = true;
    public static SimpleDateFormat c = null;
    public static int d = 30720;
    public static StringBuilder e;
    public static StringBuilder f;
    public static boolean g;
    public static a h;
    public static String i;
    public static String j;
    public static Context k;
    public static String l;
    public static boolean m;
    public static boolean n;
    public static ExecutorService o;
    public static int p;
    public static final Object q = new Object();

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f12072a;
        public File b;
        public String c;
        public long d;
        public long e = 30720;

        public a(String str) {
            if (str == null || str.equals("")) {
                return;
            }
            this.c = str;
            this.f12072a = a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            try {
                File file = new File(this.c);
                this.b = file;
                if (file.exists() && !this.b.delete()) {
                    this.f12072a = false;
                    return false;
                } else if (this.b.createNewFile()) {
                    return true;
                } else {
                    this.f12072a = false;
                    return false;
                }
            } catch (Throwable th) {
                y.a(th);
                this.f12072a = false;
                return false;
            }
        }

        public final boolean a(String str) {
            byte[] bytes;
            if (!this.f12072a) {
                return false;
            }
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(this.b, true);
                try {
                    fileOutputStream2.write(str.getBytes("UTF-8"));
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    this.d += bytes.length;
                    this.f12072a = true;
                    try {
                        fileOutputStream2.close();
                    } catch (IOException unused) {
                    }
                    return true;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        y.a(th);
                        this.f12072a = false;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        return false;
                    } catch (Throwable th2) {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    static {
        try {
            c = new SimpleDateFormat("MM-dd HH:mm:ss");
        } catch (Throwable th) {
            y.b(th.getCause());
        }
    }

    public static synchronized void a(Context context) {
        synchronized (aa.class) {
            if (m || context == null || !f12070a) {
                return;
            }
            try {
                o = Executors.newSingleThreadExecutor();
                f = new StringBuilder(0);
                e = new StringBuilder(0);
                k = context;
                com.tencent.bugly.crashreport.common.info.a a2 = com.tencent.bugly.crashreport.common.info.a.a(context);
                i = a2.d;
                a2.getClass();
                j = "";
                l = k.getFilesDir().getPath() + "/buglylog_" + i + "_" + j + ".txt";
                p = Process.myPid();
            } catch (Throwable unused) {
            }
            m = true;
        }
    }

    public static synchronized void c(String str, String str2, String str3) {
        synchronized (aa.class) {
            if (b) {
                d(str, str2, str3);
            } else {
                e(str, str2, str3);
            }
        }
    }

    public static synchronized void d(String str, String str2, String str3) {
        synchronized (aa.class) {
            String a2 = a(str, str2, str3, Process.myTid());
            synchronized (q) {
                f.append(a2);
                if (f.length() >= d) {
                    f = f.delete(0, f.indexOf("\u0001\r\n") + 1);
                }
            }
        }
    }

    public static synchronized void e(String str, String str2, String str3) {
        synchronized (aa.class) {
            String a2 = a(str, str2, str3, Process.myTid());
            synchronized (q) {
                try {
                    f.append(a2);
                } catch (Throwable unused) {
                }
                if (f.length() <= d) {
                    return;
                }
                if (g) {
                    return;
                }
                g = true;
                if (h != null) {
                    if (h.b == null || h.b.length() + f.length() > h.e) {
                        h.a();
                    }
                } else {
                    h = new a(l);
                }
                if (h.a(f.toString())) {
                    f.setLength(0);
                    g = false;
                }
            }
        }
    }

    public static byte[] b() {
        if (f12070a) {
            StringBuilder sb = new StringBuilder();
            synchronized (q) {
                if (h != null && h.f12072a && h.b != null && h.b.length() > 0) {
                    sb.append(ab.a(h.b, 30720, true));
                }
                if (f != null && f.length() > 0) {
                    sb.append(f.toString());
                }
            }
            return ab.a((File) null, sb.toString(), "BuglyLog.txt");
        }
        return null;
    }

    public static void a(int i2) {
        synchronized (q) {
            d = i2;
            if (i2 < 0) {
                d = 0;
            } else if (i2 > 30720) {
                d = 30720;
            }
        }
    }

    public static void a(String str, String str2, Throwable th) {
        if (th == null) {
            return;
        }
        String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        a(str, str2, message + '\n' + ab.b(th));
    }

    public static synchronized void a(final String str, final String str2, final String str3) {
        synchronized (aa.class) {
            if (m && f12070a) {
                try {
                    o.execute(new Runnable() { // from class: com.tencent.bugly.proguard.aa.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            aa.c(str, str2, str3);
                        }
                    });
                } catch (Exception e2) {
                    y.b(e2);
                }
            }
        }
    }

    public static String a(String str, String str2, String str3, long j2) {
        String date;
        e.setLength(0);
        if (str3.length() > 30720) {
            str3 = str3.substring(str3.length() - 30720, str3.length() - 1);
        }
        Date date2 = new Date();
        SimpleDateFormat simpleDateFormat = c;
        if (simpleDateFormat != null) {
            date = simpleDateFormat.format(date2);
        } else {
            date = date2.toString();
        }
        StringBuilder sb = e;
        sb.append(date);
        sb.append(" ");
        sb.append(p);
        sb.append(" ");
        sb.append(j2);
        Cgoto.m993continue(sb, " ", str, " ", str2);
        sb.append(": ");
        sb.append(str3);
        sb.append("\u0001\r\n");
        return e.toString();
    }

    public static byte[] a() {
        if (b) {
            if (f12070a) {
                return ab.a((File) null, f.toString(), "BuglyLog.txt");
            }
            return null;
        }
        return b();
    }
}
