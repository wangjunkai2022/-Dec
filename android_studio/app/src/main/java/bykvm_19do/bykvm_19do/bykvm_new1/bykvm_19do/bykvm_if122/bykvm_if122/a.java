package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_if122;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j;
import java.util.HashMap;

/* compiled from: AbsDAO.java */
/* loaded from: classes8.dex */
public abstract class a<T> {

    /* renamed from: a  reason: collision with root package name */
    public final String f11070a;

    public a(String str) {
        this.f11070a = str;
    }

    public abstract ContentValues a(T t);

    public abstract HashMap<String, String> a();

    public void a(SQLiteDatabase sQLiteDatabase) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("CREATE TABLE ");
            sb.append(this.f11070a);
            sb.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT, ");
            HashMap<String, String> a2 = a();
            if (a2 != null) {
                for (String str : a2.keySet()) {
                    sb.append(str);
                    sb.append(" ");
                    sb.append(a2.get(str));
                    sb.append(",");
                }
                sb.delete(sb.length() - 1, sb.length());
                sb.append(")");
                sQLiteDatabase.execSQL(sb.toString());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(SQLiteDatabase sQLiteDatabase, T t) {
        if (sQLiteDatabase == null || t == null) {
            return;
        }
        try {
            sQLiteDatabase.insert(this.f11070a, null, a((a<T>) t));
        } catch (Exception e) {
            j.b(e);
        }
    }
}
