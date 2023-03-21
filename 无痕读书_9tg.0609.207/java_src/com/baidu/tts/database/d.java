package com.baidu.tts.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;
/* compiled from: StatisticsDbManager.java */
/* loaded from: classes8.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public com.baidu.tts.l.a f11204a;
    public c b;
    public ReadWriteLock c;
    public Lock d;
    public Lock e;

    public d(com.baidu.tts.l.a aVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.c = reentrantReadWriteLock;
        this.d = reentrantReadWriteLock.writeLock();
        this.e = this.c.readLock();
        this.f11204a = aVar;
        this.b = new c(this.f11204a.d());
    }

    private SQLiteDatabase b() {
        return this.b.getWritableDatabase();
    }

    private SQLiteDatabase c() {
        return this.b.getReadableDatabase();
    }

    public long a(String str) {
        this.d.lock();
        SQLiteDatabase b = b();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("uuid", str);
            return b.insert("StatisticsInfo", null, contentValues);
        } finally {
            b.close();
            this.d.unlock();
        }
    }

    public int a(String str, String str2, String str3) {
        this.d.lock();
        SQLiteDatabase b = b();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(str2, str3);
            int update = b.update("StatisticsInfo", contentValues, "uuid=?", new String[]{str});
            if (update == 0) {
                b.insert("StatisticsInfo", null, contentValues);
            }
            return update;
        } finally {
            b.close();
            this.d.unlock();
        }
    }

    public Map<String, ArrayList> a() {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        this.e.lock();
        SQLiteDatabase c = c();
        Cursor rawQuery = c.rawQuery("select * from StatisticsInfo limit 0,100", null);
        while (rawQuery.moveToNext()) {
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    int i = rawQuery.getInt(rawQuery.getColumnIndex("id"));
                    jSONObject.put("uuid", rawQuery.getString(rawQuery.getColumnIndex("uuid")));
                    jSONObject.put("startInfo", rawQuery.getString(rawQuery.getColumnIndex("startInfo")));
                    jSONObject.put("endInfo", rawQuery.getString(rawQuery.getColumnIndex("endInfo")));
                    arrayList2.add(Integer.valueOf(i));
                    arrayList.add(jSONObject);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            } finally {
                rawQuery.close();
                c.close();
                this.e.unlock();
            }
        }
        hashMap.put("listId", arrayList2);
        hashMap.put(LitePalParser.NODE_LIST, arrayList);
        return hashMap;
    }

    public int a(int i, int i2) {
        this.d.lock();
        SQLiteDatabase c = c();
        try {
            int delete = c.delete("StatisticsInfo", "id between ? and ?", new String[]{Integer.toString(i), Integer.toString(i2)});
            LoggerProxy.d("StatisticsDbManager", "delete database=" + delete + "=" + i + "=" + i2);
            return delete;
        } finally {
            c.close();
            this.d.unlock();
        }
    }
}
