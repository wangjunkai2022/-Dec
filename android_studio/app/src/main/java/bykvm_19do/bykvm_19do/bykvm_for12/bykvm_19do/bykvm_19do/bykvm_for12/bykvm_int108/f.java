package bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_int108;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;

/* compiled from: ProcessUtils.java */
/* loaded from: classes8.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public static String f10681a;

    public static String a(Context context) {
        String str = f10681a;
        if (TextUtils.isEmpty(str)) {
            try {
                int myPid = Process.myPid();
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == myPid) {
                        String str2 = runningAppProcessInfo.processName;
                        f10681a = str2;
                        return str2;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            String a2 = a();
            f10681a = a2;
            return a2;
        }
        return str;
    }

    public static boolean b(Context context) {
        String a2 = a(context);
        return (a2 == null || !a2.contains(":")) && a2 != null && a2.equals(context.getPackageName());
    }

    public static boolean c(Context context) {
        String a2 = a(context);
        return a2 != null && (a2.endsWith(":push") || a2.endsWith(":pushservice"));
    }

    public static String a() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                int read = bufferedReader.read();
                if (read <= 0) {
                    break;
                }
                sb.append((char) read);
            }
            String sb2 = sb.toString();
            try {
                bufferedReader.close();
            } catch (Exception unused2) {
            }
            return sb2;
        } catch (Throwable unused3) {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (Exception unused4) {
                }
            }
            return null;
        }
    }
}
