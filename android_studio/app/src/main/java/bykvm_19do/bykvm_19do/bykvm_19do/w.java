package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.apk.Cgoto;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;

/* loaded from: classes8.dex */
public class w extends u {
    public String i;
    public String j;
    public String k;
    public String l;
    public long m;
    public long n;

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public String[] a() {
        return new String[]{"local_time_ms", "integer", "tea_event_index", "integer", "session_id", "varchar", "user_unique_id", "varchar", "category", "varchar", "tag", "varchar", LitePalParser.ATTR_VALUE, "integer", "ext_value", "integer", "params", "varchar", "label", "varchar", "ab_version", "varchar", "ab_sdk_version", "varchar"};
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public JSONObject b() {
        JSONObject jSONObject = !TextUtils.isEmpty(this.l) ? new JSONObject(this.l) : null;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        jSONObject.put("local_time_ms", this.f10650a);
        jSONObject.put("tea_event_index", this.b);
        jSONObject.put("session_id", this.c);
        if (!TextUtils.isEmpty(this.d)) {
            jSONObject.put("user_unique_id", this.d);
        }
        jSONObject.put("category", this.i);
        jSONObject.put("tag", this.j);
        jSONObject.put(LitePalParser.ATTR_VALUE, this.m);
        jSONObject.put("ext_value", this.n);
        jSONObject.put("label", this.k);
        jSONObject.put("datetime", this.g);
        if (!TextUtils.isEmpty(this.e)) {
            jSONObject.put("ab_version", this.e);
        }
        if (!TextUtils.isEmpty(this.f)) {
            jSONObject.put("ab_sdk_version", this.f);
        }
        return jSONObject;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public String d() {
        return "event";
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public String h() {
        StringBuilder m1016super = Cgoto.m1016super("");
        m1016super.append(this.j);
        m1016super.append(", ");
        m1016super.append(this.k);
        return m1016super.toString();
    }

    public String j() {
        return this.j;
    }

    public String k() {
        return this.k;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public u a(Cursor cursor) {
        this.f10650a = cursor.getLong(0);
        this.b = cursor.getLong(1);
        this.c = cursor.getString(2);
        this.d = cursor.getString(3);
        this.i = cursor.getString(4);
        this.j = cursor.getString(5);
        this.m = cursor.getInt(6);
        this.n = cursor.getInt(7);
        this.l = cursor.getString(8);
        this.k = cursor.getString(9);
        this.e = cursor.getString(10);
        this.f = cursor.getString(11);
        return this;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public void a(ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.f10650a));
        contentValues.put("tea_event_index", Long.valueOf(this.b));
        contentValues.put("session_id", this.c);
        contentValues.put("user_unique_id", this.d);
        contentValues.put("category", this.i);
        contentValues.put("tag", this.j);
        contentValues.put(LitePalParser.ATTR_VALUE, Long.valueOf(this.m));
        contentValues.put("ext_value", Long.valueOf(this.n));
        contentValues.put("params", this.l);
        contentValues.put("label", this.k);
        contentValues.put("ab_version", this.e);
        contentValues.put("ab_sdk_version", this.f);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public u b(JSONObject jSONObject) {
        this.f10650a = jSONObject.optLong("local_time_ms", 0L);
        this.b = jSONObject.optLong("tea_event_index", 0L);
        this.c = jSONObject.optString("session_id", null);
        this.d = jSONObject.optString("user_unique_id", null);
        this.i = jSONObject.optString("category", null);
        this.j = jSONObject.optString("tag", null);
        this.m = jSONObject.optLong(LitePalParser.ATTR_VALUE, 0L);
        this.n = jSONObject.optLong("ext_value", 0L);
        this.l = jSONObject.optString("params", null);
        this.k = jSONObject.optString("label", null);
        this.e = jSONObject.optString("ab_version", null);
        this.f = jSONObject.optString("ab_sdk_version", null);
        return this;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public void a(JSONObject jSONObject) {
        jSONObject.put("local_time_ms", this.f10650a);
        jSONObject.put("tea_event_index", this.b);
        jSONObject.put("session_id", this.c);
        jSONObject.put("user_unique_id", this.d);
        jSONObject.put("category", this.i);
        jSONObject.put("tag", this.j);
        jSONObject.put(LitePalParser.ATTR_VALUE, this.m);
        jSONObject.put("ext_value", this.n);
        jSONObject.put("params", this.l);
        jSONObject.put("label", this.k);
        jSONObject.put("ab_version", this.e);
        jSONObject.put("ab_sdk_version", this.f);
    }
}
