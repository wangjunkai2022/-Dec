package com.apk;

import com.qq.e.ads.banner2.UnifiedBannerADListener;
import com.qq.e.comm.util.AdError;
import com.swl.gg.sdk.TrAdSdk;
/* compiled from: GdtProviderBanner.java */
/* loaded from: classes7.dex */
public class k60 implements UnifiedBannerADListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2482do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ l60 f2483for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ x60 f2484if;

    public k60(l60 l60Var, String str, x60 x60Var) {
        this.f2483for = l60Var;
        this.f2482do = str;
        this.f2484if = x60Var;
    }

    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
    public void onADClicked() {
        this.f2483for.m543break(this.f2482do, this.f2484if);
    }

    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
    public void onADClosed() {
        if (TrAdSdk.isOpenAdClose()) {
            this.f2483for.j();
            this.f2483for.m580while(this.f2482do, this.f2484if);
        }
    }

    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
    public void onADExposure() {
        this.f2483for.m572switch(this.f2482do, this.f2484if);
    }

    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
    public void onADLeftApplication() {
    }

    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
    public void onADReceive() {
        l60 l60Var = this.f2483for;
        l60Var.m544case(l60Var.f2761try, this.f2482do, this.f2484if);
    }

    @Override // com.qq.e.ads.banner2.UnifiedBannerADListener
    public void onNoAD(AdError adError) {
        this.f2483for.j();
        this.f2483for.m555for(adError.getErrorCode(), adError.getErrorMsg(), this.f2482do, this.f2484if);
    }
}
