package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.ContentValues;
import android.database.Cursor;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class c0 extends u {
    public static String o = "succEvent";
    public String i;
    public int j;
    public int k;
    public String l;
    public int m;
    public long n;

    public c0() {
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public String[] a() {
        return new String[]{"local_time_ms", "integer", "tea_event_index", "integer", "session_id", "varchar", "user_unique_id", "varchar", "event_name", "varchar", "is_monitor", "integer", "bav_monitor_rate", "integer", "monitor_status", "varchar", "monitor_num", "integer", "date", "integer"};
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event_name", this.i);
        jSONObject.put("is_monitor", this.j);
        jSONObject.put("bav_monitor_rate", this.k);
        jSONObject.put("monitor_status", this.l);
        jSONObject.put("monitor_num", this.m);
        return jSONObject;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public String d() {
        return o;
    }

    public c0(String str, String str2, int i) {
        this.j = 1;
        this.k = a.l();
        this.i = str;
        this.l = str2;
        this.m = i;
        this.n = k0.a();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public u a(Cursor cursor) {
        this.f10650a = cursor.getLong(0);
        this.b = cursor.getLong(1);
        this.c = cursor.getString(2);
        this.d = cursor.getString(3);
        this.i = cursor.getString(4);
        this.j = cursor.getInt(5);
        this.k = cursor.getInt(6);
        this.l = cursor.getString(7);
        this.m = cursor.getInt(8);
        this.n = cursor.getLong(9);
        return this;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public u b(JSONObject jSONObject) {
        this.f10650a = jSONObject.optLong("local_time_ms", 0L);
        this.b = jSONObject.optLong("tea_event_index", 0L);
        this.c = jSONObject.optString("session_id", null);
        this.d = jSONObject.optString("user_unique_id", null);
        this.i = jSONObject.optString("event_name", null);
        this.j = jSONObject.optInt("is_monitor", 0);
        this.k = jSONObject.optInt("bav_monitor_rate", 0);
        this.l = jSONObject.optString("monitor_status", null);
        this.m = jSONObject.optInt("monitor_num", 0);
        this.n = jSONObject.optLong("date", 0L);
        return this;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public void a(ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.f10650a));
        contentValues.put("tea_event_index", Long.valueOf(this.b));
        contentValues.put("session_id", this.c);
        contentValues.put("user_unique_id", this.d);
        contentValues.put("event_name", this.i);
        contentValues.put("is_monitor", Integer.valueOf(this.j));
        contentValues.put("bav_monitor_rate", Integer.valueOf(this.k));
        contentValues.put("monitor_status", this.l);
        contentValues.put("monitor_num", Integer.valueOf(this.m));
        contentValues.put("date", Long.valueOf(this.n));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public void a(JSONObject jSONObject) {
        jSONObject.put("local_time_ms", this.f10650a);
        jSONObject.put("tea_event_index", this.b);
        jSONObject.put("session_id", this.c);
        jSONObject.put("user_unique_id", this.d);
        jSONObject.put("event_name", this.i);
        jSONObject.put("is_monitor", this.j);
        jSONObject.put("bav_monitor_rate", this.k);
        jSONObject.put("monitor_status", this.l);
        jSONObject.put("monitor_num", this.m);
        jSONObject.put("date", this.n);
    }
}
