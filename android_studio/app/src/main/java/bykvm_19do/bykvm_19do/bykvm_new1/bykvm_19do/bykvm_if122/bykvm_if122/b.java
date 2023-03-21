package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_if122;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j;
import com.apk.Cgoto;
import com.umeng.analytics.pro.ao;
import java.util.HashMap;

/* compiled from: DuplicateLogDAO.java */
/* loaded from: classes8.dex */
public class b extends a<bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_19do.a> {
    public b() {
        super("duplicatelog");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002d A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(android.database.sqlite.SQLiteDatabase r11, java.lang.String r12) {
        /*
            r10 = this;
            r0 = 0
            if (r11 == 0) goto L2e
            boolean r1 = android.text.TextUtils.isEmpty(r12)
            if (r1 == 0) goto La
            goto L2e
        La:
            r1 = 1
            java.lang.String r3 = r10.f11070a     // Catch: java.lang.Exception -> L26
            r4 = 0
            java.lang.String r5 = "path=?"
            java.lang.String[] r6 = new java.lang.String[r1]     // Catch: java.lang.Exception -> L26
            r6[r0] = r12     // Catch: java.lang.Exception -> L26
            r7 = 0
            r8 = 0
            r9 = 0
            r2 = r11
            android.database.Cursor r11 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L26
            int r12 = r11.getCount()     // Catch: java.lang.Exception -> L26
            r11.close()     // Catch: java.lang.Exception -> L24
            goto L2b
        L24:
            r11 = move-exception
            goto L28
        L26:
            r11 = move-exception
            r12 = 0
        L28:
            bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_case1.j.b(r11)
        L2b:
            if (r12 <= 0) goto L2e
            r0 = 1
        L2e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_if122.b.a(android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
    }

    public void a(SQLiteDatabase sQLiteDatabase, bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_19do.a aVar) {
        if (aVar == null || a(sQLiteDatabase, aVar.f11069a)) {
            return;
        }
        super.a(sQLiteDatabase, (SQLiteDatabase) aVar);
        try {
            sQLiteDatabase.execSQL("delete from " + this.f11070a + " where " + ao.d + " in (select " + ao.d + " from " + this.f11070a + " order by insert_time desc limit 1000 offset 500)");
        } catch (Exception e) {
            j.b(e);
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_if122.a
    public HashMap<String, String> a() {
        HashMap<String, String> m1012public = Cgoto.m1012public("path", "TEXT", "insert_time", "INTEGER");
        m1012public.put("ext1", "TEXT");
        m1012public.put("ext2", "TEXT");
        return m1012public;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_if122.a
    public ContentValues a(bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_if122.bykvm_19do.a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("path", aVar.f11069a);
        contentValues.put("insert_time", Long.valueOf(aVar.b));
        return contentValues;
    }
}
