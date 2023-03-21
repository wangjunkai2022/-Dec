package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import android.content.Context;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import com.apk.Cgoto;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONObject;

/* compiled from: AdEventV3.java */
/* loaded from: classes8.dex */
public class i extends a {
    public static final SimpleDateFormat d = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    public i(String str, JSONObject jSONObject) {
        super(str, jSONObject);
    }

    public static i a(Context context, d dVar, JSONObject jSONObject) {
        return new i(UUID.randomUUID().toString(), c(context, dVar, jSONObject));
    }

    public static JSONObject c(Context context, d dVar, JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.putOpt("event", dVar.f10954a);
            jSONObject2.putOpt("nt", Integer.valueOf(e.a(context)));
            jSONObject2.putOpt("datetime", d.format(new Date()));
            jSONObject2.putOpt("params", a.a(context, dVar, jSONObject, "v3"));
        } catch (Exception e) {
            try {
                JSONObject optJSONObject = jSONObject2.optJSONObject("params");
                if (optJSONObject != null) {
                    String optString = optJSONObject.optString("event_extra");
                    if (!TextUtils.isEmpty(optString)) {
                        JSONObject jSONObject3 = new JSONObject(optString);
                        jSONObject3.putOpt("v3_err_msg", e.toString());
                        optJSONObject.putOpt("event_extra", jSONObject3.toString());
                    }
                }
                if (dVar != null) {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.putOpt("v3_eventId", dVar.v.get("event_id"));
                    jSONObject4.putOpt("v3_err_msg", e.toString());
                    c0.a(jSONObject4);
                }
            } catch (Throwable unused) {
            }
        }
        return jSONObject2;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a
    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("AdEventV3{localId='");
        Cgoto.m987abstract(m1016super, this.f10946a, '\'', ", event=");
        m1016super.append(this.b);
        m1016super.append('}');
        return m1016super.toString();
    }
}
