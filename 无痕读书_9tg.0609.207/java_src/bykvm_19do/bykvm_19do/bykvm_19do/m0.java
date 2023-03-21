package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.os.Process;
import com.google.zxing.qrcode.encoder.Encoder;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class m0 {

    /* renamed from: a  reason: collision with root package name */
    public static String f10635a = null;
    public static String b = ":push";

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static boolean b(Context context) {
        String a2 = a(context);
        return a2 != null && a2.endsWith(b);
    }

    public static boolean a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject != null && jSONObject2 != null) {
            return jSONObject.toString().equals(jSONObject2.toString());
        }
        return a((Object) jSONObject, (Object) jSONObject2);
    }

    public static JSONObject b(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject.put(next, jSONObject2.opt(next));
            }
        } catch (JSONException e) {
            l0.a(e);
        }
        return jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
        bykvm_19do.bykvm_19do.bykvm_19do.m0.f10635a = r1.processName;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r3) {
        /*
            java.lang.String r0 = bykvm_19do.bykvm_19do.bykvm_19do.m0.f10635a
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L9
            return r0
        L9:
            int r0 = android.os.Process.myPid()     // Catch: java.lang.Exception -> L32
            java.lang.String r1 = "activity"
            java.lang.Object r3 = r3.getSystemService(r1)     // Catch: java.lang.Exception -> L32
            android.app.ActivityManager r3 = (android.app.ActivityManager) r3     // Catch: java.lang.Exception -> L32
            java.util.List r3 = r3.getRunningAppProcesses()     // Catch: java.lang.Exception -> L32
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Exception -> L32
        L1d:
            boolean r1 = r3.hasNext()     // Catch: java.lang.Exception -> L32
            if (r1 == 0) goto L36
            java.lang.Object r1 = r3.next()     // Catch: java.lang.Exception -> L32
            android.app.ActivityManager$RunningAppProcessInfo r1 = (android.app.ActivityManager.RunningAppProcessInfo) r1     // Catch: java.lang.Exception -> L32
            int r2 = r1.pid     // Catch: java.lang.Exception -> L32
            if (r2 != r0) goto L1d
            java.lang.String r3 = r1.processName     // Catch: java.lang.Exception -> L32
            bykvm_19do.bykvm_19do.bykvm_19do.m0.f10635a = r3     // Catch: java.lang.Exception -> L32
            goto L36
        L32:
            r3 = move-exception
            r3.printStackTrace()
        L36:
            java.lang.String r3 = a()
            bykvm_19do.bykvm_19do.bykvm_19do.m0.f10635a = r3
            boolean r3 = bykvm_19do.bykvm_19do.bykvm_19do.l0.f10634a
            if (r3 == 0) goto L53
            java.lang.String r3 = "getProcessName, "
            java.lang.StringBuilder r3 = com.apk.Cgoto.m1016super(r3)
            java.lang.String r0 = bykvm_19do.bykvm_19do.bykvm_19do.m0.f10635a
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            r0 = 0
            bykvm_19do.bykvm_19do.bykvm_19do.l0.a(r3, r0)
        L53:
            java.lang.String r3 = bykvm_19do.bykvm_19do.bykvm_19do.m0.f10635a
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_19do.m0.a(android.content.Context):java.lang.String");
    }

    public static String a() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
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
                } catch (Exception unused) {
                }
                return sb2;
            } catch (Throwable unused2) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused3) {
                    }
                }
                return null;
            }
        } catch (Throwable unused4) {
            bufferedReader = null;
        }
    }

    public static String a(String str, HashMap<String, String> hashMap, String str2) {
        StringBuilder sb = new StringBuilder(str);
        for (String str3 : hashMap.keySet()) {
            String a2 = a(str3, str2);
            String str4 = hashMap.get(str3);
            String a3 = str4 != null ? a(str4, str2) : "";
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(a2);
            sb.append("=");
            sb.append(a3);
        }
        return sb.toString();
    }

    public static String a(String str, String str2) {
        if (str2 == null) {
            str2 = Encoder.DEFAULT_BYTE_MODE_ENCODING;
        }
        try {
            return URLEncoder.encode(str, str2);
        } catch (UnsupportedEncodingException unused) {
            return "";
        }
    }
}
