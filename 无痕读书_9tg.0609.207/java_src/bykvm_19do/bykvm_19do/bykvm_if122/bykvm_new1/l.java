package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.content.Context;
import java.io.File;
/* compiled from: DebugForQAUtil.java */
/* loaded from: classes8.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f10998a;

    public static void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                for (File file : externalFilesDir.listFiles()) {
                    if (a(file)) {
                        f10998a = true;
                        return;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean a(File file) {
        if (file != null && file.isFile()) {
            return file.getName().equals("gromore.debug");
        }
        return false;
    }
}
