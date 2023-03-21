package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.bykvm_19do;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ActivityDataManager.java */
/* loaded from: classes8.dex */
public class b {
    public static bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.d s;

    /* renamed from: a  reason: collision with root package name */
    public Application f11075a;
    public Context b;
    public String g;
    public long h;
    public String i;
    public long j;
    public String k;
    public long l;
    public String m;
    public long n;
    public String o;
    public long p;
    public int q;
    public List<String> c = new ArrayList();
    public List<Long> d = new ArrayList();
    public List<String> e = new ArrayList();
    public List<Long> f = new ArrayList();
    public final Application.ActivityLifecycleCallbacks r = new a();

    /* compiled from: ActivityDataManager.java */
    /* loaded from: classes8.dex */
    public class a implements Application.ActivityLifecycleCallbacks {
        public a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            String a2;
            b bVar = b.this;
            if (b.s != null) {
                a2 = b.s.a(activity);
            } else {
                a2 = activity.getClass().getName();
            }
            bVar.g = a2;
            b.this.h = System.currentTimeMillis();
            b.this.c.add(b.this.g);
            b.this.d.add(Long.valueOf(b.this.h));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            String a2;
            if (b.s != null) {
                a2 = b.s.a(activity);
            } else {
                a2 = activity.getClass().getName();
            }
            int indexOf = b.this.c.indexOf(a2);
            if (indexOf > -1 && indexOf < b.this.c.size()) {
                b.this.c.remove(indexOf);
                b.this.d.remove(indexOf);
            }
            b.this.e.add(a2);
            b.this.f.add(Long.valueOf(System.currentTimeMillis()));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            String a2;
            b bVar = b.this;
            if (b.s != null) {
                a2 = b.s.a(activity);
            } else {
                a2 = activity.getClass().getName();
            }
            bVar.m = a2;
            b.this.n = System.currentTimeMillis();
            b.h(b.this);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            String a2;
            b bVar = b.this;
            if (b.s != null) {
                a2 = b.s.a(activity);
            } else {
                a2 = activity.getClass().getName();
            }
            bVar.k = a2;
            b.this.l = System.currentTimeMillis();
            b.g(b.this);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            String a2;
            b bVar = b.this;
            if (b.s != null) {
                a2 = b.s.a(activity);
            } else {
                a2 = activity.getClass().getName();
            }
            bVar.i = a2;
            b.this.j = System.currentTimeMillis();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            String a2;
            b bVar = b.this;
            if (b.s != null) {
                a2 = b.s.a(activity);
            } else {
                a2 = activity.getClass().getName();
            }
            bVar.o = a2;
            b.this.p = System.currentTimeMillis();
        }
    }

    public b(@NonNull Context context) {
        this.b = context;
        if (context instanceof Application) {
            this.f11075a = (Application) context;
        }
        f();
    }

    public static /* synthetic */ int g(b bVar) {
        int i = bVar.q;
        bVar.q = i + 1;
        return i;
    }

    public static /* synthetic */ int h(b bVar) {
        int i = bVar.q;
        bVar.q = i - 1;
        return i;
    }

    private void f() {
        Application application = this.f11075a;
        if (application != null) {
            application.registerActivityLifecycleCallbacks(this.r);
        }
    }

    private JSONObject a(String str, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", str);
            jSONObject.put("time", j);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private JSONArray d() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.c;
        if (list != null && !list.isEmpty()) {
            for (int i = 0; i < this.c.size(); i++) {
                try {
                    jSONArray.put(a(this.c.get(i), this.d.get(i).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    private JSONArray e() {
        JSONArray jSONArray = new JSONArray();
        List<String> list = this.e;
        if (list != null && !list.isEmpty()) {
            for (int i = 0; i < this.e.size(); i++) {
                try {
                    jSONArray.put(a(this.e.get(i), this.f.get(i).longValue()));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024 A[Catch: Exception -> 0x0077, TryCatch #0 {Exception -> 0x0077, blocks: (B:3:0x0005, B:6:0x0012, B:9:0x001a, B:10:0x001e, B:12:0x0024, B:14:0x002c, B:17:0x0031, B:19:0x0038, B:21:0x003f, B:23:0x004a, B:25:0x0051, B:27:0x0058, B:29:0x005f, B:31:0x006a), top: B:36:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONArray b() {
        /*
            r6 = this;
            org.json.JSONArray r0 = new org.json.JSONArray
            r0.<init>()
            android.content.Context r1 = r6.b     // Catch: java.lang.Exception -> L77
            java.lang.String r2 = "activity"
            java.lang.Object r1 = r1.getSystemService(r2)     // Catch: java.lang.Exception -> L77
            android.app.ActivityManager r1 = (android.app.ActivityManager) r1     // Catch: java.lang.Exception -> L77
            if (r1 != 0) goto L12
            return r0
        L12:
            r2 = 5
            java.util.List r1 = r1.getRunningTasks(r2)     // Catch: java.lang.Exception -> L77
            if (r1 != 0) goto L1a
            return r0
        L1a:
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Exception -> L77
        L1e:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Exception -> L77
            if (r2 == 0) goto L77
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Exception -> L77
            android.app.ActivityManager$RunningTaskInfo r2 = (android.app.ActivityManager.RunningTaskInfo) r2     // Catch: java.lang.Exception -> L77
            if (r2 == 0) goto L1e
            android.content.ComponentName r3 = r2.baseActivity     // Catch: java.lang.Exception -> L77
            if (r3 != 0) goto L31
            goto L1e
        L31:
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            r3.<init>()     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            java.lang.String r4 = "id"
            int r5 = r2.id     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            r3.put(r4, r5)     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            java.lang.String r4 = "package_name"
            android.content.ComponentName r5 = r2.baseActivity     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            java.lang.String r5 = r5.getPackageName()     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            r3.put(r4, r5)     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            java.lang.String r4 = "description"
            java.lang.CharSequence r5 = r2.description     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            r3.put(r4, r5)     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            java.lang.String r4 = "number_of_activities"
            int r5 = r2.numActivities     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            r3.put(r4, r5)     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            java.lang.String r4 = "number_of_running_activities"
            int r5 = r2.numRunning     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            r3.put(r4, r5)     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            java.lang.String r4 = "topActivity"
            android.content.ComponentName r5 = r2.topActivity     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            java.lang.String r5 = r5.toString()     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            r3.put(r4, r5)     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            java.lang.String r4 = "baseActivity"
            android.content.ComponentName r2 = r2.baseActivity     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            java.lang.String r2 = r2.toString()     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            r3.put(r4, r2)     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            r0.put(r3)     // Catch: org.json.JSONException -> L1e java.lang.Exception -> L77
            goto L1e
        L77:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1.bykvm_19do.b.b():org.json.JSONArray");
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("last_create_activity", a(this.g, this.h));
            jSONObject.put("last_start_activity", a(this.i, this.j));
            jSONObject.put("last_resume_activity", a(this.k, this.l));
            jSONObject.put("last_pause_activity", a(this.m, this.n));
            jSONObject.put("last_stop_activity", a(this.o, this.p));
            jSONObject.put("alive_activities", d());
            jSONObject.put("finish_activities", e());
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
