package com.apk;

import android.app.Activity;
import com.apk.k50;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.ad.banner.GMBannerAd;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.qq.e.ads.banner2.UnifiedBannerView;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.swl.gg.sdk.TrAdSdk;
/* compiled from: TrBannerAd.java */
/* loaded from: classes7.dex */
public class a60 extends p70 {

    /* renamed from: for  reason: not valid java name */
    public final x60 f41for;

    /* renamed from: if  reason: not valid java name */
    public final Activity f42if;

    /* renamed from: new  reason: not valid java name */
    public k50 f43new;

    public a60(Activity activity, x60 x60Var, String str) {
        this.f42if = activity;
        this.f41for = x60Var;
        this.f3593do = str;
    }

    /* renamed from: case  reason: not valid java name */
    public void m26case() {
        k50 k50Var = this.f43new;
        if (k50Var != null) {
            l60 l60Var = k50Var.f2477if;
            if (l60Var != null) {
                l60Var.j();
                k50Var.f2477if = null;
            }
            d80 d80Var = k50Var.f2476for;
            if (d80Var != null) {
                d80Var.j();
                k50Var.f2476for = null;
            }
            t70 t70Var = k50Var.f2478new;
            if (t70Var != null) {
                GMBannerAd gMBannerAd = t70Var.f4660this;
                if (gMBannerAd != null) {
                    gMBannerAd.destroy();
                    t70Var.f4660this = null;
                }
                k50Var.f2478new = null;
            }
            p60 p60Var = k50Var.f2479try;
            if (p60Var != null) {
                w50 w50Var = p60Var.f3588case;
                if (w50Var != null) {
                    NativeUnifiedADData nativeUnifiedADData = w50Var.f4645do;
                    if (nativeUnifiedADData != null) {
                        nativeUnifiedADData.destroy();
                        w50Var.f4645do = null;
                    }
                    w50Var.removeAllViews();
                    p60Var.f3588case = null;
                }
                k50Var.f2479try = null;
            }
            u40 u40Var = k50Var.f2474case;
            if (u40Var != null) {
                u40Var.j();
                k50Var.f2474case = null;
            }
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m27try(String str, String str2, int i, int i2) {
        if (TrAdSdk.getApp() == null) {
            m2025if(this.f41for);
        } else if (!k40.m1446extends()) {
            m2024for(this.f41for);
        } else if (this.f42if == null) {
            m2023do(this.f41for);
        } else if (m2026new(i, i2, this.f41for)) {
        } else {
            k50 k50Var = new k50();
            this.f43new = k50Var;
            Activity activity = this.f42if;
            x60 x60Var = this.f41for;
            if (k40.m1448finally(str)) {
                if (k50Var.m2583new(x60Var)) {
                    l60 l60Var = new l60();
                    k50Var.f2477if = l60Var;
                    l60Var.m565private(str);
                    l60Var.j();
                    UnifiedBannerView unifiedBannerView = new UnifiedBannerView(activity, str2, new k60(l60Var, str, x60Var));
                    l60Var.f2761try = unifiedBannerView;
                    unifiedBannerView.setRefresh(0);
                    l60Var.f2761try.loadAD();
                }
            } else if ("csj".equals(str)) {
                if (k50Var.m2581for(x60Var)) {
                    d80 d80Var = new d80();
                    k50Var.f2476for = d80Var;
                    d80Var.m565private(str);
                    k40.m1454new(activity).loadBannerExpressAd(new AdSlot.Builder().setCodeId(str2).setSupportDeepLink(true).setAdCount(1).setExpressViewAcceptedSize(r70.m2247for(k50.Cdo.f2480do), r70.m2247for(k50.Cdo.f2481if)).setImageAcceptedSize(k50.Cdo.f2480do, k50.Cdo.f2481if).build(), new b80(d80Var, str, x60Var, activity));
                }
            } else if ("gm".equals(str)) {
                if (k50Var.m2584try(x60Var)) {
                    t70 t70Var = new t70();
                    k50Var.f2478new = t70Var;
                    t70Var.f4661try = activity;
                    t70Var.f4657case = str;
                    t70Var.f4658else = str2;
                    t70Var.f4659goto = x60Var;
                    if (GMMediationAdSdk.configLoadSuccess()) {
                        t70Var.j();
                    } else {
                        GMMediationAdSdk.registerConfigCallback(t70Var.f4656break);
                    }
                }
            } else if ("gdt_banner_list".equals(str)) {
                if (k50Var.m2583new(x60Var)) {
                    p60 p60Var = new p60();
                    k50Var.f2479try = p60Var;
                    boolean z = k50Var.f2475do;
                    p60Var.f3589try = z;
                    w50 w50Var = p60Var.f3588case;
                    if (w50Var != null) {
                        w50Var.setThemeDayNight(z);
                    }
                    p60 p60Var2 = k50Var.f2479try;
                    p60Var2.m565private(str);
                    w50 w50Var2 = new w50(activity, new o60(p60Var2, str, x60Var));
                    p60Var2.f3588case = w50Var2;
                    w50Var2.setThemeDayNight(p60Var2.f3589try);
                    p60Var2.f3588case.m2579do(str2);
                }
            } else if ("csj_banner_list".equals(str)) {
                if (k50Var.m2581for(x60Var)) {
                    u40 u40Var = new u40();
                    k50Var.f2474case = u40Var;
                    u40Var.m565private(str);
                    k40.m1454new(activity).loadNativeExpressAd(new AdSlot.Builder().setCodeId(str2).setAdCount(1).setSupportDeepLink(true).setExpressViewAcceptedSize(r70.m2247for(k50.Cdo.f2480do), r70.m2247for(k50.Cdo.f2481if)).build(), new t40(u40Var, str, x60Var, activity));
                }
            } else if ("swl".equals(str)) {
                k50Var.m2582if(str2, x60Var);
            } else {
                k50Var.m2580do(x60Var);
            }
        }
    }
}
