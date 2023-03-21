package com.umeng.commonsdk.vchannel;

import android.content.Context;
import com.apk.Cgoto;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: Event.java */
/* loaded from: classes7.dex */
public class b {
    public String b;

    /* renamed from: a  reason: collision with root package name */
    public String f12336a = "_$unknown";
    public long c = 0;
    public long d = 0;
    public String e = a.j;
    public Map<String, Object> f = null;

    public b(Context context) {
        this.b = UMGlobalContext.getInstance(context).getProcessName(context);
    }

    public String a() {
        return this.f12336a;
    }

    public long b() {
        return this.c;
    }

    public Map<String, Object> c() {
        return this.f;
    }

    public JSONObject d() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", this.f12336a);
            jSONObject.put("pn", this.b);
            jSONObject.put("ds", this.d);
            jSONObject.put("ts", this.c);
            if (this.f != null && this.f.size() > 0) {
                for (String str : this.f.keySet()) {
                    jSONObject.put(str, this.f.get(str));
                }
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(this.e, jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("ekv", jSONArray2);
            return jSONObject3;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String toString() {
        String sb;
        StringBuilder sb2 = new StringBuilder("[");
        StringBuilder m1016super = Cgoto.m1016super("id:");
        m1016super.append(this.f12336a);
        m1016super.append(",");
        sb2.append(m1016super.toString());
        sb2.append("pn:" + this.b + ",");
        sb2.append("ts:" + this.c + ",");
        Map<String, Object> map = this.f;
        if (map != null && map.size() > 0) {
            for (String str : this.f.keySet()) {
                Object obj = this.f.get(str);
                if (obj == null) {
                    sb = Cgoto.m996else(str, ": null", ",");
                } else {
                    StringBuilder m1025while = Cgoto.m1025while(str, ": ");
                    m1025while.append(obj.toString());
                    m1025while.append(",");
                    sb = m1025while.toString();
                }
                sb2.append(sb);
            }
        }
        StringBuilder m1016super2 = Cgoto.m1016super("ds:");
        m1016super2.append(this.d);
        m1016super2.append("]");
        sb2.append(m1016super2.toString());
        return sb2.toString();
    }

    public void a(String str) {
        this.f12336a = str;
    }

    public void a(long j) {
        this.c = j;
    }

    public void a(Map<String, Object> map) {
        this.f = map;
    }
}
