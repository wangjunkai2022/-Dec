package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import com.apk.Cgoto;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AdIntervalFreqctlRepertoryImpl.java */
/* loaded from: classes8.dex */
public class d implements c<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g> {

    /* renamed from: a  reason: collision with root package name */
    public Context f10949a;

    public d(Context context) {
        if (context != null) {
            this.f10949a = context.getApplicationContext();
        }
    }

    private void c(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g gVar) {
        if (this.f10949a == null || gVar == null) {
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("freqctl_");
        m1016super.append(gVar.d());
        c0 a2 = c0.a(m1016super.toString(), this.f10949a);
        JSONObject a3 = a(gVar, false);
        if (a3 != null) {
            a2.b(gVar.g(), a3.toString());
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.g
    public synchronized void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g gVar) {
        if (this.f10949a != null && gVar != null) {
            c0 a2 = c0.a("freqctl_" + gVar.d(), this.f10949a);
            String g = gVar.g();
            JSONObject a3 = a(gVar, true);
            if (a3 != null) {
                a2.b(g, a3.toString());
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.g
    public synchronized bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g b(String str) {
        if (this.f10949a == null) {
            return null;
        }
        return a(c0.a("freqctl_" + str, this.f10949a).a(str, ""), false);
    }

    private JSONObject a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g gVar, boolean z) {
        if (gVar != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("unity_id", gVar.g());
                if (gVar.h()) {
                    jSONObject.put("adn_rit_show_rules_version", gVar.b());
                } else {
                    jSONObject.put("waterfall_show_rules_version", gVar.e());
                }
                jSONObject.put("timing_mode", gVar.f());
                jSONObject.put("show_freqctl_rules", z ? gVar.k() : gVar.j());
                return jSONObject;
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.g
    public synchronized bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g b(String str, String str2) {
        if (this.f10949a == null) {
            return null;
        }
        c0 a2 = c0.a("freqctl_" + str, this.f10949a);
        return a(a2.a(str + "_" + str2, ""), true);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.c
    public synchronized void b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g gVar) {
        if (gVar != null) {
            c(gVar);
        }
    }

    private bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g a(String str, boolean z) {
        String string;
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String[] split = jSONObject.getString("unity_id").split("_");
            String str3 = split.length > 0 ? split[0] : "";
            String str4 = split.length > 1 ? split[1] : "";
            if (z) {
                str2 = jSONObject.getString("adn_rit_show_rules_version");
                string = "";
            } else {
                string = jSONObject.getString("waterfall_show_rules_version");
                str2 = "";
            }
            return new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g(str3, str4, string, str2, jSONObject.getInt("timing_mode"), jSONObject.getString("show_freqctl_rules"));
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.g
    public synchronized void a(String str) {
        if (this.f10949a != null && !TextUtils.isEmpty(str)) {
            c0.a("freqctl_" + str, this.f10949a).f(str);
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.g
    public synchronized void a(String str, String str2) {
        if (this.f10949a != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            c0 a2 = c0.a("freqctl_" + str, this.f10949a);
            a2.f(str + "_" + str2);
        }
    }
}
