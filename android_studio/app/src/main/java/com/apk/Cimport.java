package com.apk;

import android.app.Activity;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.ActivityChooserModel;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* compiled from: AdChapterUtils.java */
/* renamed from: com.apk.import  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cimport {

    /* renamed from: break  reason: not valid java name */
    public int f2166break;

    /* renamed from: case  reason: not valid java name */
    public int f2167case;

    /* renamed from: class  reason: not valid java name */
    public int f2169class;

    /* renamed from: const  reason: not valid java name */
    public int f2170const;

    /* renamed from: default  reason: not valid java name */
    public int f2171default;

    /* renamed from: do  reason: not valid java name */
    public long f2172do;

    /* renamed from: else  reason: not valid java name */
    public int f2173else;

    /* renamed from: extends  reason: not valid java name */
    public d60 f2174extends;

    /* renamed from: finally  reason: not valid java name */
    public boolean f2176finally;

    /* renamed from: for  reason: not valid java name */
    public String f2177for;

    /* renamed from: goto  reason: not valid java name */
    public int f2178goto;

    /* renamed from: if  reason: not valid java name */
    public int f2179if;

    /* renamed from: import  reason: not valid java name */
    public boolean f2180import;

    /* renamed from: native  reason: not valid java name */
    public CountDownTimer f2181native;

    /* renamed from: new  reason: not valid java name */
    public boolean f2182new;

    /* renamed from: public  reason: not valid java name */
    public boolean f2183public;

    /* renamed from: return  reason: not valid java name */
    public List<g> f2184return;

    /* renamed from: static  reason: not valid java name */
    public String f2185static;

    /* renamed from: super  reason: not valid java name */
    public boolean f2186super;

    /* renamed from: switch  reason: not valid java name */
    public int f2187switch;

    /* renamed from: this  reason: not valid java name */
    public int f2188this;

    /* renamed from: throws  reason: not valid java name */
    public boolean f2190throws;

    /* renamed from: try  reason: not valid java name */
    public boolean f2191try;

    /* renamed from: catch  reason: not valid java name */
    public int f2168catch = 1;

    /* renamed from: final  reason: not valid java name */
    public List<g> f2175final = null;

    /* renamed from: throw  reason: not valid java name */
    public final v60 f2189throw = new Cdo();

    /* renamed from: while  reason: not valid java name */
    public final z60 f2192while = new Cif();

    /* compiled from: AdChapterUtils.java */
    /* renamed from: com.apk.import$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements v60 {
        public Cdo() {
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
            Cimport cimport = Cimport.this;
            if (cimport == null) {
                throw null;
            }
            o.m1921for().m1922do(new Cnative(cimport));
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

    /* compiled from: AdChapterUtils.java */
    /* renamed from: com.apk.import$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends bg {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Ctry f2194do;

        public Cfor(Ctry ctry) {
            this.f2194do = ctry;
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            Ctry ctry;
            if (Cimport.this.f2181native == null && (ctry = this.f2194do) != null) {
                ctry.mo734if();
            }
        }
    }

    /* compiled from: AdChapterUtils.java */
    /* renamed from: com.apk.import$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements z60 {
        public Cif() {
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
            Cimport cimport = Cimport.this;
            if (cimport == null) {
                throw null;
            }
            o.m1921for().m1922do(new Cnative(cimport));
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

    /* compiled from: AdChapterUtils.java */
    /* renamed from: com.apk.import$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends CountDownTimer {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ TextView f2197do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ Ctry f2198for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f2199if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cnew(long j, long j2, TextView textView, String str, Ctry ctry) {
            super(j, j2);
            this.f2197do = textView;
            this.f2199if = str;
            this.f2198for = ctry;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Cimport cimport = Cimport.this;
            cimport.f2183public = false;
            cimport.f2185static = this.f2199if;
            this.f2197do.setText(ze.r(R.string.app_ad_to_read_txt, ""));
            Ctry ctry = this.f2198for;
            if (ctry != null) {
                ctry.mo733for();
            }
            Cimport.this.f2181native = null;
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            this.f2197do.setText(ze.r(R.string.app_ad_to_read_txt, String.valueOf(Math.round(((float) j) / 1000.0f))));
        }
    }

    /* compiled from: AdChapterUtils.java */
    /* renamed from: com.apk.import$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Ctry {
        /* renamed from: do */
        void mo732do();

        /* renamed from: for */
        void mo733for();

        /* renamed from: if */
        void mo734if();

        void start();
    }

    public Cimport(hf hfVar) {
        List<g> f;
        JSONObject jSONObject;
        List<g> f2;
        JSONObject jSONObject2 = null;
        if (hf.BOOK == hfVar) {
            if (!Cfinally.m797else().m819return() || (jSONObject = Cfinally.m797else().f1349final) == null) {
                return;
            }
            if (jSONObject.has("video_list")) {
                f2 = Cfinally.g(jSONObject);
                this.f2184return = f2;
            } else {
                f2 = Cfinally.f(jSONObject, jSONObject.optString(ActivityChooserModel.ATTRIBUTE_WEIGHT));
            }
            this.f2190throws = Cfinally.m802try(jSONObject);
            if (f2 != null) {
                int size = f2.size();
                this.f2173else = size;
                if (size > 0) {
                    this.f2172do = Cfinally.m799goto(jSONObject);
                    this.f2179if = jSONObject.optInt("chapters", 1);
                    this.f2178goto = jSONObject.optInt("imgcounts", 0);
                    this.f2177for = jSONObject.optString("tips");
                    this.f2182new = "a".equals(jSONObject.optString(com.umeng.analytics.pro.ak.e));
                    this.f2191try = "a".equals(jSONObject.optString("v_style"));
                    return;
                }
                return;
            }
            return;
        }
        if (hf.COMIC == hfVar && Cfinally.m797else().m820static()) {
            jSONObject2 = Cfinally.m797else().f1367super;
        }
        if (jSONObject2 != null) {
            if (jSONObject2.has("video_list")) {
                f = Cfinally.g(jSONObject2);
                this.f2184return = f;
            } else {
                f = Cfinally.f(jSONObject2, jSONObject2.optString(ActivityChooserModel.ATTRIBUTE_WEIGHT));
            }
            this.f2190throws = Cfinally.m802try(jSONObject2);
            if (f != null) {
                int size2 = f.size();
                this.f2173else = size2;
                if (size2 > 0) {
                    this.f2172do = Cfinally.m799goto(jSONObject2);
                    this.f2179if = jSONObject2.optInt("chapters", 1);
                    this.f2178goto = jSONObject2.optInt("imgcounts", 0);
                    this.f2177for = jSONObject2.optString("tips");
                    this.f2182new = "a".equals(jSONObject2.optString(com.umeng.analytics.pro.ak.e));
                    this.f2191try = "a".equals(jSONObject2.optString("v_style"));
                }
            }
        }
    }

    /* renamed from: break  reason: not valid java name */
    public void m1248break(TextView textView, String str, Ctry ctry) {
        textView.setOnClickListener(new Cfor(ctry));
        if (this.f2172do <= 0) {
            if (ctry != null) {
                ctry.mo732do();
            }
        } else if (TextUtils.isEmpty(str) || !str.equals(this.f2185static)) {
            if (!this.f2183public) {
                if (ctry != null) {
                    ctry.mo732do();
                }
                if (ctry != null) {
                    ctry.start();
                }
            }
            this.f2183public = true;
            CountDownTimer countDownTimer = this.f2181native;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.f2181native = null;
            }
            Cnew cnew = new Cnew(this.f2172do, 1000L, textView, str, ctry);
            this.f2181native = cnew;
            cnew.start();
        }
    }

    /* renamed from: case  reason: not valid java name */
    public void m1249case() {
        this.f2167case = 0;
        this.f2166break = 0;
        e m520while = e.m520while();
        m520while.f1156do = true;
        Map<String, z60> map = m520while.f972goto;
        if (map != null) {
            map.remove("other");
        }
        c m286while = c.m286while();
        m286while.f1156do = true;
        Map<String, v60> map2 = m286while.f473goto;
        if (map2 != null) {
            map2.remove("other");
        }
        d60 d60Var = this.f2174extends;
        if (d60Var != null) {
            d60Var.m409case();
            this.f2174extends = null;
        }
    }

    /* renamed from: do  reason: not valid java name */
    public g m1250do() {
        List<g> list = this.f2184return;
        if (list != null) {
            if (this.f2190throws) {
                return list.get(this.f2171default);
            }
            return list.get(this.f2187switch % list.size());
        }
        return null;
    }

    /* renamed from: else  reason: not valid java name */
    public void m1251else(Activity activity) {
        g m1250do = m1250do();
        if (m1250do != null) {
            String m899if = m1250do.m899if();
            String m898do = m1250do.m898do();
            if (TrAdSdk.isFullAdType(m899if)) {
                if (c.m286while().m690this()) {
                    c.m286while().m291import(activity, m899if, m898do, null, "read");
                }
            } else if (TrAdSdk.isRewardAdType(m899if)) {
                if (e.m520while().m690this()) {
                    e.m520while().m521import(m899if, m898do, null, "read");
                }
            } else {
                d60 d60Var = this.f2174extends;
                if (d60Var != null && this.f2176finally) {
                    d60Var.m410else(activity);
                }
            }
        }
        if (this.f2190throws) {
            this.f2171default = Cfinally.m797else().m825this(this.f2184return);
        } else {
            this.f2187switch++;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public boolean m1252for() {
        return this.f2178goto > 0 && eg.m600implements();
    }

    /* renamed from: goto  reason: not valid java name */
    public void m1253goto(Activity activity) {
        g m1250do = m1250do();
        if (m1250do != null) {
            String m899if = m1250do.m899if();
            String m898do = m1250do.m898do();
            if (TrAdSdk.isFullAdType(m899if)) {
                c.m286while().m292native(m899if, m898do, "read");
            } else if (TrAdSdk.isRewardAdType(m899if)) {
                e.m520while().m522native(m899if, m898do, "read");
            } else if (this.f2174extends != null) {
            } else {
                this.f2176finally = false;
                d60 d60Var = new d60(activity, new Cpublic(this), "");
                this.f2174extends = d60Var;
                d60Var.m411try(m899if, m898do, 0, 0, false);
            }
        }
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m1254if(String str) {
        return !TextUtils.isEmpty(str) && str.equals(this.f2185static);
    }

    /* renamed from: new  reason: not valid java name */
    public boolean m1255new(hf hfVar) {
        int i;
        int i2;
        int i3;
        int i4;
        return hf.BOOK == hfVar ? !this.f2180import && Cfinally.m797else().m819return() && (i3 = this.f2167case) != 0 && (i4 = this.f2179if) != 0 && i3 % i4 == 0 && this.f2173else > 0 : hf.COMIC == hfVar && Cfinally.m797else().m820static() && (i = this.f2167case) != 0 && (i2 = this.f2179if) != 0 && i % i2 == 0 && this.f2173else > 0;
    }

    /* renamed from: this  reason: not valid java name */
    public void m1256this(Activity activity) {
        int size;
        JSONObject jSONObject;
        if (this.f2180import) {
            return;
        }
        Cfinally m797else = Cfinally.m797else();
        boolean z = false;
        if ((m797else.f1371throw == null || !m797else.m822super(false) || Cfinally.m796do(m797else.f1371throw, "chaptersVideos") == null) ? false : true) {
            if (this.f2175final == null && (jSONObject = Cfinally.m797else().f1371throw) != null) {
                this.f2168catch = jSONObject.optInt("chapters", 1);
                int optInt = jSONObject.optInt("showcounts");
                this.f2169class = optInt;
                if (optInt != 0 && tt.m2620do("SP_READ_VIDEO_AD_DATE_TODAY_KEY", "").equals(kg.m1498if())) {
                    this.f2170const = ze.m3174instanceof("SP_READ_VIDEO_AD_COUNT_TODAY_KEY", 0);
                }
                int i = this.f2169class;
                if (i != 0 && this.f2170const > i) {
                    z = true;
                }
                if (z) {
                    return;
                }
                this.f2175final = Cfinally.e(jSONObject);
                this.f2186super = Cfinally.m802try(jSONObject);
            }
            List<g> list = this.f2175final;
            if (list == null || list.size() == 0) {
                return;
            }
            int i2 = this.f2166break;
            if (i2 != 0 && i2 % this.f2168catch == 0) {
                try {
                    if (this.f2186super) {
                        size = Cfinally.m797else().m825this(this.f2175final);
                    } else {
                        size = this.f2188this % this.f2175final.size();
                        this.f2188this++;
                    }
                    g gVar = this.f2175final.get(size);
                    String m899if = gVar.m899if();
                    String m898do = gVar.m898do();
                    if (TrAdSdk.isFullAdType(m899if)) {
                        c.m286while().m291import(activity, m899if, m898do, this.f2189throw, "other");
                    } else if (TrAdSdk.isRewardAdType(m899if)) {
                        e.m520while().m521import(m899if, m898do, this.f2192while, "other");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            this.f2166break++;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public boolean m1257try() {
        List<g> list = this.f2184return;
        return list != null && list.size() > 0;
    }
}
