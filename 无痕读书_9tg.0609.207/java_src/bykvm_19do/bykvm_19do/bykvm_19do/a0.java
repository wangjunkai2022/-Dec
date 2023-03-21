package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.ContentValues;
import android.database.Cursor;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class a0 extends u {
    public byte[] i;
    public int j;
    public int k;
    public JSONArray l;
    public JSONArray m;
    public z n;
    public JSONArray o;
    public d0 p;
    public JSONObject q;
    public JSONArray r;

    public void a(long j, JSONObject jSONObject, z zVar, d0 d0Var, JSONArray jSONArray, JSONArray jSONArray2, JSONArray jSONArray3, JSONArray jSONArray4) {
        this.f10650a = j;
        this.q = jSONObject;
        this.n = zVar;
        this.p = d0Var;
        this.o = null;
        this.l = jSONArray2;
        this.m = jSONArray3;
        this.r = jSONArray4;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("magic_tag", "ss_app_log");
        jSONObject.put("header", this.q);
        jSONObject.put("time_sync", s.b);
        if (this.n != null) {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(this.n.f());
            jSONObject.put("launch", jSONArray);
        }
        d0 d0Var = this.p;
        if (d0Var != null) {
            JSONObject f = d0Var.f();
            JSONArray jSONArray2 = this.o;
            int length = jSONArray2 != null ? jSONArray2.length() : 0;
            JSONArray jSONArray3 = new JSONArray();
            for (int i = 0; i < length; i++) {
                JSONArray jSONArray4 = new JSONArray();
                JSONObject jSONObject2 = new JSONObject(new JSONObject(this.o.optString(i)).optString("params"));
                jSONArray4.put(0, jSONObject2.optString("page_key", ""));
                jSONArray4.put(1, (jSONObject2.optInt("duration", 0) + 999) / 1000);
                jSONArray3.put(jSONArray4);
            }
            if (length > 0) {
                f.put("activites", jSONArray3);
            }
            JSONArray jSONArray5 = new JSONArray();
            jSONArray5.put(f);
            jSONObject.put("terminate", jSONArray5);
        }
        JSONArray jSONArray6 = this.l;
        int length2 = jSONArray6 != null ? jSONArray6.length() : 0;
        if (length2 > 0) {
            jSONObject.put("event", this.l);
        }
        JSONArray jSONArray7 = this.o;
        int length3 = jSONArray7 != null ? jSONArray7.length() : 0;
        if (this.m == null) {
            this.m = this.o;
        } else if (length3 > 0) {
            for (int i2 = 0; i2 < length3; i2++) {
                this.m.put(this.o.get(i2));
            }
        }
        JSONArray jSONArray8 = this.m;
        int length4 = jSONArray8 != null ? jSONArray8.length() : 0;
        if (length4 > 0) {
            jSONObject.put("event_v3", this.m);
        }
        JSONArray jSONArray9 = this.r;
        int length5 = jSONArray9 != null ? jSONArray9.length() : 0;
        if (length5 > 0) {
            jSONObject.put("log_data", this.r);
        }
        StringBuilder sb = new StringBuilder("wP {");
        Object obj = this.n;
        if (obj == null) {
            obj = "la";
        }
        sb.append(obj);
        sb.append(", ");
        Object obj2 = this.p;
        if (obj2 == null) {
            obj2 = "te";
        }
        sb.append(obj2);
        sb.append(", p: ");
        sb.append(length3);
        sb.append(", v1: ");
        sb.append(length2);
        sb.append(", v3: ");
        sb.append(length4);
        sb.append("}");
        sb.append(", m: ");
        sb.append(length5);
        sb.append("}");
        l0.d(sb.toString(), null);
        return jSONObject;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public String d() {
        return "pack";
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public String[] a() {
        return new String[]{"local_time_ms", "integer", "_data", "blob", "_fail", "integer", "_full", "integer"};
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public u a(Cursor cursor) {
        this.f10650a = cursor.getLong(0);
        this.i = cursor.getBlob(1);
        this.j = cursor.getInt(2);
        this.q = null;
        this.n = null;
        this.p = null;
        this.o = null;
        this.l = null;
        this.m = null;
        this.r = null;
        return this;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public void a(ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(System.currentTimeMillis()));
        contentValues.put("_data", a.a(f().toString()));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public void a(JSONObject jSONObject) {
        l0.a(null);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public u b(JSONObject jSONObject) {
        l0.a(null);
        return null;
    }
}
