package com.apk;

import android.app.Activity;
import android.os.Handler;
import android.text.TextUtils;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.biquge.ebook.app.bean.CacheBean;
import com.biquge.ebook.app.ui.activity.WelComeActivity;
import org.json.JSONObject;
/* compiled from: WelComePresenter.java */
/* loaded from: classes8.dex */
public class q5 extends p1 {

    /* renamed from: for  reason: not valid java name */
    public final y5 f3797for;

    /* renamed from: new  reason: not valid java name */
    public Handler f3798new;

    /* renamed from: try  reason: not valid java name */
    public boolean f3799try;

    /* compiled from: WelComePresenter.java */
    /* renamed from: com.apk.q5$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends c1<JSONObject> {

        /* renamed from: do  reason: not valid java name */
        public JSONObject f3800do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ boolean f3802if;

        public Cdo(boolean z) {
            this.f3802if = z;
        }

        @Override // com.apk.c1
        public JSONObject doInBackground() {
            w0.m2866break();
            System.currentTimeMillis();
            Ccontinue.m379if().f728try = 1;
            JSONObject m2963throw = x4.m2963throw(w.m2843do(), 0L, xw.NO_CACHE, new p5(this), "SP_HOST_APP_INIT_KEY");
            this.f3800do = m2963throw;
            if (m2963throw != null) {
                String jSONObject = m2963throw.toString();
                if (!TextUtils.isEmpty(jSONObject)) {
                    tt.f4763do.putString("SP_AD_CACHE_DATA_KEY", jSONObject);
                }
                v m2734do = v.m2734do();
                System.currentTimeMillis();
                if (m2734do != null) {
                    Ccontinue.m379if().f728try = 2;
                } else {
                    throw null;
                }
            } else {
                Ccontinue.m379if().f728try = 0;
            }
            Handler handler = q5.this.f3798new;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            return this.f3800do;
        }

        @Override // com.apk.c1
        public void onPostExecute(JSONObject jSONObject) {
            JSONObject jSONObject2 = jSONObject;
            super.onPostExecute(jSONObject2);
            if (!this.f3802if && ze.m3179private("SP_RESTART_APP_FLAG_KEY", true)) {
                String m2620do = tt.m2620do("SP_AD_TT_GM_APPID_KEY", "");
                String m2620do2 = tt.m2620do("SP_AD_HOST_CSJ_KEY", "");
                String m2620do3 = tt.m2620do("SP_AD_HOST_GDT_KEY", "");
                String m2620do4 = tt.m2620do("SP_AD_HOST_BAIDU_KEY", "");
                StringBuilder m1004import = Cgoto.m1004import(m2620do, "=", m2620do2, "=", m2620do3);
                m1004import.append("=");
                m1004import.append(m2620do4);
                String replace = m1004import.toString().replace("=", "");
                String replace2 = tt.m2620do("SP_APP_AD_APPID_DATA_KEY", "").replace("=", "");
                if (!TextUtils.isEmpty(replace2) && !replace.equals(replace2)) {
                    tt.f4763do.putString("SP_APP_AD_APPID_DATA_KEY", replace);
                    p0.m2011super("SP_APP_AD_APPID_DATA_KEY", Boolean.TRUE);
                    mf.m1712do("SP_APP_AD_APPID_DATA_KEY", null);
                    y5 y5Var = q5.this.f3797for;
                    if (y5Var != null) {
                        WelComeActivity welComeActivity = (WelComeActivity) y5Var;
                        if (eg.m598goto("SP_APP_AD_APPID_DATA_KEY")) {
                            Cfinally.h(welComeActivity);
                            return;
                        }
                        return;
                    }
                    return;
                } else if (TextUtils.isEmpty(replace2)) {
                    tt.f4763do.putString("SP_APP_AD_APPID_DATA_KEY", replace);
                }
            }
            q5 q5Var = q5.this;
            if (q5Var.f3799try) {
                return;
            }
            new b1().m141do(new o5(q5Var, jSONObject2));
        }

        @Override // com.apk.c1
        public void onPreExecute() {
            super.onPreExecute();
            if (v.m2734do() == null) {
                throw null;
            }
        }
    }

    public q5(Activity activity, y5 y5Var) {
        this.f3559do = activity;
        this.f3797for = y5Var;
    }

    /* renamed from: for  reason: not valid java name */
    public static JSONObject m2105for() {
        CacheBean m648for;
        try {
            String n = ze.n("SP_AD_CACHE_DATA_KEY");
            if (!TextUtils.isEmpty(n) && (m648for = Celse.m648for("SP_AD_CACHE_DATA_KEY")) != null) {
                n = m648for.getData();
            }
            if (TextUtils.isEmpty(n)) {
                return null;
            }
            return new JSONObject(n);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: case  reason: not valid java name */
    public final void m2106case(boolean z) {
        new b1().m141do(new Cdo(z));
        if (z) {
            Handler handler = new Handler();
            this.f3798new = handler;
            handler.postDelayed(new Runnable() { // from class: com.apk.w2
                @Override // java.lang.Runnable
                public final void run() {
                    q5.this.m2108try();
                }
            }, ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS);
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final void m2107new() {
        JSONObject m2105for = m2105for();
        if (m2105for != null) {
            if (v.m2734do() != null) {
                new b1().m141do(new o5(this, m2105for));
                this.f3799try = true;
                m2106case(false);
                return;
            }
            throw null;
        } else if (v.m2734do() != null) {
            m2106case(true);
        } else {
            throw null;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public /* synthetic */ void m2108try() {
        this.f3799try = true;
        y5 y5Var = this.f3797for;
        if (y5Var != null) {
            ((WelComeActivity) y5Var).l(false, null);
        }
    }
}
