package com.apk;

import android.app.Activity;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMUnifiedNativeAd;
import com.qq.e.ads.nativ.NativeExpressADView;
import com.swl.gg.sdk.TrAdSdk;
/* compiled from: TrBangDanListAd.java */
/* loaded from: classes7.dex */
public class z50 extends b60 {

    /* renamed from: case  reason: not valid java name */
    public j50 f6135case;

    /* renamed from: new  reason: not valid java name */
    public final Activity f6136new;

    /* renamed from: try  reason: not valid java name */
    public final x60 f6137try;

    public z50(Activity activity, x60 x60Var, String str) {
        this.f6136new = activity;
        this.f6137try = x60Var;
        this.f3593do = str;
    }

    /* renamed from: case  reason: not valid java name */
    public void m3146case() {
        j50 j50Var = this.f6135case;
        if (j50Var != null) {
            i60 i60Var = j50Var.f2283do;
            if (i60Var != null) {
                NativeExpressADView nativeExpressADView = i60Var.f2054try;
                if (nativeExpressADView != null) {
                    nativeExpressADView.destroy();
                    i60Var.f2054try = null;
                }
                j50Var.f2283do = null;
            }
            z70 z70Var = j50Var.f2285if;
            if (z70Var != null) {
                z70Var.k();
                j50Var.f2285if = null;
            }
            s70 s70Var = j50Var.f2284for;
            if (s70Var != null) {
                GMMediationAdSdk.unregisterConfigCallback(s70Var.f4288const);
                GMUnifiedNativeAd gMUnifiedNativeAd = s70Var.f4286catch;
                if (gMUnifiedNativeAd != null) {
                    gMUnifiedNativeAd.destroy();
                    s70Var.f4286catch = null;
                }
                GMNativeAd gMNativeAd = s70Var.f4287class;
                if (gMNativeAd != null) {
                    gMNativeAd.destroy();
                    s70Var.f4287class = null;
                }
                j50Var.f2284for = null;
            }
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m3147try(String str, String str2, int i, int i2) {
        if (TrAdSdk.getApp() == null) {
            m2025if(this.f6137try);
        } else if (!k40.m1446extends()) {
            m2024for(this.f6137try);
        } else if (this.f6136new == null) {
            m2023do(this.f6137try);
        } else if (m2026new(i, i2, this.f6137try)) {
        } else {
            j50 j50Var = new j50();
            this.f6135case = j50Var;
            Activity activity = this.f6136new;
            x60 x60Var = this.f6137try;
            if (k40.m1448finally(str)) {
                if (j50Var.m2583new(x60Var)) {
                    i60 i60Var = new i60();
                    j50Var.f2283do = i60Var;
                    i60Var.g(activity, str, str2, x60Var);
                }
            } else if (k40.m1455package(str)) {
            } else {
                if (!"csj".equals(str) && !"csjmb".equals(str)) {
                    if ("gm".equals(str)) {
                        if (j50Var.m2584try(x60Var)) {
                            s70 s70Var = new s70();
                            j50Var.f2284for = s70Var;
                            s70Var.g(activity, str, str2, x60Var);
                        }
                    } else if ("swl".equals(str)) {
                        j50Var.m2582if(str2, x60Var);
                    } else {
                        j50Var.m2580do(x60Var);
                    }
                } else if (j50Var.m2581for(x60Var)) {
                    z70 z70Var = new z70();
                    j50Var.f2285if = z70Var;
                    z70Var.g(activity, str, str2, x60Var);
                }
            }
        }
    }
}
