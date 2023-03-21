package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.c0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.w;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;
/* compiled from: AdEventRepertoryImpl.java */
/* loaded from: classes8.dex */
public class b implements a<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> {

    /* renamed from: a  reason: collision with root package name */
    public final Context f10948a;
    public final h b;
    public final c0 c = c0.a("tt_adevent", a());

    public b(Context context) {
        this.f10948a = context;
        this.b = h.a(context);
    }

    public static String b() {
        return "ALTER TABLE adevent_applog ADD COLUMN encrypt INTEGER default 0";
    }

    private synchronized void b(int i, int i2, long j) {
        i.c a2 = this.b.a();
        String c = c(i);
        int a3 = a2.a(c, "gen_time < ? AND retry >?", new String[]{(System.currentTimeMillis() - j) + "", i2 + ""});
        StringBuilder sb = new StringBuilder();
        sb.append("客户端容灾状态下事件过期时间(7天)：");
        sb.append(j);
        sb.append("，成功删除日志条数：delete count=");
        sb.append(a3);
        Logger.e("AdEventThread", sb.toString());
    }

    public static String c() {
        return "ALTER TABLE adevent ADD COLUMN encrypt INTEGER default 0";
    }

    private String c(int i) {
        return (i != 1 && i == 2) ? "adevent_applog" : "adevent";
    }

    public static String d() {
        StringBuilder m1004import = Cgoto.m1004import("CREATE TABLE IF NOT EXISTS ", "adevent_applog", " (_id INTEGER PRIMARY KEY AUTOINCREMENT,", "id", " TEXT UNIQUE,");
        Cgoto.m993continue(m1004import, LitePalParser.ATTR_VALUE, " TEXT ,", "gen_time", " TEXT , ");
        Cgoto.m993continue(m1004import, "retry", " INTEGER default 0, ", "encrypt", " INTEGER default 0");
        m1004import.append(")");
        return m1004import.toString();
    }

    public static String e() {
        StringBuilder m1004import = Cgoto.m1004import("CREATE TABLE IF NOT EXISTS ", "adevent", " (_id INTEGER PRIMARY KEY AUTOINCREMENT,", "id", " TEXT UNIQUE,");
        Cgoto.m993continue(m1004import, LitePalParser.ATTR_VALUE, " TEXT ,", "gen_time", " TEXT , ");
        Cgoto.m993continue(m1004import, "retry", " INTEGER default 0, ", "encrypt", " INTEGER default 0");
        m1004import.append(")");
        return m1004import.toString();
    }

    public Context a() {
        Context context = this.f10948a;
        return context == null ? bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d() : context;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a
    public synchronized List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> a(int i, int i2, String str) {
        LinkedList linkedList;
        String str2 = null;
        if (i2 > 0) {
            if (!TextUtils.isEmpty(str)) {
                str2 = str + " DESC limit " + i2;
            }
        }
        linkedList = new LinkedList();
        Cursor a2 = h.a(a()).a().a(c(i), new String[]{"id", LitePalParser.ATTR_VALUE, "encrypt"}, null, null, null, null, str2, null);
        if (a2 != null) {
            while (a2.moveToNext()) {
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a a3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a.a(a2.getString(a2.getColumnIndex("id")), a2.getString(a2.getColumnIndex(LitePalParser.ATTR_VALUE)), a2.getInt(a2.getColumnIndex("encrypt")));
                if (a3 != null) {
                    linkedList.add(a3);
                }
            }
            a2.close();
        }
        return linkedList;
    }

    @VisibleForTesting
    private synchronized void b(int i, List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> list) {
        LinkedList linkedList = new LinkedList();
        for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a aVar : list) {
            linkedList.add(aVar.f10946a);
        }
        this.b.a().a("UPDATE " + c(i) + " SET retry = retry+1 WHERE " + a("id", (List<?>) linkedList, 1000, true));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a
    public synchronized void a(int i, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a aVar) {
        if (aVar != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", aVar.f10946a);
            JSONObject jSONObject = aVar.b;
            contentValues.put(LitePalParser.ATTR_VALUE, jSONObject != null ? jSONObject.toString() : "");
            contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
            contentValues.put("retry", (Integer) 0);
            this.b.a().a(c(i), (String) null, contentValues);
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a
    public int b(int i) {
        if (i == 1) {
            return this.c.a("serverbusy_retrycount", 0);
        }
        if (i == 2) {
            return this.c.a("applog_serverbusy_retrycount", 0);
        }
        return 0;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a
    public synchronized void a(int i, List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> list) {
        if (w.a(list)) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a aVar : list) {
            linkedList.add(aVar.f10946a);
        }
        this.b.a().a("DELETE FROM " + c(i) + " WHERE " + a("id", (List<?>) linkedList, 1000, true));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a
    public synchronized void a(int i, int i2, long j) {
        b(i, i2, j);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a
    public synchronized void a(int i, List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.a> list, int i2, long j) {
        if (w.a(list)) {
            return;
        }
        try {
            b(i, list);
            b(i, i2, j);
        } catch (Exception unused) {
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a
    public void a(int i, boolean z) {
        if (i == 1) {
            this.c.b("serverbusy_flag", z);
        } else if (i == 2) {
            this.c.b("applog_serverbusy_flag", z);
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a
    public boolean a(int i) {
        if (i == 1) {
            return this.c.a("serverbusy_flag", false);
        }
        if (i == 2) {
            return this.c.a("applog_serverbusy_flag", false);
        }
        return false;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.bykvm_19do.a
    public void a(int i, int i2) {
        if (i == 1) {
            this.c.b("serverbusy_retrycount", i2);
        } else if (i == 2) {
            this.c.b("applog_serverbusy_retrycount", i2);
        }
    }

    public static String a(String str, List<?> list, int i, boolean z) {
        int i2;
        String str2 = z ? " IN " : " NOT IN ";
        String str3 = z ? " OR " : " AND ";
        int min = Math.min(i, 1000);
        int size = list.size();
        int i3 = size % min;
        Logger.d("", "len=" + size + ",size=" + i3);
        if (i3 == 0) {
            i2 = size / min;
        } else {
            i2 = (size / min) + 1;
        }
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = i4 * min;
            String a2 = a(TextUtils.join("','", list.subList(i5, Math.min(i5 + min, size))), "");
            if (i4 != 0) {
                sb.append(str3);
            }
            Cgoto.m993continue(sb, str, str2, "('", a2);
            sb.append("')");
        }
        String sb2 = sb.toString();
        String a3 = a(sb2, str + str2 + "('')");
        StringBuilder sb3 = new StringBuilder();
        sb3.append("sql=");
        sb3.append(a3);
        Logger.d("", sb3.toString());
        return a3;
    }

    public static String a(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }
}
