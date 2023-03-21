package com.umeng.analytics.process;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: UMProcessDBManager.java */
/* loaded from: classes7.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static c f12236a;
    public ConcurrentHashMap<String, a> b = new ConcurrentHashMap<>();
    public Context c;

    public static c a(Context context) {
        if (f12236a == null) {
            synchronized (c.class) {
                if (f12236a == null) {
                    f12236a = new c();
                }
            }
        }
        c cVar = f12236a;
        cVar.c = context;
        return cVar;
    }

    private a c(String str) {
        if (this.b.get(str) == null) {
            a a2 = a.a(this.c, str);
            this.b.put(str, a2);
            return a2;
        }
        return this.b.get(str);
    }

    public synchronized void b(String str) {
        c(str).b();
    }

    /* compiled from: UMProcessDBManager.java */
    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public AtomicInteger f12237a = new AtomicInteger();
        public SQLiteOpenHelper b;
        public SQLiteDatabase c;

        public static a a(Context context, String str) {
            Context appContext = UMGlobalContext.getAppContext(context);
            a aVar = new a();
            aVar.b = b.a(appContext, str);
            return aVar;
        }

        public synchronized void b() {
            try {
                if (this.f12237a.decrementAndGet() == 0) {
                    this.c.close();
                }
            } catch (Throwable unused) {
            }
        }

        public synchronized SQLiteDatabase a() {
            if (this.f12237a.incrementAndGet() == 1) {
                this.c = this.b.getWritableDatabase();
            }
            return this.c;
        }
    }

    public synchronized SQLiteDatabase a(String str) {
        return c(str).a();
    }
}
