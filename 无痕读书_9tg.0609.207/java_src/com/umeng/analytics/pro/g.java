package com.umeng.analytics.pro;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: UMDBManager.java */
/* loaded from: classes7.dex */
public class g {
    public static SQLiteOpenHelper b;
    public static Context d;

    /* renamed from: a  reason: collision with root package name */
    public AtomicInteger f12199a;
    public SQLiteDatabase c;

    /* compiled from: UMDBManager.java */
    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final g f12200a = new g();
    }

    public static g a(Context context) {
        if (d == null && context != null) {
            Context applicationContext = context.getApplicationContext();
            d = applicationContext;
            b = f.a(applicationContext);
        }
        return a.f12200a;
    }

    public synchronized void b() {
        try {
            if (this.f12199a.decrementAndGet() == 0) {
                this.c.close();
            }
        } catch (Throwable unused) {
        }
    }

    public g() {
        this.f12199a = new AtomicInteger();
    }

    public synchronized SQLiteDatabase a() {
        if (this.f12199a.incrementAndGet() == 1) {
            this.c = b.getWritableDatabase();
        }
        return this.c;
    }
}
