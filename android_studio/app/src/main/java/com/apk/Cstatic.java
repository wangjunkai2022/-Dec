package com.apk;

import android.app.Activity;
import com.biquge.ebook.app.ui.activity.ToforegroundActivity;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;
import org.json.JSONObject;

/* compiled from: AdFrontBackUtils.java */
/* renamed from: com.apk.static  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cstatic {

    /* renamed from: case  reason: not valid java name */
    public e60 f4583case;

    /* renamed from: do  reason: not valid java name */
    public List<g> f4584do;

    /* renamed from: else  reason: not valid java name */
    public y60 f4585else;

    /* renamed from: for  reason: not valid java name */
    public g f4586for;

    /* renamed from: if  reason: not valid java name */
    public int f4587if;

    /* renamed from: new  reason: not valid java name */
    public long f4588new;

    /* renamed from: try  reason: not valid java name */
    public long f4589try;

    public Cstatic() {
        JSONObject jSONObject;
        if (this.f4584do != null || (jSONObject = Cfinally.m797else().j) == null) {
            return;
        }
        List<g> e = Cfinally.e(jSONObject);
        this.f4584do = e;
        if (e == null || e.size() <= 0) {
            return;
        }
        this.f4588new = jSONObject.optLong("fshowtimer", 0L) * 1000;
    }

    /* renamed from: do  reason: not valid java name */
    public void m2551do(Activity activity) {
        try {
            if (this.f4586for != null) {
                String m899if = this.f4586for.m899if();
                if (TrAdSdk.isFullAdType(m899if)) {
                    c.m286while().m291import(null, m899if, this.f4586for.m898do(), null, "b_f");
                } else if (TrAdSdk.isRewardAdType(m899if)) {
                    e.m520while().m521import(m899if, this.f4586for.m898do(), null, "b_f");
                } else {
                    int m3174instanceof = ze.m3174instanceof("TOFORE_SPLASH_AD_SHOW_MAX_KEY", 0);
                    if (m3174instanceof > 0 && w0.m2876final("SP_SAVE_TOFORE_SPLASH_AD_SHOW_MAX_KEY") >= m3174instanceof) {
                        this.f4586for = null;
                        return;
                    } else if (eg.m600implements()) {
                        ToforegroundActivity.j(activity, m899if, this.f4586for.m898do());
                    }
                }
            }
            this.f4586for = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
