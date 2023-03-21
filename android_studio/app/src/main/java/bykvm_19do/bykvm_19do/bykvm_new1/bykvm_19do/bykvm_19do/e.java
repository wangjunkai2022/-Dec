package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_19do;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Looper;
import android.os.Process;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.m;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ANRUtils.java */
/* loaded from: classes8.dex */
public class e {
    public static JSONObject a(boolean z) throws JSONException {
        StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("thread_number", 1);
        jSONObject.put("mainStackFromTrace", m.a(stackTrace));
        return jSONObject;
    }

    public static String a(Context context, int i) {
        ActivityManager.ProcessErrorStateInfo a2 = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.a.a(context, i);
        if (a2 == null || Process.myPid() != a2.pid) {
            return null;
        }
        return b.a(a2);
    }
}
