package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import com.bytedance.msdk.adapter.config.ITTAdapterConfiguration;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AdapterVersionUtil.java */
/* loaded from: classes8.dex */
public class f {
    public static JSONObject a() {
        Map<String, ITTAdapterConfiguration> e = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.e();
        if (e == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, ITTAdapterConfiguration> entry : e.entrySet()) {
            if (entry.getKey() != null) {
                String[] split = entry.getKey().split("\\.");
                if (split.length >= 5) {
                    String str = split[4];
                    try {
                        jSONObject.put(str + "Adapter", entry.getValue().getAdapterVersion());
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return jSONObject;
    }
}
