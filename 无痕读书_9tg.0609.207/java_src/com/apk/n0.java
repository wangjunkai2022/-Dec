package com.apk;

import androidx.appcompat.widget.ActivityChooserModel;
import java.util.List;
import java.util.Timer;
import org.json.JSONObject;
/* compiled from: BaseReadLockHelper.java */
/* loaded from: classes8.dex */
public class n0 {

    /* renamed from: break  reason: not valid java name */
    public boolean f3148break;

    /* renamed from: case  reason: not valid java name */
    public int f3149case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f3150catch;

    /* renamed from: class  reason: not valid java name */
    public int f3151class;

    /* renamed from: const  reason: not valid java name */
    public String f3152const;

    /* renamed from: default  reason: not valid java name */
    public Timer f3153default;

    /* renamed from: do  reason: not valid java name */
    public long f3154do;

    /* renamed from: else  reason: not valid java name */
    public long f3155else;

    /* renamed from: extends  reason: not valid java name */
    public boolean f3156extends;

    /* renamed from: final  reason: not valid java name */
    public boolean f3157final;

    /* renamed from: for  reason: not valid java name */
    public long f3158for;

    /* renamed from: goto  reason: not valid java name */
    public String f3159goto;

    /* renamed from: if  reason: not valid java name */
    public boolean f3160if;

    /* renamed from: import  reason: not valid java name */
    public String f3161import;

    /* renamed from: native  reason: not valid java name */
    public String f3162native;

    /* renamed from: new  reason: not valid java name */
    public long f3163new;

    /* renamed from: public  reason: not valid java name */
    public String f3164public;

    /* renamed from: return  reason: not valid java name */
    public int f3165return;

    /* renamed from: static  reason: not valid java name */
    public List<g> f3166static;

    /* renamed from: super  reason: not valid java name */
    public boolean f3167super;

    /* renamed from: switch  reason: not valid java name */
    public String f3168switch;

    /* renamed from: this  reason: not valid java name */
    public boolean f3169this;

    /* renamed from: throw  reason: not valid java name */
    public long f3170throw;

    /* renamed from: throws  reason: not valid java name */
    public boolean f3171throws;

    /* renamed from: try  reason: not valid java name */
    public long f3172try;

    /* renamed from: while  reason: not valid java name */
    public String f3173while;

    /* renamed from: case  reason: not valid java name */
    public String m1799case() {
        String str = this.f3164public;
        return str != null ? str : "";
    }

    /* renamed from: do  reason: not valid java name */
    public g m1800do() {
        List<g> list = this.f3166static;
        if (list == null || list.size() == 0) {
            return null;
        }
        List<g> list2 = this.f3166static;
        g gVar = list2.get(this.f3165return % list2.size());
        this.f3165return++;
        return gVar;
    }

    /* renamed from: else  reason: not valid java name */
    public String m1801else() {
        String str = this.f3173while;
        return str != null ? str : "";
    }

    /* renamed from: for  reason: not valid java name */
    public String m1802for() {
        String str = this.f3161import;
        return str != null ? str : "";
    }

    /* renamed from: goto  reason: not valid java name */
    public void m1803goto(JSONObject jSONObject) {
        this.f3173while = jSONObject.optString("aword");
        this.f3161import = jSONObject.optString("addesc");
        this.f3162native = jSONObject.optString("btn_ad");
        this.f3164public = jSONObject.optString("btn_share");
        this.f3154do = jSONObject.optInt("Interval") * 60 * 1000;
        this.f3158for = jSONObject.optInt("addtimes") * 60 * 1000;
        this.f3166static = Cfinally.f(jSONObject, jSONObject.optString(ActivityChooserModel.ATTRIBUTE_WEIGHT));
        this.f3149case = jSONObject.optInt("chaptercount", 5);
        this.f3172try = jSONObject.optInt("yxhours", 24) * 60 * 60 * 1000;
        if (jSONObject.has("time_style")) {
            this.f3169this = "public".equals(jSONObject.optString("time_style"));
        }
        if (jSONObject.has("time_scope")) {
            String optString = jSONObject.optString("time_scope");
            boolean equals = "today".equals(optString);
            this.f3157final = equals;
            if (!equals) {
                try {
                    int parseInt = Integer.parseInt(optString);
                    if (parseInt > 0) {
                        this.f3167super = true;
                        this.f3170throw = parseInt * 60 * 60 * 1000;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        this.f3151class = jSONObject.optInt("extra_chaps");
    }

    /* renamed from: if  reason: not valid java name */
    public String m1804if() {
        String str = this.f3162native;
        return str != null ? str : "";
    }

    /* renamed from: new  reason: not valid java name */
    public g m1805new() {
        List<g> list = this.f3166static;
        if (list == null || list.size() == 0) {
            return null;
        }
        List<g> list2 = this.f3166static;
        return list2.get(this.f3165return % list2.size());
    }

    /* renamed from: try  reason: not valid java name */
    public String m1806try() {
        return kg.m1491break(this.f3158for);
    }
}
