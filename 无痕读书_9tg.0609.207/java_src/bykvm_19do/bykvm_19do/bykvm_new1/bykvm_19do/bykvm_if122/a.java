package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j;
/* compiled from: NpthDataManager.java */
/* loaded from: classes8.dex */
public class a {
    public static volatile a c;

    /* renamed from: a  reason: collision with root package name */
    public bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_if122.b f11068a;
    public SQLiteDatabase b;

    public static a a() {
        if (c == null) {
            synchronized (a.class) {
                if (c == null) {
                    c = new a();
                }
            }
        }
        return c;
    }

    public void a(Context context) {
        try {
            this.b = new b(context).getWritableDatabase();
        } catch (Throwable th) {
            j.b(th);
        }
        this.f11068a = new bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_if122.b();
    }

    public synchronized void a(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_19do.a aVar) {
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_if122.b bVar = this.f11068a;
        if (bVar != null) {
            bVar.a(this.b, aVar);
        }
    }

    public synchronized boolean a(String str) {
        bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_if122.b bVar = this.f11068a;
        if (bVar != null) {
            return bVar.a(this.b, str);
        }
        return false;
    }
}
