package com.apk;

import android.view.View;
import com.qq.e.ads.nativ.NativeUnifiedADData;
import com.swl.gg.sdk.TrAdSdk;
/* compiled from: GdtProviderBannerNative.java */
/* loaded from: classes7.dex */
public class o60 implements x60 {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f3365do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ p60 f3366for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ x60 f3367if;

    public o60(p60 p60Var, String str, x60 x60Var) {
        this.f3366for = p60Var;
        this.f3365do = str;
        this.f3367if = x60Var;
    }

    @Override // com.apk.b70
    /* renamed from: case */
    public void mo157case() {
    }

    @Override // com.apk.x60
    /* renamed from: do */
    public void mo164do() {
        this.f3366for.m572switch(this.f3365do, this.f3367if);
    }

    @Override // com.apk.b70
    /* renamed from: else */
    public void mo158else() {
    }

    @Override // com.apk.x60
    /* renamed from: goto */
    public void mo1184goto() {
        if (TrAdSdk.isOpenAdClose()) {
            p60 p60Var = this.f3366for;
            w50 w50Var = p60Var.f3588case;
            if (w50Var != null) {
                NativeUnifiedADData nativeUnifiedADData = w50Var.f4645do;
                if (nativeUnifiedADData != null) {
                    nativeUnifiedADData.destroy();
                    w50Var.f4645do = null;
                }
                w50Var.removeAllViews();
                p60Var.f3588case = null;
            }
            this.f3366for.m580while(this.f3365do, this.f3367if);
        }
    }

    @Override // com.apk.b70
    /* renamed from: if */
    public void mo159if(int i, String str) {
        this.f3366for.m555for(i, str, this.f3365do, this.f3367if);
    }

    @Override // com.apk.x60
    /* renamed from: new */
    public void mo165new(View view) {
        this.f3366for.m544case(view, this.f3365do, this.f3367if);
    }

    @Override // com.apk.x60
    public void onAdClick() {
        this.f3366for.m543break(this.f3365do, this.f3367if);
    }
}
