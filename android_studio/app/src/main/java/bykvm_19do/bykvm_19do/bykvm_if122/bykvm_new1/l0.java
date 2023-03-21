package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.apk.Cgoto;
import java.security.SecureRandom;
import java.util.Locale;
import org.json.JSONObject;

/* compiled from: ToolUtils.java */
/* loaded from: classes8.dex */
public class l0 {

    /* renamed from: a  reason: collision with root package name */
    public static String f10999a = null;
    public static String b = null;
    public static String c = null;
    public static String d = "ToolUtils";

    public static synchronized String a() {
        String str;
        synchronized (l0.class) {
            if (TextUtils.isEmpty(f10999a) && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d() != null) {
                f10999a = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d().getPackageName();
            }
            str = f10999a;
        }
        return str;
    }

    public static String b(String str) {
        String a2 = a.a(str);
        if (str == null) {
            String a3 = b.a();
            return a3.concat(a3).substring(8, 24);
        }
        return a2;
    }

    public static String c() {
        String str;
        try {
            str = System.getProperty("http.agent");
        } catch (Exception unused) {
            str = "unKnow";
        }
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(";");
        if (lastIndexOf != -1 && str.length() > lastIndexOf) {
            int i = lastIndexOf + 1;
            String substring = str.substring(0, i);
            String substring2 = str.substring(i);
            StringBuilder m1016super = Cgoto.m1016super(" ");
            m1016super.append(Locale.getDefault().getLanguage());
            m1016super.append("-");
            m1016super.append(Locale.getDefault().getCountry());
            m1016super.append(";");
            str = substring.concat(m1016super.toString()).concat(substring2);
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || charAt >= 127) {
                sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static synchronized String d() {
        String str;
        synchronized (l0.class) {
            if (TextUtils.isEmpty(b) && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d() != null) {
                PackageInfo packageInfo = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d().getPackageManager().getPackageInfo(a(), 0);
                b = String.valueOf(packageInfo.versionCode);
                c = packageInfo.versionName;
            }
            str = b;
        }
        return str;
    }

    public static synchronized String e() {
        String str;
        synchronized (l0.class) {
            if (TextUtils.isEmpty(c) && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d() != null) {
                PackageInfo packageInfo = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d().getPackageManager().getPackageInfo(a(), 0);
                b = String.valueOf(packageInfo.versionCode);
                c = packageInfo.versionName;
            }
            str = c;
        }
        return str;
    }

    public static String b() {
        try {
            byte[] bArr = new byte[8];
            new SecureRandom().nextBytes(bArr);
            return n.a(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 17) {
            return str;
        }
        return a.a(str.substring(17), b(str.substring(1, 17)));
    }

    public static JSONObject a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            return jSONObject2;
        }
        try {
            try {
                String a2 = a.a();
                String str = 2 + a2 + a.b(jSONObject.toString(), a.a(a2));
                if (!TextUtils.isEmpty(str)) {
                    jSONObject2.put("message", str);
                    jSONObject2.put("cypher", 2);
                } else {
                    jSONObject2.put("message", jSONObject.toString());
                    jSONObject2.put("cypher", 0);
                }
            } catch (Throwable unused) {
                jSONObject2.put("message", jSONObject.toString());
                jSONObject2.put("cypher", 0);
            }
        } catch (Throwable unused2) {
        }
        return jSONObject2;
    }
}
