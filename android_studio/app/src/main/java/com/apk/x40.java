package com.apk;

import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;

/* compiled from: CsjProviderFullVideo.java */
/* loaded from: classes7.dex */
public class x40 implements TTAdNative.FullScreenVideoAdListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f5477do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ y40 f5478for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ v60 f5479if;

    /* compiled from: CsjProviderFullVideo.java */
    /* renamed from: com.apk.x40$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements TTFullScreenVideoAd.FullScreenVideoAdInteractionListener {
        public Cdo() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdClose() {
            x40 x40Var = x40.this;
            y40 y40Var = x40Var.f5478for;
            if (y40Var.f1242for) {
                return;
            }
            y40Var.m568return(x40Var.f5477do, x40Var.f5479if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdShow() {
            y40 y40Var = x40.this.f5478for;
            if (y40Var.f1242for) {
                return;
            }
            y40Var.l();
            x40 x40Var = x40.this;
            x40Var.f5478for.m577transient(x40Var.f5477do, x40Var.f5479if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onAdVideoBarClick() {
            x40 x40Var = x40.this;
            y40 y40Var = x40Var.f5478for;
            if (y40Var.f1242for) {
                return;
            }
            y40Var.m571super(x40Var.f5477do, x40Var.f5479if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onSkippedVideo() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd.FullScreenVideoAdInteractionListener
        public void onVideoComplete() {
            x40 x40Var = x40.this;
            y40 y40Var = x40Var.f5478for;
            if (y40Var.f1242for) {
                return;
            }
            y40Var.m549default(x40Var.f5477do);
        }
    }

    public x40(y40 y40Var, String str, v60 v60Var) {
        this.f5478for = y40Var;
        this.f5477do = str;
        this.f5479if = v60Var;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
    public void onError(int i, String str) {
        y40 y40Var = this.f5478for;
        if (y40Var.f1242for) {
            return;
        }
        y40Var.f();
        this.f5478for.m550do(i, str, this.f5477do, this.f5479if);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public void onFullScreenVideoAdLoad(TTFullScreenVideoAd tTFullScreenVideoAd) {
        y40 y40Var = this.f5478for;
        if (y40Var.f1242for) {
            return;
        }
        y40Var.f5861catch = tTFullScreenVideoAd;
        tTFullScreenVideoAd.setFullScreenVideoAdInteractionListener(new Cdo());
        this.f5478for.f();
        this.f5478for.m548continue(this.f5477do, this.f5479if);
        this.f5478for.h(this.f5477do, 8000L, true, this.f5479if);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public void onFullScreenVideoCached() {
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.FullScreenVideoAdListener
    public void onFullScreenVideoCached(TTFullScreenVideoAd tTFullScreenVideoAd) {
        y40 y40Var = this.f5478for;
        if (y40Var.f1242for || y40Var.f1244new) {
            return;
        }
        y40Var.f5861catch = tTFullScreenVideoAd;
        y40Var.f();
        this.f5478for.m556goto(this.f5477do, this.f5479if);
    }
}
