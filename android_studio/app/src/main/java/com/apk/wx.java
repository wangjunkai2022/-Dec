package com.apk;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.core.app.NotificationCompat;
import androidx.core.app.Person;
import com.apk.tw;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: DBHelper.java */
/* loaded from: classes8.dex */
public class wx extends SQLiteOpenHelper {

    /* renamed from: try  reason: not valid java name */
    public static final Lock f5409try = new ReentrantLock();

    /* renamed from: do  reason: not valid java name */
    public yx f5410do;

    /* renamed from: for  reason: not valid java name */
    public yx f5411for;

    /* renamed from: if  reason: not valid java name */
    public yx f5412if;

    /* renamed from: new  reason: not valid java name */
    public yx f5413new;

    public wx() {
        super(tw.Cif.f4772do.getContext(), "okgo.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f5410do = new yx("cache");
        this.f5412if = new yx("cookie");
        this.f5411for = new yx("download");
        this.f5413new = new yx("upload");
        yx yxVar = this.f5410do;
        yxVar.f6080if.add(Cgoto.m1002if(yxVar.f6080if, Cgoto.m1002if(yxVar.f6080if, Cgoto.m1002if(yxVar.f6080if, new vx(Person.KEY_KEY, "VARCHAR", true, true), "localExpire", "INTEGER"), "head", "BLOB"), "data", "BLOB"));
        yx yxVar2 = this.f5412if;
        yxVar2.f6080if.add(Cgoto.m1002if(yxVar2.f6080if, Cgoto.m1002if(yxVar2.f6080if, Cgoto.m1002if(yxVar2.f6080if, new vx("host", "VARCHAR"), "name", "VARCHAR"), "domain", "VARCHAR"), "cookie", "BLOB"));
        yxVar2.f6080if.add(new vx("host", "name", "domain"));
        yx yxVar3 = this.f5411for;
        yxVar3.f6080if.add(Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, Cgoto.m1002if(yxVar3.f6080if, new vx("tag", "VARCHAR", true, true), "url", "VARCHAR"), "folder", "VARCHAR"), "filePath", "VARCHAR"), "fileName", "VARCHAR"), "fraction", "VARCHAR"), "totalSize", "INTEGER"), "currentSize", "INTEGER"), NotificationCompat.CATEGORY_STATUS, "INTEGER"), "priority", "INTEGER"), "date", "INTEGER"), TTLogUtil.TAG_EVENT_REQUEST, "BLOB"), "extra1", "BLOB"), "extra2", "BLOB"), "extra3", "BLOB"));
        yx yxVar4 = this.f5413new;
        yxVar4.f6080if.add(Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, Cgoto.m1002if(yxVar4.f6080if, new vx("tag", "VARCHAR", true, true), "url", "VARCHAR"), "folder", "VARCHAR"), "filePath", "VARCHAR"), "fileName", "VARCHAR"), "fraction", "VARCHAR"), "totalSize", "INTEGER"), "currentSize", "INTEGER"), NotificationCompat.CATEGORY_STATUS, "INTEGER"), "priority", "INTEGER"), "date", "INTEGER"), TTLogUtil.TAG_EVENT_REQUEST, "BLOB"), "extra1", "BLOB"), "extra2", "BLOB"), "extra3", "BLOB"));
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(this.f5410do.m3122do());
        sQLiteDatabase.execSQL(this.f5412if.m3122do());
        sQLiteDatabase.execSQL(this.f5411for.m3122do());
        sQLiteDatabase.execSQL(this.f5413new.m3122do());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (mu.n(sQLiteDatabase, this.f5410do)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cache");
        }
        if (mu.n(sQLiteDatabase, this.f5412if)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cookie");
        }
        if (mu.n(sQLiteDatabase, this.f5411for)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS download");
        }
        if (mu.n(sQLiteDatabase, this.f5413new)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS upload");
        }
        onCreate(sQLiteDatabase);
    }
}
