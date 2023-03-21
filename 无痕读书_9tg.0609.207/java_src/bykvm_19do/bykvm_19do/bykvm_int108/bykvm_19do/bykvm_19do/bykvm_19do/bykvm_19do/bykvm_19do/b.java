package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
/* compiled from: DBHelper.java */
/* loaded from: classes8.dex */
public class b {
    public static final Object b = new Object();

    /* renamed from: a  reason: collision with root package name */
    public c f11017a;

    /* compiled from: DBHelper.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0052b extends AbstractCursor {
        public C0052b(b bVar) {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i) {
            return 0.0f;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i) {
            return true;
        }
    }

    public b(Context context) {
        try {
            context.getApplicationContext();
            if (this.f11017a == null) {
                this.f11017a = new c();
            }
        } catch (Throwable unused) {
        }
    }

    public c a() {
        return this.f11017a;
    }

    /* compiled from: DBHelper.java */
    /* loaded from: classes8.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public volatile SQLiteDatabase f11018a = null;

        public c() {
        }

        private synchronized void a() {
            try {
                synchronized (b.b) {
                    if (this.f11018a == null || !this.f11018a.isOpen()) {
                        this.f11018a = j.l().e().a(j.l().d());
                        this.f11018a.setLockingEnabled(false);
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("---------------DB CREATE  SUCCESS------------");
                    }
                }
            } finally {
            }
        }

        private synchronized boolean b() {
            boolean z;
            SQLiteDatabase sQLiteDatabase = this.f11018a;
            if (sQLiteDatabase != null) {
                z = sQLiteDatabase.inTransaction();
            }
            return z;
        }

        public synchronized void a(String str) throws SQLException {
            try {
                a();
                this.f11018a.execSQL(str);
            } catch (Throwable th) {
                if (b()) {
                    throw th;
                }
            }
        }

        public synchronized Cursor a(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            Cursor cursor;
            try {
                a();
                cursor = this.f11018a.query(str, strArr, str2, strArr2, str3, str4, str5);
            } catch (Throwable th) {
                th.printStackTrace();
                C0052b c0052b = new C0052b();
                if (b()) {
                    throw th;
                }
                cursor = c0052b;
            }
            return cursor;
        }

        public synchronized long a(String str, String str2, ContentValues contentValues) {
            long j;
            try {
                a();
                j = this.f11018a.insert(str, str2, contentValues);
            } catch (Exception e) {
                e.printStackTrace();
                if (b()) {
                    throw e;
                }
                j = -1;
            }
            return j;
        }
    }
}
