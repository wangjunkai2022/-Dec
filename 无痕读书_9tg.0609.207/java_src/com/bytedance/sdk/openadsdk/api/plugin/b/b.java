package com.bytedance.sdk.openadsdk.api.plugin.b;

import android.text.TextUtils;
import androidx.annotation.Keep;
import com.bytedance.JProtect;
import java.security.SecureRandom;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class b {
    public static String a() {
        String a2 = a(16);
        if (a2 == null || a2.length() != 32) {
            return null;
        }
        return a2;
    }

    public static String a(int i) {
        try {
            byte[] bArr = new byte[i];
            new SecureRandom().nextBytes(bArr);
            return c.a(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    @Keep
    @JProtect
    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String a2 = a();
        String a3 = a(a2, 32);
        String b = b();
        String str2 = null;
        if (a3 != null && b != null) {
            str2 = a.a(str, b, a3);
        }
        return 3 + a2 + b + str2;
    }

    public static String a(String str, int i) {
        if (str == null || str.length() != i) {
            return null;
        }
        int i2 = i / 2;
        return str.substring(i2, i) + str.substring(0, i2);
    }

    @Keep
    @JProtect
    public static JSONObject a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            return jSONObject2;
        }
        try {
            try {
                String a2 = a(jSONObject.toString());
                if (TextUtils.isEmpty(a2)) {
                    jSONObject2.put("message", jSONObject.toString());
                    jSONObject2.put("cypher", 0);
                } else {
                    jSONObject2.put("message", a2);
                    jSONObject2.put("cypher", 3);
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            jSONObject2.put("message", jSONObject.toString());
            jSONObject2.put("cypher", 0);
        }
        return jSONObject2;
    }

    public static String b() {
        String a2 = a(8);
        if (a2 == null || a2.length() != 16) {
            return null;
        }
        return a2;
    }
}
