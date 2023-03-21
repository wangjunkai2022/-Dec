package com.apk;

import android.app.Activity;
import com.qq.e.ads.interstitial2.UnifiedInterstitialAD;
import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.comm.util.AdError;
/* compiled from: GdtProviderInsert.java */
/* loaded from: classes7.dex */
public class c70 implements UnifiedInterstitialADListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f524do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ Activity f525for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ w60 f526if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ d70 f527new;

    public c70(d70 d70Var, String str, w60 w60Var, Activity activity) {
        this.f527new = d70Var;
        this.f524do = str;
        this.f526if = w60Var;
        this.f525for = activity;
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADClicked() {
        this.f527new.m574this(this.f524do, this.f526if);
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADClosed() {
        this.f527new.m575throw(this.f524do, this.f526if);
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADExposure() {
        this.f527new.m569static(this.f524do, this.f526if);
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADLeftApplication() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADOpened() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onADReceive() {
        this.f527new.m552extends(this.f524do, this.f526if);
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onNoAD(AdError adError) {
        this.f527new.m557if(adError.getErrorCode(), adError.getErrorMsg(), this.f524do, this.f526if);
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onRenderFail() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onRenderSuccess() {
    }

    @Override // com.qq.e.ads.interstitial2.UnifiedInterstitialADListener
    public void onVideoCached() {
        UnifiedInterstitialAD unifiedInterstitialAD;
        d70 d70Var = this.f527new;
        if (d70Var.f833try && (unifiedInterstitialAD = d70Var.f832case) != null && unifiedInterstitialAD.isValid()) {
            d70Var.f832case.show();
        }
    }
}
