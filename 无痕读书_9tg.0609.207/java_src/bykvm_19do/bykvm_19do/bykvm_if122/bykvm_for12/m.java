package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
/* compiled from: MyDBCallback.java */
/* loaded from: classes8.dex */
public class m implements bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.e {
    public static final m b = new m();

    /* renamed from: a  reason: collision with root package name */
    public volatile SQLiteDatabase f10962a;

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.e
    public SQLiteDatabase a(Context context) {
        if (this.f10962a == null) {
            synchronized (this) {
                if (this.f10962a == null) {
                    this.f10962a = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.h.a(context).a().a();
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("---------------DB CREATE  SUCCESS------------");
                }
            }
        }
        return this.f10962a;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.e
    public String a() {
        return "adevent";
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.e
    public String b() {
        return null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.e
    public String c() {
        return null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.e
    public String d() {
        return "adevent_applog";
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.e
    public String e() {
        return null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.e
    public String f() {
        return null;
    }
}
