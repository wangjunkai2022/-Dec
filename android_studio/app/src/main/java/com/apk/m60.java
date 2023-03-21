package com.apk;

import android.app.Activity;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.qq.e.ads.rewardvideo.RewardVideoAD;
import com.swl.gg.sdk.TrAdSdk;

/* compiled from: AdHelperReward.java */
/* loaded from: classes7.dex */
public class m60 extends t60 {

    /* renamed from: do  reason: not valid java name */
    public m70 f2984do;

    /* renamed from: for  reason: not valid java name */
    public v40 f2985for;

    /* renamed from: if  reason: not valid java name */
    public i50 f2986if;

    /* renamed from: case  reason: not valid java name */
    public void m1687case(Activity activity, String str, String str2, z60 z60Var) {
        if (k40.m1436abstract(str)) {
            if (m2583new(z60Var)) {
                m70 m70Var = new m70();
                this.f2984do = m70Var;
                m70Var.f2990this = str;
                m70Var.f2988break = z60Var;
                m70Var.h(str, 6000L, false, z60Var);
                m70Var.m566protected(str);
                m70Var.m();
                RewardVideoAD rewardVideoAD = new RewardVideoAD(activity, str2, new l70(m70Var, str, z60Var));
                m70Var.f2989catch = rewardVideoAD;
                rewardVideoAD.loadAD();
            }
        } else if (k40.m1457public(str)) {
            if (m2581for(z60Var)) {
                i50 i50Var = new i50();
                this.f2986if = i50Var;
                i50Var.f2053this = str;
                i50Var.f2052catch = z60Var;
                i50Var.h(str, 6000L, false, z60Var);
                i50Var.m566protected(str);
                i50Var.m();
                AdSlot.Builder orientation = new AdSlot.Builder().setCodeId(str2).setSupportDeepLink(true).setUserID(TrAdSdk.getUserId()).setAdCount(1).setAdLoadType(TTAdLoadType.LOAD).setOrientation(1);
                orientation.setExpressViewAcceptedSize(500.0f, 500.0f);
                k40.m1454new(activity).loadRewardVideoAd(orientation.build(), new h50(i50Var, str, z60Var));
            }
        } else if ("gm_jlsp".equals(str)) {
            if (m2584try(z60Var)) {
                v40 v40Var = new v40();
                this.f2985for = v40Var;
                v40Var.f5016this = activity;
                v40Var.f5011break = str;
                v40Var.f5012catch = str2;
                v40Var.f5013class = z60Var;
                v40Var.h(str, 6000L, false, z60Var);
                if (GMMediationAdSdk.configLoadSuccess()) {
                    v40Var.n(activity, str, str2, z60Var);
                } else {
                    GMMediationAdSdk.registerConfigCallback(v40Var.f5015final);
                }
            }
        } else {
            m2580do(z60Var);
        }
    }

    /* renamed from: else  reason: not valid java name */
    public boolean m1688else(Activity activity) {
        m70 m70Var = this.f2984do;
        if (m70Var != null) {
            if (m70Var.f1805case) {
                k40.m1463this("检测show的时候应用处于后台");
                m70Var.f1806else = true;
            } else {
                k40.m1463this("show的时候应用处于前台-正常执行show");
                m70Var.n(activity);
            }
            this.f2984do = null;
            return true;
        }
        i50 i50Var = this.f2986if;
        if (i50Var != null) {
            if (i50Var.f1805case) {
                k40.m1463this("检测show的时候应用处于后台");
                i50Var.f1806else = true;
            } else {
                k40.m1463this("show的时候应用处于前台-正常执行show");
                i50Var.n(activity);
            }
            this.f2986if = null;
            return true;
        }
        v40 v40Var = this.f2985for;
        if (v40Var != null) {
            if (v40Var.f1805case) {
                k40.m1463this("检测show的时候应用处于后台");
                v40Var.f1806else = true;
            } else {
                k40.m1463this("show的时候应用处于前台-正常执行show");
                v40Var.o(activity);
            }
            this.f2985for = null;
            return true;
        }
        return false;
    }
}
