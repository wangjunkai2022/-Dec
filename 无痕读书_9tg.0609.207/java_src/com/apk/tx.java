package com.apk;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.Lock;
/* compiled from: BaseDao.java */
/* loaded from: classes8.dex */
public abstract class tx<T> {

    /* renamed from: new  reason: not valid java name */
    public static String f4773new;

    /* renamed from: do  reason: not valid java name */
    public Lock f4774do;

    /* renamed from: for  reason: not valid java name */
    public SQLiteDatabase f4775for;

    /* renamed from: if  reason: not valid java name */
    public SQLiteOpenHelper f4776if;

    public tx(SQLiteOpenHelper sQLiteOpenHelper) {
        f4773new = getClass().getSimpleName();
        this.f4774do = wx.f5409try;
        this.f4776if = sQLiteOpenHelper;
        this.f4775for = sQLiteOpenHelper.getWritableDatabase();
    }

    public boolean delete(String str, String[] strArr) {
        System.currentTimeMillis();
        this.f4774do.lock();
        try {
            try {
                this.f4775for.beginTransaction();
                this.f4775for.delete(mo2625for(), str, strArr);
                this.f4775for.setTransactionSuccessful();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                this.f4775for.endTransaction();
                this.f4774do.unlock();
                System.currentTimeMillis();
                return false;
            }
        } finally {
            this.f4775for.endTransaction();
            this.f4774do.unlock();
            System.currentTimeMillis();
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final void m2624do(SQLiteDatabase sQLiteDatabase, Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return;
        }
        cursor.close();
    }

    /* renamed from: for  reason: not valid java name */
    public abstract String mo2625for();

    /* renamed from: if  reason: not valid java name */
    public abstract ContentValues mo2626if(T t);

    public boolean insert(T t) {
        if (t == null) {
            return false;
        }
        System.currentTimeMillis();
        this.f4774do.lock();
        try {
            this.f4775for.beginTransaction();
            this.f4775for.insert(mo2625for(), null, mo2626if(t));
            this.f4775for.setTransactionSuccessful();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            this.f4775for.endTransaction();
            this.f4774do.unlock();
            System.currentTimeMillis();
        }
    }

    /* renamed from: new  reason: not valid java name */
    public abstract T mo2627new(Cursor cursor);

    public List<T> query(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        return query(sQLiteDatabase, null, str, strArr, null, null, null, null);
    }

    /* renamed from: try  reason: not valid java name */
    public boolean m2628try(T t) {
        if (t == null) {
            return false;
        }
        System.currentTimeMillis();
        this.f4774do.lock();
        try {
            this.f4775for.beginTransaction();
            this.f4775for.replace(mo2625for(), null, mo2626if(t));
            this.f4775for.setTransactionSuccessful();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            this.f4775for.endTransaction();
            this.f4774do.unlock();
            System.currentTimeMillis();
        }
    }

    public boolean update(T t, String str, String[] strArr) {
        if (t == null) {
            return false;
        }
        System.currentTimeMillis();
        this.f4774do.lock();
        try {
            this.f4775for.beginTransaction();
            this.f4775for.update(mo2625for(), mo2626if(t), str, strArr);
            this.f4775for.setTransactionSuccessful();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            this.f4775for.endTransaction();
            this.f4774do.unlock();
            System.currentTimeMillis();
        }
    }

    public List<T> query(SQLiteDatabase sQLiteDatabase, String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5) {
        Cursor cursor;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                cursor = sQLiteDatabase.query(mo2625for(), strArr, str, strArr2, str2, str3, str4, str5);
                while (!cursor.isClosed() && cursor.moveToNext()) {
                    try {
                        arrayList.add(mo2627new(cursor));
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        m2624do(null, cursor);
                        return arrayList;
                    }
                }
            } catch (Throwable th) {
                th = th;
                m2624do(null, null);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            m2624do(null, null);
            throw th;
        }
        m2624do(null, cursor);
        return arrayList;
    }

    public List<T> query(String str, String[] strArr) {
        return query(null, str, strArr, null, null, null, null);
    }

    public List<T> query(String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5) {
        Cursor cursor;
        System.currentTimeMillis();
        this.f4774do.lock();
        ArrayList arrayList = new ArrayList();
        try {
            try {
                this.f4775for.beginTransaction();
                cursor = this.f4775for.query(mo2625for(), strArr, str, strArr2, str2, str3, str4, str5);
                while (!cursor.isClosed() && cursor.moveToNext()) {
                    try {
                        arrayList.add(mo2627new(cursor));
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        m2624do(null, cursor);
                        this.f4775for.endTransaction();
                        this.f4774do.unlock();
                        System.currentTimeMillis();
                        return arrayList;
                    }
                }
                this.f4775for.setTransactionSuccessful();
            } catch (Throwable th) {
                th = th;
                m2624do(null, null);
                this.f4775for.endTransaction();
                this.f4774do.unlock();
                System.currentTimeMillis();
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            m2624do(null, null);
            this.f4775for.endTransaction();
            this.f4774do.unlock();
            System.currentTimeMillis();
            throw th;
        }
        m2624do(null, cursor);
        this.f4775for.endTransaction();
        this.f4774do.unlock();
        System.currentTimeMillis();
        return arrayList;
    }

    public long delete(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        return sQLiteDatabase.delete(mo2625for(), str, strArr);
    }

    public long insert(SQLiteDatabase sQLiteDatabase, T t) {
        return sQLiteDatabase.insert(mo2625for(), null, mo2626if(t));
    }

    public long update(SQLiteDatabase sQLiteDatabase, T t, String str, String[] strArr) {
        return sQLiteDatabase.update(mo2625for(), mo2626if(t), str, strArr);
    }

    public boolean insert(List<T> list) {
        if (list == null) {
            return false;
        }
        System.currentTimeMillis();
        this.f4774do.lock();
        try {
            this.f4775for.beginTransaction();
            for (T t : list) {
                this.f4775for.insert(mo2625for(), null, mo2626if(t));
            }
            this.f4775for.setTransactionSuccessful();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            this.f4775for.endTransaction();
            this.f4774do.unlock();
            System.currentTimeMillis();
        }
    }

    public boolean update(ContentValues contentValues, String str, String[] strArr) {
        System.currentTimeMillis();
        this.f4774do.lock();
        try {
            try {
                this.f4775for.beginTransaction();
                this.f4775for.update(mo2625for(), contentValues, str, strArr);
                this.f4775for.setTransactionSuccessful();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                this.f4775for.endTransaction();
                this.f4774do.unlock();
                System.currentTimeMillis();
                return false;
            }
        } finally {
            this.f4775for.endTransaction();
            this.f4774do.unlock();
            System.currentTimeMillis();
        }
    }

    public long update(SQLiteDatabase sQLiteDatabase, ContentValues contentValues, String str, String[] strArr) {
        return sQLiteDatabase.update(mo2625for(), contentValues, str, strArr);
    }

    public boolean insert(SQLiteDatabase sQLiteDatabase, List<T> list) {
        try {
            for (T t : list) {
                sQLiteDatabase.insert(mo2625for(), null, mo2626if(t));
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
