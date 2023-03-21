package com.apk;

import android.app.Activity;
import android.text.TextUtils;
import com.swl.gg.ggs.SwlAdAdInsert;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: AdInsertHelper.java */
/* renamed from: com.apk.switch  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cswitch {

    /* renamed from: goto  reason: not valid java name */
    public static Cswitch f4603goto;

    /* renamed from: case  reason: not valid java name */
    public boolean f4604case;

    /* renamed from: do  reason: not valid java name */
    public long f4605do;

    /* renamed from: else  reason: not valid java name */
    public SwlAdAdInsert f4606else;

    /* renamed from: if  reason: not valid java name */
    public boolean f4608if;

    /* renamed from: try  reason: not valid java name */
    public d60 f4610try;

    /* renamed from: for  reason: not valid java name */
    public final v60 f4607for = new Cdo(this);

    /* renamed from: new  reason: not valid java name */
    public final z60 f4609new = new Cif(this);

    /* compiled from: AdInsertHelper.java */
    /* renamed from: com.apk.switch$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements v60 {
        public Cdo(Cswitch cswitch) {
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
        }

        @Override // com.apk.b70
        /* renamed from: else */
        public void mo158else() {
        }

        @Override // com.apk.b70
        /* renamed from: if */
        public void mo159if(int i, String str) {
        }

        @Override // com.apk.v60
        public void onAdClick() {
        }

        @Override // com.apk.v60
        public void onAdClose() {
            o.m1921for().m1922do(new Cthrows());
        }

        @Override // com.apk.v60
        public void onAdLoaded() {
        }

        @Override // com.apk.v60
        public void onAdShow() {
        }

        @Override // com.apk.v60
        public void onVideoCached() {
        }
    }

    /* compiled from: AdInsertHelper.java */
    /* renamed from: com.apk.switch$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements z60 {
        public Cif(Cswitch cswitch) {
        }

        @Override // com.apk.b70
        /* renamed from: case */
        public void mo157case() {
        }

        @Override // com.apk.z60
        /* renamed from: do */
        public void mo524do() {
        }

        @Override // com.apk.b70
        /* renamed from: else */
        public void mo158else() {
        }

        @Override // com.apk.b70
        /* renamed from: if */
        public void mo159if(int i, String str) {
        }

        @Override // com.apk.z60
        public void onAdClick() {
        }

        @Override // com.apk.z60
        public void onAdClose() {
            o.m1921for().m1922do(new Cthrows());
        }

        @Override // com.apk.z60
        public void onAdLoaded() {
        }

        @Override // com.apk.z60
        public void onAdShow() {
        }

        @Override // com.apk.z60
        public void onVideoCached() {
        }

        @Override // com.apk.z60
        /* renamed from: try */
        public void mo525try() {
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static boolean m2556do(int i) {
        return i != 0 && ((i == 0 || !tt.m2620do("SP_READ_END_VIDEO_AD_DATE_TODAY_KEY", "").equals(kg.m1498if())) ? 0 : ze.m3174instanceof("SP_READ_END_VIDEO_AD_COUNT_TODAY_KEY", 0)) > i;
    }

    /* renamed from: for  reason: not valid java name */
    public static Cswitch m2557for() {
        if (f4603goto == null) {
            synchronized (Cswitch.class) {
                if (f4603goto == null) {
                    f4603goto = new Cswitch();
                }
            }
        }
        return f4603goto;
    }

    /* renamed from: case  reason: not valid java name */
    public final void m2558case(Activity activity, g gVar, boolean z) {
        int i = gVar.f1482for;
        if (i < 1000) {
            i *= 1000;
        }
        long j = i;
        if (this.f4605do < j) {
            this.f4605do = j;
        }
        String m2620do = tt.m2620do("SP_READ_END_AD_SHOW_LAST_TIME_KEY", "");
        if (System.currentTimeMillis() - (TextUtils.isEmpty(m2620do) ? 0L : Long.parseLong(m2620do)) < this.f4605do) {
            return;
        }
        String m899if = gVar.m899if();
        String m898do = gVar.m898do();
        if (TrAdSdk.isFullAdType(m899if)) {
            if (z) {
                c.m286while().m292native(m899if, m898do, "other");
            } else {
                c.m286while().m291import(activity, m899if, m898do, this.f4607for, "other");
            }
        } else if (TrAdSdk.isRewardAdType(m899if)) {
            if (z) {
                e.m520while().m522native(m899if, m898do, "other");
            } else {
                e.m520while().m521import(m899if, m898do, this.f4609new, "other");
            }
        }
        tt.f4763do.putString("SP_READ_END_AD_SHOW_LAST_TIME_KEY", String.valueOf(System.currentTimeMillis()));
        Cfinally.m797else().f1350finally++;
    }

    /* renamed from: if  reason: not valid java name */
    public void m2559if() {
        c m286while = c.m286while();
        m286while.f1156do = true;
        Map<String, v60> map = m286while.f473goto;
        if (map != null) {
            map.remove("other");
        }
        e m520while = e.m520while();
        m520while.f1156do = true;
        Map<String, z60> map2 = m520while.f972goto;
        if (map2 != null) {
            map2.remove("other");
        }
    }

    /* renamed from: new  reason: not valid java name */
    public void m2560new() {
        JSONObject jSONObject;
        g gVar;
        if (!Cfinally.m797else().m816private() || (jSONObject = Cfinally.m797else().f1361private) == null) {
            return;
        }
        List<g> e = Cfinally.e(jSONObject);
        this.f4605do = Cfinally.m799goto(jSONObject);
        boolean optBoolean = jSONObject.optBoolean("readShow", false);
        boolean m802try = Cfinally.m802try(jSONObject);
        if (e == null || e.size() <= 0 || m2556do(jSONObject.optInt("showcounts"))) {
            return;
        }
        if (m802try) {
            gVar = e.get(Cfinally.m797else().m825this(e));
        } else {
            gVar = e.get(Cfinally.m797else().f1350finally % e.size());
        }
        Activity activity = e.m520while().getActivity();
        if (optBoolean) {
            m2558case(activity, gVar, false);
        } else {
            m2558case(activity, gVar, true);
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m2561try(Activity activity) {
        JSONObject jSONObject;
        g gVar;
        boolean z = false;
        if (Cfinally.m797else().m816private() && (jSONObject = Cfinally.m797else().f1361private) != null) {
            List<g> e = Cfinally.e(jSONObject);
            this.f4605do = Cfinally.m799goto(jSONObject);
            boolean m802try = Cfinally.m802try(jSONObject);
            if (e != null && e.size() > 0 && !m2556do(jSONObject.optInt("showcounts"))) {
                if (m802try) {
                    gVar = e.get(Cfinally.m797else().m825this(e));
                } else {
                    gVar = e.get(Cfinally.m797else().f1350finally % e.size());
                }
                m2558case(e.m520while().getActivity(), gVar, false);
                return;
            }
        }
        Cfinally m797else = Cfinally.m797else();
        if (m797else.f1360package != null && m797else.m808final() && Cfinally.m796do(m797else.f1360package, "insertPagereadover") != null) {
            z = true;
        }
        if (z) {
            this.f4605do = Cfinally.m799goto(i.m1176if("insertPagereadover"));
            String m2620do = tt.m2620do("SP_READ_END_AD_SHOW_LAST_TIME_KEY", "");
            if (System.currentTimeMillis() - (TextUtils.isEmpty(m2620do) ? 0L : Long.parseLong(m2620do)) < this.f4605do) {
                return;
            }
            d60 d60Var = this.f4610try;
            if (d60Var != null && this.f4604case) {
                d60Var.m410else(activity);
            } else {
                d60 d60Var2 = new d60(activity, new Cdefault(this, activity), "insertPagereadover");
                this.f4610try = d60Var2;
                c50 m2110if = q70.m2109do().m2110if(d60Var2.f3593do);
                if (m2110if != null) {
                    d60Var2.m411try(m2110if.m310if(), m2110if.m309do(), m2110if.f511for, m2110if.f513new, false);
                }
            }
            tt.f4763do.putString("SP_READ_END_AD_SHOW_LAST_TIME_KEY", String.valueOf(System.currentTimeMillis()));
        }
    }
}
