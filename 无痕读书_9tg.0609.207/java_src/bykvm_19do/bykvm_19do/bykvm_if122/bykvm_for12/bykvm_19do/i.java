package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
/* compiled from: DBHelper.java */
/* loaded from: classes8.dex */
public class i {
    public static final Object c = new Object();

    /* renamed from: a  reason: collision with root package name */
    public c f10951a;
    public Context b;

    /* compiled from: DBHelper.java */
    /* loaded from: classes8.dex */
    public class b extends AbstractCursor {
        public b(i iVar) {
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

    public i(Context context) {
        try {
            this.b = context == null ? bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d() : context.getApplicationContext();
            if (this.f10951a == null) {
                this.f10951a = new c();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context c() {
        Context context = this.b;
        return context == null ? bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d() : context;
    }

    /* compiled from: DBHelper.java */
    /* loaded from: classes8.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public SQLiteDatabase f10952a = null;

        public c() {
        }

        private void b() {
            try {
                synchronized (i.c) {
                    if (this.f10952a == null || !this.f10952a.isOpen()) {
                        SQLiteDatabase writableDatabase = new j(i.this.c(), "tt_mediation_open_sdk.db", 4).getWritableDatabase();
                        this.f10952a = writableDatabase;
                        writableDatabase.setLockingEnabled(false);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
                c();
            }
        }

        private boolean c() {
            SQLiteDatabase sQLiteDatabase = this.f10952a;
            return sQLiteDatabase != null && sQLiteDatabase.isOpen() && sQLiteDatabase.inTransaction();
        }

        public SQLiteDatabase a() {
            b();
            return this.f10952a;
        }

        public void a(String str) throws SQLException {
            boolean c;
            try {
                b();
                this.f10952a.execSQL(str);
            } finally {
                if (!c) {
                }
            }
        }

        public Cursor a(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
            try {
                b();
                return this.f10952a.query(str, strArr, str2, strArr2, str3, str4, str5, str6);
            } catch (Throwable th) {
                th.printStackTrace();
                b bVar = new b();
                if (c()) {
                    throw th;
                }
                return bVar;
            }
        }

        public long a(String str, String str2, ContentValues contentValues) {
            try {
                b();
                return this.f10952a.insert(str, str2, contentValues);
            } catch (Exception e) {
                e.printStackTrace();
                if (c()) {
                    throw e;
                }
                return -1L;
            }
        }

        public int a(String str, String str2, String[] strArr) {
            try {
                b();
                return this.f10952a.delete(str, str2, strArr);
            } catch (Exception e) {
                e.printStackTrace();
                if (c()) {
                    throw e;
                }
                return 0;
            }
        }
    }

    public c a() {
        return this.f10951a;
    }
}
