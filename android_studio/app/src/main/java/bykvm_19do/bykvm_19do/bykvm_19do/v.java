package bykvm_19do.bykvm_19do.bykvm_19do;

import android.app.Application;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class v {
    public static int d;
    public static final HashMap<String, u> e;

    /* renamed from: a  reason: collision with root package name */
    public final j2 f10652a;
    public final k2 b;
    public final a c;

    /* loaded from: classes8.dex */
    public static class a extends SQLiteOpenHelper {
        public a(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
            super(context, str, cursorFactory, i);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.beginTransaction();
                for (u uVar : v.e.values()) {
                    String c = uVar.c();
                    if (c != null) {
                        sQLiteDatabase.execSQL(c);
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
            } catch (Exception e) {
                l0.a(e);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            onUpgrade(sQLiteDatabase, i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            l0.d("onUpgrade, " + i + ", " + i2, null);
            try {
                sQLiteDatabase.beginTransaction();
                Iterator<u> it = v.e.values().iterator();
                while (it.hasNext()) {
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + it.next().d());
                }
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
            } catch (Exception e) {
                l0.a(e);
            }
            onCreate(sQLiteDatabase);
        }
    }

    static {
        String str = c0.o;
        e = new HashMap<>();
        a(new b0());
        a(new w());
        a(new y(null, false, null));
        a(new z());
        a(new d0());
        a(new a0());
        a(new x("", new JSONObject()));
        a(new c0());
    }

    public v(Application application, k2 k2Var, j2 j2Var) {
        this.c = new a(application, "bd_embed_m_log.db", null, 29);
        this.b = k2Var;
        this.f10652a = j2Var;
    }

    private String a(u uVar, String str, int i) {
        StringBuilder m1016super = Cgoto.m1016super("SELECT * FROM ");
        m1016super.append(uVar.d());
        m1016super.append(" WHERE ");
        m1016super.append("session_id");
        m1016super.append("='");
        Cgoto.m993continue(m1016super, str, "' ORDER BY ", "local_time_ms", " LIMIT ");
        m1016super.append(i);
        return m1016super.toString();
    }

    private void a(a0 a0Var, HashMap<String, Integer> hashMap, boolean z) {
    }

    private String a(u uVar, String str, long j) {
        StringBuilder m1016super = Cgoto.m1016super("DELETE FROM ");
        m1016super.append(uVar.d());
        m1016super.append(" WHERE ");
        m1016super.append("session_id");
        m1016super.append("='");
        Cgoto.m993continue(m1016super, str, "' AND ", "local_time_ms", "<=");
        m1016super.append(j);
        return m1016super.toString();
    }

    private String a(long j, int i) {
        return "UPDATE pack SET _fail=" + i + " WHERE local_time_ms=" + j;
    }

    public static void a(u uVar) {
        e.put(uVar.d(), uVar);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:4|5|(2:122|123)|7|(10:(4:(4:109|(1:111)|118|(8:120|25|(15:28|29|30|31|32|(2:70|71)|34|(3:68|69|43)|38|39|40|41|42|43|26)|88|89|90|91|92))|90|91|92)|17|18|(1:22)|23|24|25|(1:26)|88|89)|11|12|(1:14)(1:104)|15|16) */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0090, code lost:
        if (r5[2].length() <= 0) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f7, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f8, code lost:
        r6 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fd, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fe, code lost:
        r6 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x012b, code lost:
        if (r5[0].length() <= 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x006e, code lost:
        if (r5[0].length() <= 0) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01a6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x010f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(org.json.JSONObject r26, bykvm_19do.bykvm_19do.bykvm_19do.z r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_19do.v.a(org.json.JSONObject, bykvm_19do.bykvm_19do.bykvm_19do.z, boolean):boolean");
    }

    private boolean a(z zVar, boolean z) {
        return !zVar.l && z;
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x028c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0279 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0113 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d9 A[Catch: all -> 0x00af, Exception -> 0x00b5, TRY_ENTER, TRY_LEAVE, TryCatch #15 {Exception -> 0x00b5, all -> 0x00af, blocks: (B:13:0x009f, B:30:0x00d9, B:36:0x00e6), top: B:154:0x009f }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e6 A[Catch: all -> 0x00af, Exception -> 0x00b5, TRY_ENTER, TRY_LEAVE, TryCatch #15 {Exception -> 0x00b5, all -> 0x00af, blocks: (B:13:0x009f, B:30:0x00d9, B:36:0x00e6), top: B:154:0x009f }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x017b A[Catch: all -> 0x0141, Exception -> 0x0215, TRY_ENTER, TryCatch #1 {all -> 0x0141, blocks: (B:44:0x013d, B:57:0x017b, B:61:0x018e), top: B:136:0x013d }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01b4 A[Catch: all -> 0x024a, Exception -> 0x024c, TryCatch #18 {Exception -> 0x024c, all -> 0x024a, blocks: (B:64:0x01ac, B:68:0x01b4, B:70:0x01cc, B:72:0x01d0, B:76:0x01da, B:88:0x0229, B:89:0x023a), top: B:148:0x01ac }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(org.json.JSONObject r49) {
        /*
            Method dump skipped, instructions count: 662
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_19do.v.a(org.json.JSONObject):boolean");
    }

    private int a(u[] uVarArr, int i, SQLiteDatabase sQLiteDatabase, String str, JSONArray[] jSONArrayArr) {
        int i2 = 0;
        while (i2 < i) {
            jSONArrayArr[i2] = null;
            i2++;
        }
        int i3 = 200;
        while (i3 > 0 && i2 < uVarArr.length) {
            jSONArrayArr[i2] = a(sQLiteDatabase, uVarArr[i2], str, i3);
            i3 -= jSONArrayArr[i2].length();
            if (i3 > 0) {
                i2++;
            }
        }
        return i2;
    }

    private JSONArray a(SQLiteDatabase sQLiteDatabase, u uVar, String str, int i) {
        Cursor cursor;
        long j;
        JSONArray jSONArray = new JSONArray();
        long j2 = 0;
        try {
            cursor = sQLiteDatabase.rawQuery(a(uVar, str, i), null);
            j = 0;
            while (cursor.moveToNext()) {
                try {
                    uVar.a(cursor);
                    if (l0.f10634a) {
                        l0.a("queryEvnetInner, " + str + ", " + uVar, null);
                    }
                    jSONArray.put(uVar.f());
                    if (uVar.f10650a > j) {
                        j = uVar.f10650a;
                    }
                } catch (Throwable th) {
                    th = th;
                    j2 = j;
                    try {
                        l0.a(th);
                        if (cursor != null) {
                            j = j2;
                            cursor.close();
                            j2 = j;
                        }
                        l0.a("queryEvent, " + uVar + ", " + jSONArray.length() + ", " + j2, null);
                        return jSONArray;
                    } catch (Throwable th2) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th2;
                    }
                }
            }
            if (j > 0) {
                sQLiteDatabase.execSQL(a(uVar, str, j));
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        cursor.close();
        j2 = j;
        l0.a("queryEvent, " + uVar + ", " + jSONArray.length() + ", " + j2, null);
        return jSONArray;
    }

    private JSONArray a(z zVar, d0 d0Var, b0 b0Var, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        boolean z = false;
        String[] strArr = {zVar.c};
        JSONArray jSONArray = new JSONArray();
        long j = 0;
        try {
            cursor = sQLiteDatabase.rawQuery("SELECT * FROM page WHERE session_id=? LIMIT 500", strArr);
            while (cursor.moveToNext()) {
                try {
                    b0Var.a(cursor);
                    if (l0.f10634a) {
                        l0.a("queryPageInner, " + strArr + ", " + b0Var, null);
                    }
                    if (b0Var.j()) {
                        jSONArray.put(b0Var.f());
                    } else {
                        j += b0Var.i;
                    }
                    z = true;
                } catch (Throwable th) {
                    th = th;
                    try {
                        l0.a(th);
                    } finally {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
            }
            if (z) {
                sQLiteDatabase.execSQL("DELETE FROM page WHERE session_id=?", strArr);
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        if (jSONArray.length() > 0) {
            if (j <= 1000) {
                j = 1000;
            }
            d0Var.i = j;
            d0Var.c = zVar.c;
            d0Var.f10650a = zVar.f10650a;
            d0Var.j = (zVar.f10650a + j) / 1000;
            d0Var.b = b2.a(this.f10652a);
            d0Var.e = zVar.e;
            d0Var.f = zVar.f;
        }
        if (l0.f10634a) {
            l0.a("queryPage, " + d0Var + ", " + jSONArray.length(), null);
        }
        return jSONArray;
    }

    public ArrayList<a0> a() {
        Cursor cursor;
        ArrayList<a0> arrayList = new ArrayList<>();
        a0 a0Var = (a0) e.get("pack");
        try {
            cursor = this.c.getWritableDatabase().rawQuery("SELECT * FROM pack ORDER BY local_time_ms DESC,_full DESC LIMIT 2", null);
            while (cursor.moveToNext()) {
                try {
                    a0Var = (a0) a0Var.clone();
                    a0Var.a(cursor);
                    arrayList.add(a0Var);
                } catch (Throwable th) {
                    th = th;
                    try {
                        l0.a(th);
                    } finally {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        StringBuilder m1016super = Cgoto.m1016super("queryPack, ");
        m1016super.append(arrayList.size());
        m1016super.append(", ");
        m1016super.append(arrayList);
        l0.a(m1016super.toString(), null);
        return arrayList;
    }

    public void a(ArrayList<a0> arrayList, ArrayList<a0> arrayList2) {
        l0.a("setResult, " + arrayList + ", " + arrayList2, null);
        HashMap<String, Integer> hashMap = new HashMap<>();
        HashMap hashMap2 = new HashMap();
        HashMap<String, Integer> hashMap3 = new HashMap<>();
        HashMap<String, Integer> hashMap4 = new HashMap<>();
        HashMap<String, Integer> hashMap5 = new HashMap<>();
        if (arrayList != null && arrayList.size() > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i).j == 0) {
                    a(arrayList.get(i), hashMap, true);
                } else {
                    a(arrayList.get(i), hashMap4, false);
                }
            }
        }
        Iterator<a0> it = arrayList2.iterator();
        while (it.hasNext()) {
            a0 next = it.next();
            int i2 = next.j;
            if (i2 == 0) {
                HashMap<String, Integer> hashMap6 = (HashMap) hashMap2.get(Integer.valueOf(next.k));
                if (hashMap6 == null) {
                    hashMap6 = new HashMap<>();
                    hashMap2.put(Integer.valueOf(next.k), hashMap6);
                }
                a(next, hashMap6, false);
            } else if (i2 + 1 > 5) {
                a(next, hashMap3, false);
                arrayList.add(next);
                it.remove();
            } else {
                a(next, hashMap5, false);
            }
        }
        try {
            SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
            writableDatabase.beginTransaction();
            Iterator<a0> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                writableDatabase.execSQL("DELETE FROM pack WHERE local_time_ms=?", new String[]{String.valueOf(it2.next().f10650a)});
            }
            Iterator<a0> it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                a0 next2 = it3.next();
                long j = next2.f10650a;
                int i3 = next2.j + 1;
                next2.j = i3;
                writableDatabase.execSQL(a(j, i3));
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (Exception e2) {
            l0.a(e2);
        }
    }

    public void a(ArrayList<u> arrayList) {
        Throwable th;
        SQLiteDatabase sQLiteDatabase;
        StringBuilder m1016super = Cgoto.m1016super("save, ");
        m1016super.append(arrayList.toString());
        l0.a(m1016super.toString(), null);
        try {
            try {
                sQLiteDatabase = this.c.getWritableDatabase();
            } catch (Throwable th2) {
                th = th2;
                sQLiteDatabase = null;
            }
            try {
                sQLiteDatabase.beginTransaction();
                Iterator<u> it = arrayList.iterator();
                ContentValues contentValues = null;
                while (it.hasNext()) {
                    u next = it.next();
                    String d2 = next.d();
                    contentValues = next.b(contentValues);
                    sQLiteDatabase.insert(d2, null, contentValues);
                }
                sQLiteDatabase.setTransactionSuccessful();
                sQLiteDatabase.endTransaction();
            } catch (Throwable th3) {
                th = th3;
                try {
                    d += arrayList.size();
                    l0.a(th);
                    if (sQLiteDatabase != null) {
                        sQLiteDatabase.endTransaction();
                    }
                } catch (Throwable th4) {
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable th5) {
                            l0.a(th5);
                        }
                    }
                    throw th4;
                }
            }
        } catch (Throwable th6) {
            l0.a(th6);
        }
    }
}
