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
/* compiled from: StatsLogEventRepoImpl.java */
/* loaded from: classes8.dex */
public class g implements c {

    /* renamed from: a  reason: collision with root package name */
    public final Context f11020a;
    public bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_if122.a b;
    public List<String> c = new ArrayList();

    public g(Context context, bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_if122.a aVar) {
        this.f11020a = context;
        this.b = aVar;
    }

    public static String f() {
        StringBuilder m1016super = Cgoto.m1016super("CREATE TABLE IF NOT EXISTS ");
        m1016super.append(j.l().e().c());
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
        return this.f11020a;
    }

    public byte b() {
        return (byte) 1;
    }

    public synchronized void b(List<String> list) {
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("states repo delete: " + list.size());
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.c.a(a(), "DELETE FROM " + d() + " WHERE " + a("id", list, 1000, true));
        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.b.a(bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_if122.d.h.Y(), list.size());
    }

    public byte c() {
        return (byte) 2;
    }

    public String d() {
        return j.l().e().c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
        if (r1 == null) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if (r1 != null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized int e() {
        /*
            r9 = this;
            monitor-enter(r9)
            r0 = 0
            android.content.Context r1 = r9.a()     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = r9.d()     // Catch: java.lang.Throwable -> L28
            java.lang.String r3 = "count(1)"
            java.lang.String[] r3 = new java.lang.String[]{r3}     // Catch: java.lang.Throwable -> L28
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r1 = bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.c.a(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L28
            if (r1 == 0) goto L25
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L23
            int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L23
            goto L25
        L23:
            goto L29
        L25:
            if (r1 == 0) goto L32
            goto L2b
        L28:
            r1 = 0
        L29:
            if (r1 == 0) goto L32
        L2b:
            r1.close()     // Catch: java.lang.Throwable -> L2f java.lang.Exception -> L32
            goto L32
        L2f:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        L32:
            monitor-exit(r9)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.g.e():int");
    }

    public synchronized List<bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.a> a(int i, String str) {
        LinkedList linkedList;
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
                try {
                    String string = a3.getString(a3.getColumnIndex("id"));
                    String string2 = a3.getString(a3.getColumnIndex(LitePalParser.ATTR_VALUE));
                    if (a3.getInt(a3.getColumnIndex("encrypt")) == 1) {
                        string2 = j.l().b().a(string2);
                    }
                    if (TextUtils.isEmpty(string2)) {
                        this.c.add(string);
                    } else {
                        bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.a aVar = new bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.a(string, new JSONObject(string2));
                        aVar.b(c());
                        aVar.a(b());
                        linkedList.add(aVar);
                    }
                } catch (Throwable unused) {
                }
            }
            try {
                a3.close();
                if (!this.c.isEmpty()) {
                    b(this.c);
                    this.c.clear();
                }
            } catch (Exception unused2) {
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
                    bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_for12.c.a("--statsRepo#delete:" + aVar.i());
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
