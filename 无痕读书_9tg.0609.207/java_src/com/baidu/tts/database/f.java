package com.baidu.tts.database;

import android.database.sqlite.SQLiteDatabase;
/* compiled from: TransactionTask.java */
/* loaded from: classes8.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public SQLiteDatabase f11205a;
    public a b;

    /* compiled from: TransactionTask.java */
    /* loaded from: classes8.dex */
    public interface a {
        boolean a(SQLiteDatabase sQLiteDatabase);
    }

    public f(SQLiteDatabase sQLiteDatabase, a aVar) {
        this.f11205a = sQLiteDatabase;
        this.b = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0030, code lost:
        if (r0 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a() {
        /*
            r3 = this;
            com.baidu.tts.database.f$a r0 = r3.b
            r1 = 0
            if (r0 == 0) goto L40
            android.database.sqlite.SQLiteDatabase r0 = r3.f11205a
            if (r0 == 0) goto L40
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2a
            com.baidu.tts.database.f$a r0 = r3.b     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2a
            android.database.sqlite.SQLiteDatabase r2 = r3.f11205a     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2a
            boolean r1 = r0.a(r2)     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2a
            if (r1 == 0) goto L1b
            android.database.sqlite.SQLiteDatabase r0 = r3.f11205a     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2a
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2a
        L1b:
            android.database.sqlite.SQLiteDatabase r0 = r3.f11205a
            if (r0 == 0) goto L40
        L1f:
            r0.endTransaction()
            android.database.sqlite.SQLiteDatabase r0 = r3.f11205a
            r0.close()
            goto L40
        L28:
            r0 = move-exception
            goto L33
        L2a:
            r0 = move-exception
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L28
            android.database.sqlite.SQLiteDatabase r0 = r3.f11205a
            if (r0 == 0) goto L40
            goto L1f
        L33:
            android.database.sqlite.SQLiteDatabase r1 = r3.f11205a
            if (r1 == 0) goto L3f
            r1.endTransaction()
            android.database.sqlite.SQLiteDatabase r1 = r3.f11205a
            r1.close()
        L3f:
            throw r0
        L40:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.database.f.a():boolean");
    }
}
