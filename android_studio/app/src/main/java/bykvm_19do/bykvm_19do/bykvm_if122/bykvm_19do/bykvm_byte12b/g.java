package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b;

import android.text.TextUtils;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: IntervalFreqctlBean.java */
/* loaded from: classes8.dex */
public class g extends d {
    public List<e> g;
    public String h;
    public b i;

    /* compiled from: IntervalFreqctlBean.java */
    /* loaded from: classes8.dex */
    public class a implements Comparator<e> {
        public a(g gVar) {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(e eVar, e eVar2) {
            int i = ((eVar.e() - eVar2.e()) > 0L ? 1 : ((eVar.e() - eVar2.e()) == 0L ? 0 : -1));
            if (i == 0) {
                return 0;
            }
            return i > 0 ? 1 : -1;
        }
    }

    /* compiled from: IntervalFreqctlBean.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f10854a;
        public String b;
        public String c;

        public b(String str, String str2, String str3) {
            this.f10854a = str;
            this.b = str2;
            this.c = str3;
        }
    }

    public g(String str, String str2, String str3, String str4, int i, String str5) {
        super(str, str2, str3, str4, i);
        this.h = str5;
        this.i = !TextUtils.isEmpty(str2) ? new b("freq", "span", "rule_id") : new b("waterfall_show_freq", "waterfall_show_span", "waterfall_show_rule_id");
    }

    public void a(String str, int i) {
        for (e eVar : i()) {
            if (TextUtils.equals(eVar.d(), str)) {
                eVar.a(i);
                return;
            }
        }
    }

    public void a(String str, long j) {
        for (e eVar : i()) {
            if (TextUtils.equals(eVar.d(), str)) {
                eVar.a(j);
                return;
            }
        }
    }

    public List<e> i() {
        g h;
        List<e> list = this.g;
        if (list == null || list.size() == 0) {
            this.g = new ArrayList();
            if (this.h == null && (h = m.b().h(this.f10852a)) != null) {
                this.h = h.h;
            }
            if (TextUtils.isEmpty(this.h)) {
                return this.g;
            }
            try {
                JSONArray jSONArray = new JSONArray(this.h);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    e eVar = new e();
                    String string = jSONObject.getString(this.i.c);
                    if (!TextUtils.isEmpty(string)) {
                        eVar.b(jSONObject.optInt(this.i.f10854a));
                        eVar.b(jSONObject.optLong(this.i.b));
                        eVar.a(string);
                        if (jSONObject.has("count")) {
                            eVar.a(jSONObject.optInt("count"));
                        }
                        if (jSONObject.has("effective_time")) {
                            eVar.a(jSONObject.optLong("effective_time"));
                        }
                        this.g.add(eVar);
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (this.g.size() > 0) {
                Collections.sort(this.g, new a(this));
            }
            return this.g;
        }
        return this.g;
    }

    public String j() {
        try {
            JSONArray jSONArray = new JSONArray();
            for (e eVar : i()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(this.i.f10854a, eVar.c());
                jSONObject.put(this.i.b, eVar.e());
                jSONObject.put(this.i.c, eVar.d());
                jSONObject.put("count", eVar.a());
                jSONObject.put("effective_time", eVar.b());
                jSONArray.put(jSONObject);
            }
            this.h = jSONArray.toString();
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return this.h;
    }

    public String k() {
        try {
            JSONArray jSONArray = new JSONArray(this.h);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                jSONObject.put("count", 0);
                jSONObject.put("effective_time", f.a(jSONObject.getLong(this.i.b)));
            }
            this.h = jSONArray.toString();
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return this.h;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("BaseIntervalBean{waterfallId='");
        Cgoto.m987abstract(m1016super, this.f10852a, '\'', ", showRulesVersion='");
        Cgoto.m987abstract(m1016super, this.c, '\'', ", timingMode=");
        m1016super.append(this.e);
        m1016super.append('}');
        m1016super.append("IntervalFreqctlBean{freqctlRules=");
        m1016super.append(this.g);
        m1016super.append(", freqctlRulesJson='");
        m1016super.append(this.h);
        m1016super.append('\'');
        m1016super.append('}');
        return m1016super.toString();
    }
}
