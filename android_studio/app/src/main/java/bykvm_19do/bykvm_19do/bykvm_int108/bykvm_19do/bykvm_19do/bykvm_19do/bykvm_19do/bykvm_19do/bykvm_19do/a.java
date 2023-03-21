package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.j;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;

/* compiled from: AdEventRepoImpl.java */
/* loaded from: classes8.dex */
public class a implements c {

    /* renamed from: a  reason: collision with root package name */
    public final Context f11019a;
    public bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_if122.a b;
    public List<String> c = new ArrayList();

    public a(Context context, bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_if122.a aVar) {
        this.f11019a = context;
        this.b = aVar;
    }

    public static String f() {
        StringBuilder m1016super = Cgoto.m1016super("CREATE TABLE IF NOT EXISTS ");
        m1016super.append(j.l().e().a());
        m1016super.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT,");
        m1016super.append("id");
        m1016super.append(" TEXT UNIQUE,");
        m1016super.append(LitePalParser.ATTR_VALUE);
        Cgoto.m993continue(m1016super, " TEXT ,", "gen_time", " TEXT , ", "retry");
        m1016super.append(" INTEGER default 0 , ");
        m1016super.append("encrypt");
        m1016super.append(" INTEGER default 0");
        m1016super.append(")");
        return m1016super.toString();
    }

    public Context a() {
        return this.f11019a;
    }

    public byte b() {
        return (byte) 0;
    }

    public synchronized void b(List<String> list) {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("adevent repo delete: " + list.size());
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.c.a(a(), "DELETE FROM " + d() + " WHERE " + a("id", list, 1000, true));
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.Y(), list.size());
    }

    public byte c() {
        return (byte) 2;
    }

    public String d() {
        return j.l().e().a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0032, code lost:
        if (r1 == null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
        if (r1 != null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized int e() {
        /*
            r10 = this;
            monitor-enter(r10)
            r0 = 0
            r1 = 0
            android.content.Context r2 = r10.a()     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L29
            java.lang.String r3 = r10.d()     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L29
            java.lang.String r4 = "count(1)"
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L29
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r1 = bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.c.a(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L29
            if (r1 == 0) goto L26
            r1.moveToFirst()     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L29
            int r0 = r1.getInt(r0)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L29
            goto L26
        L24:
            goto L32
        L26:
            if (r1 == 0) goto L3a
            goto L34
        L29:
            r0 = move-exception
            if (r1 == 0) goto L2f
            r1.close()     // Catch: java.lang.Exception -> L2f java.lang.Throwable -> L30
        L2f:
            throw r0     // Catch: java.lang.Throwable -> L30
        L30:
            r0 = move-exception
            goto L38
        L32:
            if (r1 == 0) goto L3a
        L34:
            r1.close()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L3a
            goto L3a
        L38:
            monitor-exit(r10)
            throw r0
        L3a:
            monitor-exit(r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.a.e():int");
    }

    public synchronized List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> a(int i, String str) {
        LinkedList linkedList;
        JSONObject jSONObject;
        long a2 = bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.a.a(i, a());
        String str2 = null;
        if (a2 > 0 && !TextUtils.isEmpty(str)) {
            str2 = str + " DESC limit " + a2;
        }
        String str3 = str2;
        linkedList = new LinkedList();
        this.c.clear();
        Cursor a3 = bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.c.a(a(), d(), new String[]{"id", LitePalParser.ATTR_VALUE, "encrypt"}, null, null, null, null, str3);
        if (a3 != null) {
            while (a3.moveToNext()) {
                String string = a3.getString(a3.getColumnIndex("id"));
                String string2 = a3.getString(a3.getColumnIndex(LitePalParser.ATTR_VALUE));
                if (a3.getInt(a3.getColumnIndex("encrypt")) == 1) {
                    string2 = j.l().b().a(string2);
                }
                if (TextUtils.isEmpty(string2)) {
                    this.c.add(string);
                } else {
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.a aVar = new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.a(string, new JSONObject(string2));
                    aVar.a(b());
                    aVar.b(c());
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("log_show_query :" + jSONObject.optString("label") + " " + ((int) aVar.e()));
                    linkedList.add(aVar);
                }
            }
            try {
                a3.close();
                if (!this.c.isEmpty()) {
                    b(this.c);
                    this.c.clear();
                }
            } catch (Exception unused) {
            }
        }
        return linkedList;
    }

    public synchronized List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> a(String str) {
        return a(this.b.a(), str);
    }

    public synchronized void a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar) {
        JSONObject d = aVar.d();
        if (d != null && !TextUtils.isEmpty(aVar.i())) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", aVar.i());
            String b = j.l().b().b(d.toString());
            if (!TextUtils.isEmpty(b)) {
                contentValues.put(LitePalParser.ATTR_VALUE, b);
                contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
                contentValues.put("retry", (Integer) 0);
                contentValues.put("encrypt", (Integer) 1);
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.c.a(a(), d(), contentValues);
            }
        } else {
            bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.b("log_show_save", "save error");
        }
    }

    public synchronized void a(List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> list) {
        if (list != null) {
            if (list.size() != 0) {
                LinkedList linkedList = new LinkedList();
                for (bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a aVar : list) {
                    if (!TextUtils.isEmpty(aVar.i())) {
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.Y(), 1);
                    }
                    linkedList.add(aVar.i());
                }
                bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.c.a(a(), "DELETE FROM " + d() + " WHERE " + a("id", linkedList, 1000, true));
            }
        }
    }

    public synchronized boolean a(int i) {
        return e() >= this.b.b();
    }

    public static String a(String str, List<?> list, int i, boolean z) {
        int i2;
        String str2 = z ? " IN " : " NOT IN ";
        String str3 = z ? " OR " : " AND ";
        int min = Math.min(i, 1000);
        int size = list.size();
        if (size % min == 0) {
            i2 = size / min;
        } else {
            i2 = (size / min) + 1;
        }
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * min;
            String a2 = a(TextUtils.join("','", list.subList(i4, Math.min(i4 + min, size))), "");
            if (i3 != 0) {
                sb.append(str3);
            }
            Cgoto.m993continue(sb, str, str2, "('", a2);
            sb.append("')");
        }
        String sb2 = sb.toString();
        return a(sb2, str + str2 + "('')");
    }

    public static String a(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }
}
