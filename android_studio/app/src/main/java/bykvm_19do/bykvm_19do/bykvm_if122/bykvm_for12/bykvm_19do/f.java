package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AdIntervalPacingRepertoryImpl.java */
/* loaded from: classes8.dex */
public class f implements e<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i> {

    /* renamed from: a  reason: collision with root package name */
    public Context f10950a;

    public f(Context context) {
        if (context != null) {
            this.f10950a = context.getApplicationContext();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.g
    public synchronized void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i iVar) {
        if (this.f10950a != null && iVar != null) {
            c0 a2 = c0.a("pacing_" + iVar.d(), this.f10950a);
            String g = iVar.g();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("unity_id", iVar.g());
                if (!iVar.h()) {
                    jSONObject.put("waterfall_show_rules_version", iVar.e());
                    jSONObject.put("adn_rit_show_rules_version", iVar.b());
                }
                jSONObject.put("timing_mode", iVar.f());
                jSONObject.put("show_pacing", iVar.i() + "");
                jSONObject.put("show_pacing_rule_id", iVar.j());
                jSONObject.put("show_time", iVar.k() + "");
                a2.b(g, jSONObject.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.g
    public synchronized bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i b(String str) {
        if (!str.contains("_")) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return a(c0.a("pacing_" + str, this.f10950a).a(str, ""), false);
        }
        throw new RuntimeException(" has slotId");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.g
    public synchronized bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i b(String str, String str2) {
        if (!str.contains("_")) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            c0 a2 = c0.a("pacing_" + str, this.f10950a);
            return a(a2.a(str + "_" + str2, ""), true);
        }
        throw new RuntimeException(" has slotId");
    }

    private bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i a(String str, boolean z) {
        String str2;
        String str3;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String[] split = jSONObject.getString("unity_id").split("_");
            String str4 = split.length > 0 ? split[0] : "";
            String str5 = split.length > 1 ? split[1] : "";
            if (z) {
                str2 = "";
                str3 = str2;
            } else {
                String string = jSONObject.getString("waterfall_show_rules_version");
                str3 = jSONObject.getString("adn_rit_show_rules_version");
                str2 = string;
            }
            return new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i(str4, str5, str2, str3, jSONObject.getInt("timing_mode"), jSONObject.getString("show_pacing"), jSONObject.getString("show_pacing_rule_id"), jSONObject.getString("show_time"));
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.g
    public synchronized void a(String str) {
        if (!str.contains("_")) {
            if (this.f10950a != null && !TextUtils.isEmpty(str)) {
                c0.a("pacing_" + str, this.f10950a).f(str);
            }
        } else {
            throw new RuntimeException(" has slotId");
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.g
    public synchronized void a(String str, String str2) {
        if (!str.contains("_")) {
            if (this.f10950a != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                c0 a2 = c0.a("pacing_" + str, this.f10950a);
                a2.f(str + "_" + str2);
            }
        } else {
            throw new RuntimeException(" has slotId");
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.e
    public synchronized void a(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i b = b(str);
        b.a(j);
        a(b);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.e
    public synchronized void a(String str, String str2, long j) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i b = b(str, str2);
            b.a(j);
            a(b);
        }
    }
}
