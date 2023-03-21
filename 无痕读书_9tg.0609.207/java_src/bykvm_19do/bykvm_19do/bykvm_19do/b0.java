package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class b0 extends u {
    public long i;
    public String j;
    public String k;
    public int l;

    private JSONObject l() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("page_key", this.k);
        jSONObject.put("refer_page_key", this.j);
        jSONObject.put("is_back", this.l);
        return jSONObject;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public String[] a() {
        return new String[]{"local_time_ms", "integer", "tea_event_index", "integer", "session_id", "varchar", "user_unique_id", "varchar", "page_key", "varchar", "refer_page_key", "varchar", "duration", "integer", "is_back", "integer"};
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public u b(JSONObject jSONObject) {
        this.f10650a = jSONObject.optLong("local_time_ms", 0L);
        this.b = jSONObject.optLong("tea_event_index", 0L);
        this.c = jSONObject.optString("session_id", null);
        this.k = jSONObject.optString("page_key", null);
        this.j = jSONObject.optString("refer_page_key", null);
        this.i = jSONObject.optLong("duration", 0L);
        this.l = jSONObject.optInt("is_back", 0);
        return this;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public String d() {
        return "page";
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public String h() {
        return super.h() + " name:" + this.k + " duration:" + this.i;
    }

    public boolean j() {
        return this.i == -1;
    }

    public boolean k() {
        return this.k.contains(":");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public u a(Cursor cursor) {
        this.f10650a = cursor.getLong(0);
        this.b = cursor.getLong(1);
        this.c = cursor.getString(2);
        this.d = cursor.getString(3);
        this.k = cursor.getString(4);
        this.j = cursor.getString(5);
        this.i = cursor.getLong(6);
        this.l = cursor.getInt(7);
        return this;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("local_time_ms", this.f10650a);
        jSONObject.put("tea_event_index", this.b);
        jSONObject.put("session_id", this.c);
        if (!TextUtils.isEmpty(this.d)) {
            jSONObject.put("user_unique_id", this.d);
        }
        jSONObject.put("event", "bav2b_page");
        jSONObject.put("is_bav", 1);
        jSONObject.put("params", l());
        jSONObject.put("datetime", this.g);
        return jSONObject;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public void a(ContentValues contentValues) {
        contentValues.put("local_time_ms", Long.valueOf(this.f10650a));
        contentValues.put("tea_event_index", Long.valueOf(this.b));
        contentValues.put("session_id", this.c);
        contentValues.put("user_unique_id", this.d);
        contentValues.put("page_key", this.k);
        contentValues.put("refer_page_key", this.j);
        contentValues.put("duration", Long.valueOf(this.i));
        contentValues.put("is_back", Integer.valueOf(this.l));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.u
    public void a(JSONObject jSONObject) {
        jSONObject.put("page_key", this.k);
        jSONObject.put("refer_page_key", this.j);
        jSONObject.put("duration", this.i);
        jSONObject.put("local_time_ms", this.f10650a);
        jSONObject.put("session_id", this.c);
        jSONObject.put("tea_event_index", this.b);
        jSONObject.put("is_back", this.l);
    }
}
