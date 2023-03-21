package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122;

import com.bytedance.msdk.api.reward.RewardItem;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AdCacheCannotUseInfo.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public int f10894a;
    public int b;
    public String c;
    public String d;
    public int e;
    public int f;
    public int g;

    public String a() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(RewardItem.KEY_REASON, this.f10894a);
            jSONObject.put("fill_error_code", this.b);
            jSONObject.put("fill_error_msg", this.c);
            jSONObject.put("mediation_rit", this.d);
            jSONObject.put("load_sort", this.e);
            jSONObject.put("show_sort", this.f);
            jSONObject.put("has_shown", this.g);
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return "{\"name\": \"json err\"}";
        }
    }

    public void b(int i) {
        this.g = i;
    }

    public void c(int i) {
        this.e = i;
    }

    public void d(int i) {
        this.f10894a = i;
    }

    public void e(int i) {
        this.f = i;
    }

    public void b(String str) {
        this.d = str;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(String str) {
        this.c = str;
    }
}
