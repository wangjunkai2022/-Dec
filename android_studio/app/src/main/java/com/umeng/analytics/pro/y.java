package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.ArrayList;
import java.util.List;

/* compiled from: SessionIdManager.java */
/* loaded from: classes7.dex */
public class y {
    public static volatile y c;

    /* renamed from: a  reason: collision with root package name */
    public w f12224a = new x();
    public String b;
    public List<a> d;
    public String e;

    /* compiled from: SessionIdManager.java */
    /* loaded from: classes7.dex */
    public interface a {
        void a(String str, long j, long j2, long j3);

        void a(String str, String str2, long j, long j2, long j3);
    }

    public static y a() {
        if (c == null) {
            synchronized (y.class) {
                if (c == null) {
                    c = new y();
                }
            }
        }
        return c;
    }

    private String f(Context context) {
        try {
            SharedPreferences.Editor edit = PreferenceWrapper.getDefault(context).edit();
            edit.putString(u.d, d(context));
            edit.commit();
        } catch (Exception unused) {
        }
        long h = h(context);
        long i = i(context);
        String str = this.b;
        long a2 = u.a(context);
        long j = a2 * 5000;
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count 值完成，count次数：" + a2);
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
            if (UMWorkDispatch.eventHasExist()) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count druation值完成，终止checker timer.");
                UMWorkDispatch.removeEvent();
            } else {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** 读取 foreground count druation值完成，无未处理check timer事件。");
            }
        } else {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** foreground count druation云控参数关闭。");
        }
        a(i, h, j, str, false);
        this.b = this.f12224a.a(context);
        a(i, h, j, str, true);
        this.f12224a.a(context, this.b);
        return this.b;
    }

    private boolean g(Context context) {
        return !TextUtils.isEmpty(this.b) && i.a(context).a(this.b) > 0;
    }

    private long h(Context context) {
        return a(context, u.f);
    }

    private long i(Context context) {
        return a(context, u.f12220a);
    }

    private boolean j(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(appContext);
            long j = sharedPreferences.getLong(u.e, 0L);
            long j2 = sharedPreferences.getLong(u.f, 0L);
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.E) && j > 0 && j2 == 0) {
                long a2 = u.a(appContext);
                if (a2 > 0) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> last session end time stamp = 0, reconstruct it by foreground count value.");
                    j2 = j + (a2 * 5000);
                }
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> interval of last session is: " + (j2 - j));
            return this.f12224a.a(j, j2);
        } catch (Exception unused) {
            return false;
        }
    }

    public long b() {
        return this.f12224a.a();
    }

    public String c(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        try {
            this.b = f(appContext);
        } catch (Exception unused) {
        }
        return this.b;
    }

    public String d(Context context) {
        if (TextUtils.isEmpty(this.b)) {
            try {
                this.b = PreferenceWrapper.getDefault(context).getString("session_id", null);
            } catch (Exception unused) {
            }
        }
        return this.b;
    }

    public boolean e(Context context) {
        if (TextUtils.isEmpty(this.b)) {
            this.b = d(context);
        }
        return TextUtils.isEmpty(this.b) || j(context) || g(context);
    }

    public synchronized String b(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        this.b = d(appContext);
        if (e(appContext)) {
            try {
                this.b = f(appContext);
            } catch (Exception unused) {
            }
        }
        return this.b;
    }

    public void a(long j) {
        this.f12224a.a(j);
    }

    public String a(Context context) {
        Context appContext = UMGlobalContext.getAppContext(context);
        if (appContext == null) {
            return "";
        }
        String str = "";
        try {
            synchronized (y.class) {
                str = PreferenceWrapper.getDefault(appContext).getString(u.d, "");
            }
        } catch (Exception unused) {
        }
        return str;
    }

    public void b(a aVar) {
        List<a> list;
        if (aVar == null || (list = this.d) == null || list.size() == 0) {
            return;
        }
        this.d.remove(aVar);
    }

    public String a(Context context, long j) {
        if (TextUtils.isEmpty(this.e)) {
            String m1000for = Cgoto.m1000for("SUB", j);
            StringBuilder m1016super = Cgoto.m1016super(m1000for);
            StringBuilder m1016super2 = Cgoto.m1016super("%0");
            m1016super2.append(32 - m1000for.length());
            m1016super2.append("d");
            m1016super.append(String.format(m1016super2.toString(), 0));
            this.e = m1016super.toString();
        }
        return this.e;
    }

    private long a(Context context, String str) {
        long j;
        try {
            j = PreferenceWrapper.getDefault(context).getLong(str, 0L);
        } catch (Exception unused) {
            j = 0;
        }
        return j <= 0 ? System.currentTimeMillis() : j;
    }

    private void a(long j, long j2, long j3, String str, boolean z) {
        List<a> list = this.d;
        if (list != null) {
            for (a aVar : list) {
                if (z) {
                    try {
                        aVar.a(str, this.b, j, j2, j3);
                    } catch (Exception unused) {
                    }
                } else {
                    aVar.a(this.b, j, j2, j3);
                }
            }
        }
    }

    public void a(a aVar) {
        if (aVar == null) {
            return;
        }
        if (this.d == null) {
            this.d = new ArrayList();
        }
        if (this.d.contains(aVar)) {
            return;
        }
        this.d.add(aVar);
    }
}
