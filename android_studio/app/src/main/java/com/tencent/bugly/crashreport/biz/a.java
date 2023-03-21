package com.tencent.bugly.crashreport.biz;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import com.umeng.analytics.pro.ao;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public Context f12021a;
    public long b;
    public int c;
    public boolean d;

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.biz.a$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class AnonymousClass2 implements Runnable {
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                a.this.c();
            } catch (Throwable th) {
                y.a(th);
            }
        }
    }

    /* compiled from: BUGLY */
    /* renamed from: com.tencent.bugly.crashreport.biz.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public class RunnableC0180a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public boolean f12024a;
        public UserInfoBean b;

        public RunnableC0180a(UserInfoBean userInfoBean, boolean z) {
            this.b = userInfoBean;
            this.f12024a = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (this.b != null) {
                    a.a(a.this, this.b);
                    y.c("[UserInfo] Record user info.", new Object[0]);
                    a.a(a.this, this.b, false);
                }
                if (this.f12024a) {
                    a aVar = a.this;
                    x a2 = x.a();
                    if (a2 != null) {
                        a2.a(new AnonymousClass2());
                    }
                }
            } catch (Throwable th) {
                if (y.a(th)) {
                    return;
                }
                th.printStackTrace();
            }
        }
    }

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis < a.this.b) {
                x.a().a(new b(), (a.this.b - currentTimeMillis) + 5000);
                return;
            }
            a.this.a(3, false, 0L);
            a.this.a();
        }
    }

    /* compiled from: BUGLY */
    /* loaded from: classes7.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public long f12026a;

        public c(long j) {
            this.f12026a = 21600000L;
            this.f12026a = j;
        }

        @Override // java.lang.Runnable
        public final void run() {
            a aVar = a.this;
            x a2 = x.a();
            if (a2 != null) {
                a2.a(new AnonymousClass2());
            }
            a aVar2 = a.this;
            long j = this.f12026a;
            x.a().a(new c(j), j);
        }
    }

    public a(Context context, boolean z) {
        this.d = true;
        this.f12021a = context;
        this.d = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0029 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x002b A[Catch: all -> 0x00eb, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004f, B:28:0x0064, B:30:0x006a, B:32:0x006f, B:35:0x0076, B:39:0x008e, B:41:0x0094, B:44:0x009d, B:46:0x00a3, B:49:0x00ac, B:51:0x00b6, B:54:0x00bf, B:58:0x00dd, B:61:0x00e2, B:26:0x005e, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:67:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006a A[Catch: all -> 0x00eb, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004f, B:28:0x0064, B:30:0x006a, B:32:0x006f, B:35:0x0076, B:39:0x008e, B:41:0x0094, B:44:0x009d, B:46:0x00a3, B:49:0x00ac, B:51:0x00b6, B:54:0x00bf, B:58:0x00dd, B:61:0x00e2, B:26:0x005e, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:67:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0094 A[Catch: all -> 0x00eb, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004f, B:28:0x0064, B:30:0x006a, B:32:0x006f, B:35:0x0076, B:39:0x008e, B:41:0x0094, B:44:0x009d, B:46:0x00a3, B:49:0x00ac, B:51:0x00b6, B:54:0x00bf, B:58:0x00dd, B:61:0x00e2, B:26:0x005e, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:67:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009d A[Catch: all -> 0x00eb, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:21:0x002b, B:23:0x003e, B:25:0x004f, B:28:0x0064, B:30:0x006a, B:32:0x006f, B:35:0x0076, B:39:0x008e, B:41:0x0094, B:44:0x009d, B:46:0x00a3, B:49:0x00ac, B:51:0x00b6, B:54:0x00bf, B:58:0x00dd, B:61:0x00e2, B:26:0x005e, B:6:0x0009, B:9:0x0010, B:12:0x0017, B:14:0x001d), top: B:67:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void c() {
        /*
            Method dump skipped, instructions count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.biz.a.c():void");
    }

    public static /* synthetic */ void a(a aVar, UserInfoBean userInfoBean) {
        com.tencent.bugly.crashreport.common.info.a b2;
        if (userInfoBean == null || (b2 = com.tencent.bugly.crashreport.common.info.a.b()) == null) {
            return;
        }
        userInfoBean.j = b2.e();
    }

    public static void b(List<UserInfoBean> list, List<UserInfoBean> list2) {
        Iterator<UserInfoBean> it = list.iterator();
        while (it.hasNext()) {
            UserInfoBean next = it.next();
            if (next.f != -1) {
                it.remove();
                if (next.e < ab.b()) {
                    list2.add(next);
                }
            }
        }
    }

    public static /* synthetic */ void a(a aVar, UserInfoBean userInfoBean, boolean z) {
        List<UserInfoBean> a2;
        if (userInfoBean != null) {
            if (!z && userInfoBean.b != 1 && (a2 = aVar.a(com.tencent.bugly.crashreport.common.info.a.a(aVar.f12021a).d)) != null && a2.size() >= 20) {
                y.a("[UserInfo] There are too many user info in local: %d", Integer.valueOf(a2.size()));
                return;
            }
            long a3 = o.a().a("t_ui", a(userInfoBean), (n) null, true);
            if (a3 >= 0) {
                y.c("[Database] insert %s success with ID: %d", "t_ui", Long.valueOf(a3));
                userInfoBean.f12020a = a3;
            }
        }
    }

    public final void a(int i, boolean z, long j) {
        com.tencent.bugly.crashreport.common.strategy.a a2 = com.tencent.bugly.crashreport.common.strategy.a.a();
        if (a2 != null && !a2.c().f && i != 1 && i != 3) {
            y.e("UserInfo is disable", new Object[0]);
            return;
        }
        if (i == 1 || i == 3) {
            this.c++;
        }
        com.tencent.bugly.crashreport.common.info.a a3 = com.tencent.bugly.crashreport.common.info.a.a(this.f12021a);
        UserInfoBean userInfoBean = new UserInfoBean();
        userInfoBean.b = i;
        userInfoBean.c = a3.d;
        userInfoBean.d = a3.g();
        userInfoBean.e = System.currentTimeMillis();
        userInfoBean.f = -1L;
        userInfoBean.n = a3.i;
        userInfoBean.o = i == 1 ? 1 : 0;
        userInfoBean.l = a3.a();
        userInfoBean.m = a3.o;
        userInfoBean.g = a3.p;
        userInfoBean.h = a3.q;
        userInfoBean.i = a3.r;
        userInfoBean.k = a3.s;
        userInfoBean.r = a3.x();
        userInfoBean.s = a3.C();
        userInfoBean.p = a3.D();
        userInfoBean.q = a3.E();
        x.a().a(new RunnableC0180a(userInfoBean, z), 0L);
    }

    public final void b() {
        x a2 = x.a();
        if (a2 != null) {
            a2.a(new AnonymousClass2());
        }
    }

    public final void a() {
        this.b = ab.b() + 86400000;
        x.a().a(new b(), (this.b - System.currentTimeMillis()) + 5000);
    }

    public static void a(List<UserInfoBean> list, List<UserInfoBean> list2) {
        int size = list.size() - 20;
        if (size > 0) {
            int i = 0;
            while (i < list.size() - 1) {
                int i2 = i + 1;
                for (int i3 = i2; i3 < list.size(); i3++) {
                    if (list.get(i).e > list.get(i3).e) {
                        list.set(i, list.get(i3));
                        list.set(i3, list.get(i));
                    }
                }
                i = i2;
            }
            for (int i4 = 0; i4 < size; i4++) {
                list2.add(list.get(i4));
            }
        }
    }

    public static int a(List<UserInfoBean> list, long j) {
        int i;
        long currentTimeMillis = System.currentTimeMillis();
        int i2 = 0;
        for (UserInfoBean userInfoBean : list) {
            if (userInfoBean.e > currentTimeMillis - TTAdConstant.AD_MAX_EVENT_TIME && ((i = userInfoBean.b) == 1 || i == 4 || i == 3)) {
                i2++;
            }
        }
        return i2;
    }

    public final List<UserInfoBean> a(String str) {
        Cursor cursor;
        String str2;
        try {
            if (ab.a(str)) {
                str2 = null;
            } else {
                str2 = "_pc = '" + str + "'";
            }
            cursor = o.a().a("t_ui", null, str2, null, null, true);
            if (cursor == null) {
                return null;
            }
            try {
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    UserInfoBean a2 = a(cursor);
                    if (a2 != null) {
                        arrayList.add(a2);
                    } else {
                        long j = cursor.getLong(cursor.getColumnIndex(ao.d));
                        sb.append(" or _id");
                        sb.append(" = ");
                        sb.append(j);
                    }
                }
                String sb2 = sb.toString();
                if (sb2.length() > 0) {
                    y.d("[Database] deleted %s error data %d", "t_ui", Integer.valueOf(o.a().a("t_ui", sb2.substring(4), (String[]) null, (n) null, true)));
                }
                cursor.close();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                try {
                    if (!y.a(th)) {
                        th.printStackTrace();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public static void a(List<UserInfoBean> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size() && i < 50; i++) {
            sb.append(" or _id");
            sb.append(" = ");
            sb.append(list.get(i).f12020a);
        }
        String sb2 = sb.toString();
        if (sb2.length() > 0) {
            sb2 = sb2.substring(4);
        }
        String str = sb2;
        sb.setLength(0);
        try {
            y.c("[Database] deleted %s data %d", "t_ui", Integer.valueOf(o.a().a("t_ui", str, (String[]) null, (n) null, true)));
        } catch (Throwable th) {
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public static ContentValues a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            if (userInfoBean.f12020a > 0) {
                contentValues.put(ao.d, Long.valueOf(userInfoBean.f12020a));
            }
            contentValues.put("_tm", Long.valueOf(userInfoBean.e));
            contentValues.put("_ut", Long.valueOf(userInfoBean.f));
            contentValues.put(ao.e, Integer.valueOf(userInfoBean.b));
            contentValues.put("_pc", userInfoBean.c);
            contentValues.put("_dt", ab.a(userInfoBean));
            return contentValues;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public static UserInfoBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j = cursor.getLong(cursor.getColumnIndex(ao.d));
            UserInfoBean userInfoBean = (UserInfoBean) ab.a(blob, UserInfoBean.CREATOR);
            if (userInfoBean != null) {
                userInfoBean.f12020a = j;
            }
            return userInfoBean;
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }
}
