package com.apk;

import android.app.Activity;
import com.apk.h60;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAd;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.swl.gg.sdk.TrAdSdk;
/* compiled from: TrInsertAd.java */
/* loaded from: classes7.dex */
public class d60 extends p70 {

    /* renamed from: for  reason: not valid java name */
    public final w60 f828for;

    /* renamed from: if  reason: not valid java name */
    public final Activity f829if;

    /* renamed from: new  reason: not valid java name */
    public h60 f830new;

    public d60(Activity activity, w60 w60Var, String str) {
        this.f829if = activity;
        this.f828for = w60Var;
        this.f3593do = str;
    }

    /* renamed from: case  reason: not valid java name */
    public void m409case() {
        h60 h60Var = this.f830new;
        if (h60Var != null) {
            d70 d70Var = h60Var.f1798if;
            if (d70Var != null) {
                UnifiedInterstitialAD unifiedInterstitialAD = d70Var.f832case;
                if (unifiedInterstitialAD != null) {
                    unifiedInterstitialAD.destroy();
                    d70Var.f832case = null;
                }
                h60Var.f1798if = null;
            }
            b50 b50Var = h60Var.f1797for;
            if (b50Var != null) {
                TTNativeExpressAd tTNativeExpressAd = b50Var.f244case;
                if (tTNativeExpressAd != null) {
                    tTNativeExpressAd.destroy();
                    b50Var.f244case = null;
                }
                h60Var.f1797for = null;
            }
            a80 a80Var = h60Var.f1799new;
            if (a80Var != null) {
                GMMediationAdSdk.unregisterConfigCallback(a80Var.f48catch);
                if (a80Var.f46break != null) {
                    a80Var.f46break = null;
                }
                h60Var.f1799new = null;
            }
            this.f830new = null;
        }
    }

    /* renamed from: else  reason: not valid java name */
    public void m410else(Activity activity) {
        h60 h60Var;
        GMInterstitialAd gMInterstitialAd;
        if (activity == null || activity.isFinishing() || (h60Var = this.f830new) == null) {
            return;
        }
        d70 d70Var = h60Var.f1798if;
        if (d70Var != null) {
            UnifiedInterstitialAD unifiedInterstitialAD = d70Var.f832case;
            if (unifiedInterstitialAD == null || !unifiedInterstitialAD.isValid()) {
                return;
            }
            d70Var.f832case.show();
            return;
        }
        b50 b50Var = h60Var.f1797for;
        if (b50Var != null) {
            TTNativeExpressAd tTNativeExpressAd = b50Var.f244case;
            if (tTNativeExpressAd != null) {
                tTNativeExpressAd.render();
                return;
            }
            return;
        }
        a80 a80Var = h60Var.f1799new;
        if (a80Var == null || (gMInterstitialAd = a80Var.f46break) == null || !gMInterstitialAd.isReady()) {
            return;
        }
        a80Var.f46break.showAd(activity);
    }

    /* renamed from: try  reason: not valid java name */
    public void m411try(String str, String str2, int i, int i2, boolean z) {
        if (TrAdSdk.getApp() == null) {
            m2025if(this.f828for);
        } else if (!k40.m1446extends()) {
            m2024for(this.f828for);
        } else if (this.f829if == null) {
            m2023do(this.f828for);
        } else if (m2026new(i, i2, this.f828for)) {
        } else {
            h60 h60Var = new h60(z);
            this.f830new = h60Var;
            Activity activity = this.f829if;
            w60 w60Var = this.f828for;
            if ("gdt".equals(str)) {
                if (h60Var.m2583new(w60Var)) {
                    d70 d70Var = new d70(h60Var.f1796do);
                    h60Var.f1798if = d70Var;
                    d70Var.m561interface(str);
                    UnifiedInterstitialAD unifiedInterstitialAD = d70Var.f832case;
                    if (unifiedInterstitialAD != null) {
                        unifiedInterstitialAD.destroy();
                        d70Var.f832case = null;
                    }
                    UnifiedInterstitialAD unifiedInterstitialAD2 = new UnifiedInterstitialAD(activity, str2, new c70(d70Var, str, w60Var, activity));
                    d70Var.f832case = unifiedInterstitialAD2;
                    unifiedInterstitialAD2.loadAD();
                }
            } else if ("csj".equals(str)) {
                if (h60Var.m2581for(w60Var)) {
                    b50 b50Var = new b50(h60Var.f1796do);
                    h60Var.f1797for = b50Var;
                    b50Var.m561interface(str);
                    k40.m1454new(activity).loadInteractionExpressAd(new AdSlot.Builder().setCodeId(str2).setSupportDeepLink(true).setAdCount(1).setAdLoadType(TTAdLoadType.LOAD).setImageAcceptedSize(640, 320).setExpressViewAcceptedSize(r70.m2247for(h60.Cdo.f1800do), r70.m2247for(h60.Cdo.f1801if)).build(), new a50(b50Var, str, w60Var, activity));
                }
            } else if ("gm".equals(str)) {
                if (h60Var.m2584try(w60Var)) {
                    a80 a80Var = new a80(h60Var.f1796do);
                    h60Var.f1799new = a80Var;
                    a80Var.f52try = activity;
                    a80Var.f47case = str;
                    a80Var.f49else = str2;
                    a80Var.f50goto = w60Var;
                    if (GMMediationAdSdk.configLoadSuccess()) {
                        a80Var.j();
                    } else {
                        GMMediationAdSdk.registerConfigCallback(a80Var.f48catch);
                    }
                }
            } else if ("swl".equals(str)) {
                h60Var.m2582if(str2, w60Var);
            } else {
                h60Var.m2580do(w60Var);
            }
        }
    }
}
