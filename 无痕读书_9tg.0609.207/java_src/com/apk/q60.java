package com.apk;

import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.comm.util.AdError;
/* compiled from: GdtProviderFullVideo.java */
/* loaded from: classes7.dex */
public class q60 implements UnifiedInterstitialADListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f3815do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ s60 f3816for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ v60 f3817if;

    public q60(s60 s60Var, String str, v60 v60Var) {
        this.f3816for = s60Var;
        this.f3815do = str;
        this.f3817if = v60Var;
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADClicked() {
        s60 s60Var = this.f3816for;
        if (s60Var.f1242for) {
            return;
        }
        s60Var.m571super(this.f3815do, this.f3817if);
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADClosed() {
        s60 s60Var = this.f3816for;
        if (s60Var.f1242for) {
            return;
        }
        s60Var.m568return(this.f3815do, this.f3817if);
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADExposure() {
        s60 s60Var = this.f3816for;
        if (s60Var.f1242for) {
            return;
        }
        s60Var.m577transient(this.f3815do, this.f3817if);
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADLeftApplication() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADOpened() {
        this.f3816for.l();
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADReceive() {
        s60 s60Var = this.f3816for;
        if (s60Var.f1242for) {
            return;
        }
        s60Var.f();
        this.f3816for.m548continue(this.f3815do, this.f3817if);
        this.f3816for.h(this.f3815do, 8000L, true, this.f3817if);
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onNoAD(AdError adError) {
        s60 s60Var = this.f3816for;
        if (s60Var.f1242for) {
            return;
        }
        s60Var.f();
        this.f3816for.m550do(adError.getErrorCode(), adError.getErrorMsg(), this.f3815do, this.f3817if);
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onRenderFail() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onRenderSuccess() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onVideoCached() {
        s60 s60Var = this.f3816for;
        if (s60Var.f1242for || s60Var.f1244new) {
            return;
        }
        s60Var.f();
        this.f3816for.m556goto(this.f3815do, this.f3817if);
    }
}
