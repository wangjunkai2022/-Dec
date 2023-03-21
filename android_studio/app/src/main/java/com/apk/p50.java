package com.apk;

import android.app.Activity;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.qq.e.ads.cfg.VideoOption;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.swl.gg.sdk.TrAdSdk;

/* compiled from: AdHelperFullVideo.java */
/* loaded from: classes7.dex */
public class p50 extends t60 {

    /* renamed from: do  reason: not valid java name */
    public s60 f3581do;

    /* renamed from: for  reason: not valid java name */
    public y70 f3582for;

    /* renamed from: if  reason: not valid java name */
    public y40 f3583if;

    /* renamed from: new  reason: not valid java name */
    public u70 f3584new;

    /* renamed from: case  reason: not valid java name */
    public void m2020case() {
        if (this.f3581do != null) {
            this.f3581do = null;
        }
        if (this.f3583if != null) {
            this.f3583if = null;
        }
        if (this.f3582for != null) {
            this.f3582for = null;
        }
        if (this.f3584new != null) {
            this.f3584new = null;
        }
    }

    /* renamed from: else  reason: not valid java name */
    public void m2021else(Activity activity, String str, String str2, v60 v60Var) {
        if (k40.m1443default(str)) {
            if (m2583new(v60Var)) {
                s60 s60Var = new s60();
                this.f3581do = s60Var;
                s60Var.f4283this = str;
                s60Var.f4281break = v60Var;
                s60Var.h(str, 6000L, false, v60Var);
                s60Var.m560instanceof(str);
                s60Var.m();
                UnifiedInterstitialAD unifiedInterstitialAD = new UnifiedInterstitialAD(activity, str2, new q60(s60Var, str, v60Var));
                s60Var.f4282catch = unifiedInterstitialAD;
                unifiedInterstitialAD.setVideoOption(new VideoOption.Builder().setAutoPlayMuted(false).setAutoPlayPolicy(1).build());
                s60Var.f4282catch.setMediaListener(new r60(s60Var, str, v60Var));
                s60Var.f4282catch.loadFullScreenAD();
            }
        } else if (k40.m1440class(str)) {
            if (m2581for(v60Var)) {
                y40 y40Var = new y40();
                this.f3583if = y40Var;
                y40Var.f5862this = str;
                y40Var.f5860break = v60Var;
                y40Var.h(str, 6000L, false, v60Var);
                y40Var.m560instanceof(str);
                y40Var.m();
                AdSlot.Builder orientation = new AdSlot.Builder().setCodeId(str2).setSupportDeepLink(true).setUserID(TrAdSdk.getUserId()).setAdLoadType(TTAdLoadType.LOAD).setAdCount(1).setOrientation(1);
                orientation.setExpressViewAcceptedSize(500.0f, 500.0f);
                k40.m1454new(activity).loadFullScreenVideoAd(orientation.build(), new x40(y40Var, str, v60Var));
            }
        } else if ("gm_qpsp".equals(str)) {
            if (m2584try(v60Var)) {
                y70 y70Var = new y70();
                this.f3582for = y70Var;
                y70Var.f5869this = activity;
                y70Var.f5864break = str;
                y70Var.f5865catch = str2;
                y70Var.f5866class = v60Var;
                y70Var.h(str, 6000L, false, v60Var);
                if (GMMediationAdSdk.configLoadSuccess()) {
                    y70Var.o();
                } else {
                    GMMediationAdSdk.registerConfigCallback(y70Var.f5868final);
                }
            }
        } else if ("gm_cqpsp".equals(str)) {
            if (m2584try(v60Var)) {
                u70 u70Var = new u70();
                this.f3584new = u70Var;
                u70Var.f4857this = activity;
                u70Var.f4852break = str;
                u70Var.f4853catch = str2;
                u70Var.f4854class = v60Var;
                u70Var.h(str, 6000L, false, v60Var);
                if (GMMediationAdSdk.configLoadSuccess()) {
                    u70Var.o();
                } else {
                    GMMediationAdSdk.registerConfigCallback(u70Var.f4856final);
                }
            }
        } else {
            m2580do(v60Var);
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public boolean m2022goto(Activity activity) {
        s60 s60Var = this.f3581do;
        if (s60Var != null) {
            if (s60Var.f1805case) {
                k40.m1463this("检测show的时候应用处于后台");
                s60Var.f1806else = true;
            } else {
                k40.m1463this("show的时候应用处于前台-正常执行show");
                s60Var.n(activity);
            }
            this.f3581do = null;
            return true;
        }
        y40 y40Var = this.f3583if;
        if (y40Var != null) {
            if (y40Var.f1805case) {
                k40.m1463this("检测show的时候应用处于后台");
                y40Var.f1806else = true;
            } else {
                k40.m1463this("show的时候应用处于前台-正常执行show");
                y40Var.n(activity);
            }
            this.f3583if = null;
            return true;
        }
        y70 y70Var = this.f3582for;
        if (y70Var != null) {
            if (y70Var.f1805case) {
                k40.m1463this("检测show的时候应用处于后台");
                y70Var.f1806else = true;
            } else {
                k40.m1463this("show的时候应用处于前台-正常执行show");
                y70Var.n(activity);
            }
            this.f3582for = null;
            return true;
        }
        u70 u70Var = this.f3584new;
        if (u70Var != null) {
            if (u70Var.f1805case) {
                k40.m1463this("检测show的时候应用处于后台");
                u70Var.f1806else = true;
            } else {
                k40.m1463this("show的时候应用处于前台-正常执行show");
                u70Var.n(activity);
            }
            this.f3584new = null;
            return true;
        }
        return false;
    }
}
