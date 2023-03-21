package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public static o f12096a;
    public static p b;
    public static boolean c;

    public o(Context context, List<com.tencent.bugly.a> list) {
        b = new p(context, list);
    }

    private synchronized boolean b(q qVar) {
        ContentValues d;
        if (qVar == null) {
            return false;
        }
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase == null || (d = d(qVar)) == null) {
                return false;
            }
            long replace = writableDatabase.replace("t_pf", com.umeng.analytics.pro.ao.d, d);
            if (replace >= 0) {
                y.c("[Database] insert %s success.", "t_pf");
                qVar.f12099a = replace;
                return true;
            }
            return false;
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                return false;
            } finally {
            }
        }
    }

    public static ContentValues c(q qVar) {
        if (qVar == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            if (qVar.f12099a > 0) {
                contentValues.put(com.umeng.analytics.pro.ao.d, Long.valueOf(qVar.f12099a));
            }
            contentValues.put(com.umeng.analytics.pro.ao.e, Integer.valueOf(qVar.b));
            contentValues.put("_pc", qVar.c);
            contentValues.put("_th", qVar.d);
            contentValues.put("_tm", Long.valueOf(qVar.e));
            if (qVar.g != null) {
                contentValues.put("_dt", qVar.g);
            }
            return contentValues;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public static ContentValues d(q qVar) {
        if (qVar != null && !ab.a(qVar.f)) {
            try {
                ContentValues contentValues = new ContentValues();
                if (qVar.f12099a > 0) {
                    contentValues.put(com.umeng.analytics.pro.ao.d, Long.valueOf(qVar.f12099a));
                }
                contentValues.put(com.umeng.analytics.pro.ao.e, qVar.f);
                contentValues.put("_tm", Long.valueOf(qVar.e));
                if (qVar.g != null) {
                    contentValues.put("_dt", qVar.g);
                }
                return contentValues;
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static synchronized o a(Context context, List<com.tencent.bugly.a> list) {
        o oVar;
        synchronized (o.class) {
            if (f12096a == null) {
                f12096a = new o(context, list);
            }
            oVar = f12096a;
        }
        return oVar;
    }

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        public int f12097a;
        public n b;
        public String c;
        public ContentValues d;
        public boolean e;
        public String[] f;
        public String g;
        public String[] h;
        public String i;
        public String j;
        public String k;
        public String l;
        public String m;
        public String[] n;
        public int o;
        public String p;
        public byte[] q;

        public a(int i, n nVar) {
            this.f12097a = i;
            this.b = nVar;
        }

        public final void a(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
            this.e = z;
            this.c = str;
            this.f = strArr;
            this.g = str2;
            this.h = strArr2;
            this.i = str3;
            this.j = str4;
            this.k = str5;
            this.l = str6;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            switch (this.f12097a) {
                case 1:
                    o.this.a(this.c, this.d, this.b);
                    return;
                case 2:
                    o.this.a(this.c, this.m, this.n, this.b);
                    return;
                case 3:
                    Cursor a2 = o.this.a(this.e, this.c, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.b);
                    if (a2 != null) {
                        a2.close();
                        return;
                    }
                    return;
                case 4:
                    o.this.a(this.o, this.p, this.q, this.b);
                    return;
                case 5:
                    o.this.a(this.o, this.b);
                    return;
                case 6:
                    o.this.a(this.o, this.p, this.b);
                    return;
                default:
                    return;
            }
        }

        public final void a(int i, String str, byte[] bArr) {
            this.o = i;
            this.p = str;
            this.q = bArr;
        }
    }

    public static synchronized o a() {
        o oVar;
        synchronized (o.class) {
            oVar = f12096a;
        }
        return oVar;
    }

    public final long a(String str, ContentValues contentValues, n nVar, boolean z) {
        return a(str, contentValues, (n) null);
    }

    private synchronized List<q> c(int i) {
        Cursor cursor;
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null) {
                String str = "_id = " + i;
                cursor = writableDatabase.query("t_pf", null, str, null, null, null, null);
                if (cursor == null) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
                try {
                    StringBuilder sb = new StringBuilder();
                    ArrayList arrayList = new ArrayList();
                    while (cursor.moveToNext()) {
                        q b2 = b(cursor);
                        if (b2 != null) {
                            arrayList.add(b2);
                        } else {
                            String string = cursor.getString(cursor.getColumnIndex(com.umeng.analytics.pro.ao.e));
                            sb.append(" or _tp");
                            sb.append(" = ");
                            sb.append(string);
                        }
                    }
                    if (sb.length() > 0) {
                        sb.append(" and _id");
                        sb.append(" = ");
                        sb.append(i);
                        y.d("[Database] deleted %s illegal data %d.", "t_pf", Integer.valueOf(writableDatabase.delete("t_pf", str.substring(4), null)));
                    }
                    cursor.close();
                    return arrayList;
                } catch (Throwable th) {
                    th = th;
                    if (!y.a(th)) {
                        th.printStackTrace();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        return null;
    }

    public final Cursor a(String str, String[] strArr, String str2, String[] strArr2, n nVar, boolean z) {
        return a(false, str, strArr, str2, (String[]) null, (String) null, (String) null, (String) null, (String) null, (n) null, true);
    }

    public final Cursor a(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, n nVar, boolean z2) {
        if (!z2) {
            a aVar = new a(3, nVar);
            aVar.a(false, str, strArr, str2, strArr2, null, null, str5, str6);
            x.a().a(aVar);
            return null;
        }
        return a(false, str, strArr, str2, strArr2, null, null, str5, str6, nVar);
    }

    public final synchronized void b(int i) {
        String str;
        SQLiteDatabase writableDatabase = b.getWritableDatabase();
        if (writableDatabase != null) {
            if (i >= 0) {
                str = "_tp = " + i;
            } else {
                str = null;
            }
            y.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", str, null)));
        }
    }

    public final int a(String str, String str2, String[] strArr, n nVar, boolean z) {
        return a(str, str2, (String[]) null, (n) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized long a(String str, ContentValues contentValues, n nVar) {
        long j;
        j = -1;
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null && contentValues != null) {
                long replace = writableDatabase.replace(str, com.umeng.analytics.pro.ao.d, contentValues);
                if (replace >= 0) {
                    y.c("[Database] insert %s success.", str);
                } else {
                    y.d("[Database] replace %s error.", str);
                }
                j = replace;
            }
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j;
    }

    public static q b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            q qVar = new q();
            qVar.f12099a = cursor.getLong(cursor.getColumnIndex(com.umeng.analytics.pro.ao.d));
            qVar.e = cursor.getLong(cursor.getColumnIndex("_tm"));
            qVar.f = cursor.getString(cursor.getColumnIndex(com.umeng.analytics.pro.ao.e));
            qVar.g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return qVar;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Cursor a(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, n nVar) {
        Cursor cursor;
        cursor = null;
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null) {
                cursor = writableDatabase.query(z, str, strArr, str2, strArr2, str3, str4, str5, str6);
            }
        } finally {
            try {
                return cursor;
            } finally {
            }
        }
        return cursor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int a(String str, String str2, String[] strArr, n nVar) {
        int i;
        i = 0;
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null) {
                i = writableDatabase.delete(str, str2, strArr);
            }
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i;
    }

    public final boolean a(int i, String str, byte[] bArr, n nVar, boolean z) {
        if (!z) {
            a aVar = new a(4, null);
            aVar.a(i, str, bArr);
            x.a().a(aVar);
            return true;
        }
        return a(i, str, bArr, (n) null);
    }

    public final Map<String, byte[]> a(int i, n nVar, boolean z) {
        return a(i, (n) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, String str, byte[] bArr, n nVar) {
        try {
            q qVar = new q();
            qVar.f12099a = i;
            qVar.f = str;
            qVar.e = System.currentTimeMillis();
            qVar.g = bArr;
            return b(qVar);
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, byte[]> a(int i, n nVar) {
        HashMap hashMap = null;
        try {
            List<q> c2 = c(i);
            if (c2 != null) {
                HashMap hashMap2 = new HashMap();
                try {
                    for (q qVar : c2) {
                        byte[] bArr = qVar.g;
                        if (bArr != null) {
                            hashMap2.put(qVar.f, bArr);
                        }
                    }
                    return hashMap2;
                } catch (Throwable th) {
                    th = th;
                    hashMap = hashMap2;
                    if (y.a(th)) {
                        return hashMap;
                    }
                    th.printStackTrace();
                    return hashMap;
                }
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final synchronized boolean a(q qVar) {
        ContentValues c2;
        if (qVar == null) {
            return false;
        }
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase == null || (c2 = c(qVar)) == null) {
                return false;
            }
            long replace = writableDatabase.replace("t_lr", com.umeng.analytics.pro.ao.d, c2);
            if (replace >= 0) {
                y.c("[Database] insert %s success.", "t_lr");
                qVar.f12099a = replace;
                return true;
            }
            return false;
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                return false;
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a8 A[Catch: all -> 0x00b1, TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:14:0x0031, B:30:0x0099, B:39:0x00ad, B:35:0x00a2, B:37:0x00a8), top: B:49:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ad A[Catch: all -> 0x00ba, TRY_ENTER, TryCatch #2 {, blocks: (B:3:0x0001, B:14:0x0031, B:30:0x0099, B:39:0x00ad, B:35:0x00a2, B:37:0x00a8), top: B:49:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized java.util.List<com.tencent.bugly.proguard.q> a(int r12) {
        /*
            r11 = this;
            monitor-enter(r11)
            com.tencent.bugly.proguard.p r0 = com.tencent.bugly.proguard.o.b     // Catch: java.lang.Throwable -> Lba
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()     // Catch: java.lang.Throwable -> Lba
            r9 = 0
            if (r0 == 0) goto Lb8
            if (r12 < 0) goto L20
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L1c
            java.lang.String r2 = "_tp = "
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L1c
            r1.append(r12)     // Catch: java.lang.Throwable -> L1c
            java.lang.String r12 = r1.toString()     // Catch: java.lang.Throwable -> L1c
            r4 = r12
            goto L21
        L1c:
            r12 = move-exception
            r0 = r9
            goto La2
        L20:
            r4 = r9
        L21:
            java.lang.String r2 = "t_lr"
            r3 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r1 = r0
            android.database.Cursor r12 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L1c
            if (r12 != 0) goto L36
            if (r12 == 0) goto L34
            r12.close()     // Catch: java.lang.Throwable -> Lba
        L34:
            monitor-exit(r11)
            return r9
        L36:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9e
            r1.<init>()     // Catch: java.lang.Throwable -> L9e
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L9e
            r2.<init>()     // Catch: java.lang.Throwable -> L9e
        L40:
            boolean r3 = r12.moveToNext()     // Catch: java.lang.Throwable -> L9e
            r4 = 0
            if (r3 == 0) goto L71
            com.tencent.bugly.proguard.q r3 = a(r12)     // Catch: java.lang.Throwable -> L9e
            if (r3 == 0) goto L51
            r2.add(r3)     // Catch: java.lang.Throwable -> L9e
            goto L40
        L51:
            java.lang.String r3 = "_id"
            int r3 = r12.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L69
            long r5 = r12.getLong(r3)     // Catch: java.lang.Throwable -> L69
            java.lang.String r3 = " or _id"
            r1.append(r3)     // Catch: java.lang.Throwable -> L69
            java.lang.String r3 = " = "
            r1.append(r3)     // Catch: java.lang.Throwable -> L69
            r1.append(r5)     // Catch: java.lang.Throwable -> L69
            goto L40
        L69:
            java.lang.String r3 = "[Database] unknown id."
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L9e
            com.tencent.bugly.proguard.y.d(r3, r4)     // Catch: java.lang.Throwable -> L9e
            goto L40
        L71:
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L9e
            int r3 = r1.length()     // Catch: java.lang.Throwable -> L9e
            if (r3 <= 0) goto L99
            r3 = 4
            java.lang.String r1 = r1.substring(r3)     // Catch: java.lang.Throwable -> L9e
            java.lang.String r3 = "t_lr"
            int r0 = r0.delete(r3, r1, r9)     // Catch: java.lang.Throwable -> L9e
            java.lang.String r1 = "[Database] deleted %s illegal data %d"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L9e
            java.lang.String r5 = "t_lr"
            r3[r4] = r5     // Catch: java.lang.Throwable -> L9e
            r4 = 1
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L9e
            r3[r4] = r0     // Catch: java.lang.Throwable -> L9e
            com.tencent.bugly.proguard.y.d(r1, r3)     // Catch: java.lang.Throwable -> L9e
        L99:
            r12.close()     // Catch: java.lang.Throwable -> Lba
            monitor-exit(r11)
            return r2
        L9e:
            r0 = move-exception
            r10 = r0
            r0 = r12
            r12 = r10
        La2:
            boolean r1 = com.tencent.bugly.proguard.y.a(r12)     // Catch: java.lang.Throwable -> Lb1
            if (r1 != 0) goto Lab
            r12.printStackTrace()     // Catch: java.lang.Throwable -> Lb1
        Lab:
            if (r0 == 0) goto Lb8
            r0.close()     // Catch: java.lang.Throwable -> Lba
            goto Lb8
        Lb1:
            r12 = move-exception
            if (r0 == 0) goto Lb7
            r0.close()     // Catch: java.lang.Throwable -> Lba
        Lb7:
            throw r12     // Catch: java.lang.Throwable -> Lba
        Lb8:
            monitor-exit(r11)
            return r9
        Lba:
            r12 = move-exception
            monitor-exit(r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.o.a(int):java.util.List");
    }

    public final synchronized void a(List<q> list) {
        if (list != null) {
            if (list.size() != 0) {
                SQLiteDatabase writableDatabase = b.getWritableDatabase();
                if (writableDatabase != null) {
                    StringBuilder sb = new StringBuilder();
                    for (q qVar : list) {
                        sb.append(" or _id");
                        sb.append(" = ");
                        sb.append(qVar.f12099a);
                    }
                    String sb2 = sb.toString();
                    if (sb2.length() > 0) {
                        sb2 = sb2.substring(4);
                    }
                    sb.setLength(0);
                    y.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", sb2, null)));
                }
            }
        }
    }

    public static q a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            q qVar = new q();
            qVar.f12099a = cursor.getLong(cursor.getColumnIndex(com.umeng.analytics.pro.ao.d));
            qVar.b = cursor.getInt(cursor.getColumnIndex(com.umeng.analytics.pro.ao.e));
            qVar.c = cursor.getString(cursor.getColumnIndex("_pc"));
            qVar.d = cursor.getString(cursor.getColumnIndex("_th"));
            qVar.e = cursor.getLong(cursor.getColumnIndex("_tm"));
            qVar.g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return qVar;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(int i, String str, n nVar) {
        boolean z;
        String str2;
        z = false;
        try {
            SQLiteDatabase writableDatabase = b.getWritableDatabase();
            if (writableDatabase != null) {
                if (ab.a(str)) {
                    str2 = "_id = " + i;
                } else {
                    str2 = "_id = " + i + " and _tp = \"" + str + "\"";
                }
                int delete = writableDatabase.delete("t_pf", str2, null);
                y.c("[Database] deleted %s data %d", "t_pf", Integer.valueOf(delete));
                if (delete > 0) {
                    z = true;
                }
            }
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z;
    }
}
