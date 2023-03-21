package com.apk;

import com.qq.e.ads.nativ.NativeADEventListener;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.qq.e.comm.util.AdError;
/* compiled from: TrGdtNativeUnifiedAD.java */
/* loaded from: classes7.dex */
public class u50 implements NativeADEventListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NativeUnifiedADData f4846do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ t50 f4847if;

    public u50(t50 t50Var, NativeUnifiedADData nativeUnifiedADData) {
        this.f4847if = t50Var;
        this.f4846do = nativeUnifiedADData;
    }

    @Override // com.qq.e.ads.nativ.NativeADEventListener
    public void onADClicked() {
        x60 x60Var = this.f4847if.f4649if;
        if (x60Var != null) {
            x60Var.onAdClick();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeADEventListener
    public void onADError(AdError adError) {
        x60 x60Var = this.f4847if.f4649if;
        if (x60Var != null) {
            x60Var.mo159if(adError.getErrorCode(), adError.getErrorMsg());
        }
    }

    @Override // com.qq.e.ads.nativ.NativeADEventListener
    public void onADExposed() {
        x60 x60Var = this.f4847if.f4649if;
        if (x60Var != null) {
            x60Var.mo164do();
        }
    }

    @Override // com.qq.e.ads.nativ.NativeADEventListener
    public void onADStatusChanged() {
        t50.m2578if(this.f4847if.f4648goto, this.f4846do);
    }
}
