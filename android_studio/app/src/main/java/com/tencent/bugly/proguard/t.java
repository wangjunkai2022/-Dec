package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.apk.Cgoto;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public final SimpleDateFormat f12101a;
    public final r b;

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final t f12103a = new t((byte) 0);
    }

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f12104a;
        public long b;
        public String c;

        public final long b() {
            return this.b;
        }

        public final String c() {
            return this.c;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("SLAData{uuid='");
            Cgoto.m987abstract(sb, this.f12104a, '\'', ", time=");
            sb.append(this.b);
            sb.append(", data='");
            sb.append(this.c);
            sb.append('\'');
            sb.append('}');
            return sb.toString();
        }

        public final String a() {
            return this.f12104a;
        }

        public final void b(String str) {
            this.c = str;
        }

        public final void a(String str) {
            this.f12104a = str;
        }

        public final void a(long j) {
            this.b = j;
        }
    }

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public String f12105a;
        public String b;
        public long c;
        public boolean d;
        public long e;
        public String f;
        public String g;

        public c(String str, String str2, long j, boolean z, long j2, String str3, String str4) {
            this.f12105a = str;
            this.b = str2;
            this.c = j;
            this.d = z;
            this.e = j2;
            this.f = str3;
            this.g = str4;
        }

        public final String b() {
            return this.b;
        }

        public final long c() {
            return this.c;
        }

        public final boolean d() {
            return this.d;
        }

        public final long e() {
            return this.e;
        }

        public final String f() {
            return this.f;
        }

        public final String g() {
            return this.g;
        }

        public final String a() {
            return this.f12105a;
        }

        public c() {
        }
    }

    public /* synthetic */ t(byte b2) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<b> list) {
        if (list != null && !list.isEmpty()) {
            y.c("sla batch report list size:%s", Integer.valueOf(list.size()));
            if (list.size() > 30) {
                list = list.subList(0, 29);
            }
            ArrayList arrayList = new ArrayList();
            for (b bVar : list) {
                arrayList.add(bVar.c());
            }
            Pair<Integer, String> a2 = this.b.a(arrayList);
            y.c("sla batch report result, rspCode:%s rspMsg:%s", a2.first, a2.second);
            if (((Integer) a2.first).intValue() == 200) {
                e(list);
                return;
            }
            return;
        }
        y.c("sla batch report data is empty", new Object[0]);
    }

    public static void d(List<b> list) {
        for (b bVar : list) {
            y.c("sla save id:%s time:%s msg:%s", bVar.a(), Long.valueOf(bVar.b()), bVar.c());
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(com.umeng.analytics.pro.ao.d, bVar.a());
                contentValues.put("_tm", Long.valueOf(bVar.b()));
                contentValues.put("_dt", bVar.c());
                o.a().a("t_sla", contentValues, (n) null, true);
            } catch (Throwable th) {
                y.b(th);
            }
        }
    }

    private void e(List<b> list) {
        if (list != null && !list.isEmpty()) {
            y.c("sla batch delete list size:%s", Integer.valueOf(list.size()));
            try {
                String str = "_id in (" + a(",", list) + ")";
                y.c("sla batch delete where:%s", str);
                o.a().a("t_sla", str, (String[]) null, (n) null, true);
                return;
            } catch (Throwable th) {
                y.b(th);
                return;
            }
        }
        y.c("sla batch delete list is null", new Object[0]);
    }

    public final void b() {
        List<b> c2 = c();
        if (c2 != null && !c2.isEmpty()) {
            y.c("sla load local data list size:%s", Integer.valueOf(c2.size()));
            Iterator<b> it = c2.iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                b next = it.next();
                if (next.b() < ab.b() - 604800000) {
                    y.c("sla local data is expired:%s", next.c());
                    arrayList.add(next);
                    it.remove();
                }
            }
            e(arrayList);
            b(c2);
            return;
        }
        y.c("sla local data is null", new Object[0]);
    }

    public t() {
        this.f12101a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS", Locale.US);
        this.b = new r();
    }

    public static t a() {
        return a.f12103a;
    }

    public final void a(c cVar) {
        if (cVar != null && !TextUtils.isEmpty(cVar.b())) {
            y.c("sla report single event", new Object[0]);
            a(Collections.singletonList(cVar));
            return;
        }
        y.d("sla report event is null", new Object[0]);
    }

    public final void a(List<c> list) {
        if (list != null && !list.isEmpty()) {
            y.c("sla batch report event size:%s", Integer.valueOf(list.size()));
            ArrayList arrayList = new ArrayList();
            for (c cVar : list) {
                b bVar = null;
                if (cVar == null || TextUtils.isEmpty(cVar.b())) {
                    y.d("sla convert event is null", new Object[0]);
                } else {
                    com.tencent.bugly.crashreport.common.info.a b2 = com.tencent.bugly.crashreport.common.info.a.b();
                    if (b2 == null) {
                        y.d("sla convert failed because ComInfoManager is null", new Object[0]);
                    } else {
                        String str = "&app_version=" + b2.i + "&app_name=" + b2.j + "&app_bundle_id=" + b2.c + "&client_type=android&user_id=" + b2.g() + "&sdk_version=" + b2.f + "&event_code=" + cVar.b() + "&event_result=" + (cVar.d() ? 1 : 0) + "&event_time=" + this.f12101a.format(new Date(cVar.c())) + "&event_cost=" + cVar.e() + "&device_id=" + b2.k() + "&debug=" + (b2.t ? 1 : 0) + "&param_0=" + cVar.f() + "&param_1=" + cVar.a() + "&param_2=ext&param_4=" + b2.f();
                        if (!TextUtils.isEmpty(cVar.g)) {
                            StringBuilder m1025while = Cgoto.m1025while(str, "&param_3=");
                            m1025while.append(cVar.g);
                            str = m1025while.toString();
                        }
                        y.c("sla convert eventId:%s eventType:%s, eventTime:%s success:%s cost:%s from:%s uploadMsg:", cVar.a(), cVar.b(), Long.valueOf(cVar.c()), Boolean.valueOf(cVar.d()), Long.valueOf(cVar.e()), cVar.f(), cVar.g());
                        b bVar2 = new b();
                        bVar2.a(cVar.a() + "-" + cVar.b());
                        bVar2.a(cVar.c());
                        bVar2.b(str);
                        bVar = bVar2;
                    }
                }
                if (bVar != null) {
                    arrayList.add(bVar);
                }
            }
            d(arrayList);
            b(arrayList);
            return;
        }
        y.d("sla batch report event is null", new Object[0]);
    }

    public static List<b> c() {
        Cursor a2 = o.a().a(false, "t_sla", new String[]{com.umeng.analytics.pro.ao.d, "_tm", "_dt"}, (String) null, (String[]) null, (String) null, (String) null, "_tm", "30", (n) null, true);
        if (a2 == null) {
            return null;
        }
        if (a2.getCount() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (a2.moveToNext()) {
            try {
                b bVar = new b();
                bVar.a(a2.getString(a2.getColumnIndex(com.umeng.analytics.pro.ao.d)));
                bVar.a(a2.getLong(a2.getColumnIndex("_tm")));
                bVar.b(a2.getString(a2.getColumnIndex("_dt")));
                y.c(bVar.toString(), new Object[0]);
                arrayList.add(bVar);
            } finally {
                try {
                    return arrayList;
                } finally {
                }
            }
        }
        return arrayList;
    }

    private void b(final List<b> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            x.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.t.1
                @Override // java.lang.Runnable
                public final void run() {
                    t.this.c(list);
                }
            });
        } else {
            c(list);
        }
    }

    public static String a(String str, Iterable<b> iterable) {
        Iterator<b> it = iterable.iterator();
        if (it.hasNext()) {
            StringBuilder m1016super = Cgoto.m1016super("'");
            m1016super.append(it.next().f12104a);
            m1016super.append("'");
            while (it.hasNext()) {
                m1016super.append(str);
                m1016super.append("'");
                m1016super.append(it.next().f12104a);
                m1016super.append("'");
            }
            return m1016super.toString();
        }
        return "";
    }
}
