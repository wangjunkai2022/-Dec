package com.apk;

import android.os.Bundle;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;

/* compiled from: CsjProviderReward.java */
/* loaded from: classes7.dex */
public class h50 implements TTAdNative.RewardVideoAdListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f1787do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ i50 f1788for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ z60 f1789if;

    /* compiled from: CsjProviderReward.java */
    /* renamed from: com.apk.h50$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements TTRewardVideoAd.RewardAdInteractionListener {
        public Cdo() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdClose() {
            h50 h50Var = h50.this;
            i50 i50Var = h50Var.f1788for;
            if (i50Var.f1242for) {
                return;
            }
            i50Var.m559import(h50Var.f1787do, h50Var.f1789if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdShow() {
            i50 i50Var = h50.this.f1788for;
            if (i50Var.f1242for) {
                return;
            }
            i50Var.l();
            h50 h50Var = h50.this;
            h50Var.f1788for.m579volatile(h50Var.f1787do, h50Var.f1789if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onAdVideoBarClick() {
            h50 h50Var = h50.this;
            i50 i50Var = h50Var.f1788for;
            if (i50Var.f1242for) {
                return;
            }
            i50Var.m545catch(h50Var.f1787do, h50Var.f1789if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardArrived(boolean z, int i, Bundle bundle) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onRewardVerify(boolean z, int i, String str, int i2, String str2) {
            h50 h50Var = h50.this;
            i50 i50Var = h50Var.f1788for;
            if (i50Var.f1242for) {
                return;
            }
            i50Var.a(h50Var.f1787do, h50Var.f1789if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onSkippedVideo() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoComplete() {
            h50 h50Var = h50.this;
            i50 i50Var = h50Var.f1788for;
            if (i50Var.f1242for) {
                return;
            }
            i50Var.d(h50Var.f1787do);
        }

        @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
        public void onVideoError() {
        }
    }

    public h50(i50 i50Var, String str, z60 z60Var) {
        this.f1788for = i50Var;
        this.f1787do = str;
        this.f1789if = z60Var;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
    public void onError(int i, String str) {
        i50 i50Var = this.f1788for;
        if (i50Var.f1242for) {
            return;
        }
        i50Var.f();
        this.f1788for.m563new(i, str, this.f1787do, this.f1789if);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
    public void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
        i50 i50Var = this.f1788for;
        if (i50Var.f1242for) {
            return;
        }
        i50Var.f2051break = tTRewardVideoAd;
        tTRewardVideoAd.setRewardAdInteractionListener(new Cdo());
        this.f1788for.f();
        this.f1788for.m554finally(this.f1787do, this.f1789if);
        this.f1788for.h(this.f1787do, 8000L, true, this.f1789if);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
    public void onRewardVideoCached() {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
    public void onRewardVideoCached(TTRewardVideoAd tTRewardVideoAd) {
        i50 i50Var = this.f1788for;
        if (i50Var.f1242for || i50Var.f1244new) {
            return;
        }
        i50Var.f2051break = tTRewardVideoAd;
        i50Var.f();
        this.f1788for.c(this.f1787do, this.f1789if);
    }
}
