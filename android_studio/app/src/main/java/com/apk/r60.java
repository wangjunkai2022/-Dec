package com.apk;

import com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener;
import com.qq.e.comm.util.AdError;

/* compiled from: GdtProviderFullVideo.java */
/* loaded from: classes7.dex */
public class r60 implements UnifiedInterstitialMediaListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f4007do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ s60 f4008for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ v60 f4009if;

    public r60(s60 s60Var, String str, v60 v60Var) {
        this.f4008for = s60Var;
        this.f4007do = str;
        this.f4009if = v60Var;
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
    public void onVideoComplete() {
        s60 s60Var = this.f4008for;
        if (s60Var.f1242for) {
            return;
        }
        s60Var.m549default(this.f4007do);
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
    public void onVideoError(AdError adError) {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
    public void onVideoInit() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
    public void onVideoLoading() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
    public void onVideoPageClose() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
    public void onVideoPageOpen() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
    public void onVideoPause() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
    public void onVideoReady(long j) {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener
    public void onVideoStart() {
    }
}
