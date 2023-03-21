package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1;

import android.text.TextUtils;
import com.baidu.tts.client.SpeechSynthesizer;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: PackUtil.java */
/* loaded from: classes8.dex */
public final class k {
    public static void a(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.a aVar, bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_for12.b bVar, bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.c cVar) {
        if (aVar == null || aVar.a() == null || cVar == null) {
            return;
        }
        JSONObject a2 = aVar.a();
        long optLong = a2.optLong("crash_time");
        int b = b(a("aid"));
        String a3 = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i.j().a();
        if (optLong <= 0 || b <= 0 || TextUtils.isEmpty(a3) || SpeechSynthesizer.REQUEST_DNS_OFF.equals(a3) || TextUtils.isEmpty(cVar.a())) {
            return;
        }
        try {
            String str = "android_" + b + "_" + a3 + "_" + optLong + "_" + cVar;
            if (bVar != null) {
                JSONObject a4 = bVar.a();
                if (a4 != null) {
                    a4.put("unique_key", str);
                }
            } else {
                a2.put("unique_key", str);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static int b(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            j.b(e);
            return 0;
        }
    }

    public static String a(String str) {
        Map<String, Object> d;
        if (bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i.e() == null || (d = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i.e().d()) == null) {
            return null;
        }
        Object obj = d.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }
}
