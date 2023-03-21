package com.ss.android.downloadlib.d;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.j;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class c {
    public static volatile c b;

    /* renamed from: a  reason: collision with root package name */
    public SQLiteDatabase f11700a;

    public c() {
        try {
            this.f11700a = new b(j.getContext()).getWritableDatabase();
        } catch (Throwable th) {
            com.ss.android.downloadlib.e.c.a().a(th, "ClickEventHelper");
        }
    }

    public static c a() {
        if (b == null) {
            synchronized (c.class) {
                if (b == null) {
                    b = new c();
                }
            }
        }
        return b;
    }

    public boolean b() {
        return com.ss.android.socialbase.downloader.g.a.c().a("click_event_switch", 0) == 1;
    }

    public boolean c() {
        return com.ss.android.socialbase.downloader.g.a.c().a("click_event_switch", 0) == 2;
    }

    private void c(long j, String str) {
        SQLiteDatabase sQLiteDatabase = this.f11700a;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String optString = new JSONObject(str).optString("req_id");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            this.f11700a.delete("click_event", "time < ? AND ad_id = ? AND req_id = ?", new String[]{String.valueOf(System.currentTimeMillis() - 1209600000), String.valueOf(j), optString});
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean b(long j, String str) {
        SQLiteDatabase sQLiteDatabase = this.f11700a;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j <= 0 || TextUtils.isEmpty(str)) {
            return false;
        }
        Cursor cursor = null;
        try {
            try {
                String optString = new JSONObject(str).optString("req_id");
                if (TextUtils.isEmpty(optString)) {
                    return false;
                }
                cursor = this.f11700a.query("click_event", b.f11699a, "time > ? AND ad_id = ? AND req_id = ?", new String[]{String.valueOf(System.currentTimeMillis() - 1209600000), String.valueOf(j), optString}, null, null, null, null);
                boolean z = cursor.getCount() > 0;
                cursor.close();
                return z;
            } catch (Exception e) {
                e.printStackTrace();
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public void a(long j, String str) {
        String optString;
        SQLiteDatabase sQLiteDatabase = this.f11700a;
        if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || j <= 0 || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            optString = new JSONObject(str).optString("req_id");
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("ad_id", Long.valueOf(j));
        contentValues.put("req_id", optString);
        contentValues.put("time", Long.valueOf(System.currentTimeMillis()));
        this.f11700a.insert("click_event", null, contentValues);
        c(j, str);
    }
}
