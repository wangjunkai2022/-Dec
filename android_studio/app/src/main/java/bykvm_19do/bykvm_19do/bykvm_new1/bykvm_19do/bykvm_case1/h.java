package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import java.io.File;

/* compiled from: LogPath.java */
/* loaded from: classes8.dex */
public class h {
    public static File a(@NonNull Context context) {
        return new File(b(context), "crash_history");
    }

    public static String b() {
        return String.format("java_%s.npth", String.valueOf(System.nanoTime()));
    }

    public static File c(@NonNull Context context) {
        return new File(b(context), "CrashLogJavaGM");
    }

    public static String a() {
        return String.format("anr_%s.npth", String.valueOf(System.nanoTime()));
    }

    @SuppressLint({"SdCardPath"})
    public static String b(@NonNull Context context) {
        String path;
        try {
            if (context.getFilesDir() != null) {
                path = context.getFilesDir().getPath();
            } else {
                File dir = context.getDir("/data/data/" + context.getPackageName() + "/files/", 0);
                path = dir != null ? dir.getPath() : null;
            }
            return path != null ? path : "/sdcard/";
        } catch (Exception e) {
            e.printStackTrace();
            return "/sdcard/";
        }
    }
}
