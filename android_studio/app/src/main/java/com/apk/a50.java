package com.apk;

import android.app.Activity;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import java.util.List;

/* compiled from: CsjProviderInsert.java */
/* loaded from: classes7.dex */
public class a50 implements TTAdNative.NativeExpressAdListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f27do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ Activity f28for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ w60 f29if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ b50 f30new;

    /* compiled from: CsjProviderInsert.java */
    /* renamed from: com.apk.a50$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements TTNativeExpressAd.AdInteractionListener {
        public Cdo() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdClicked(View view, int i) {
            a50 a50Var = a50.this;
            a50Var.f30new.m574this(a50Var.f27do, a50Var.f29if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.AdInteractionListener
        public void onAdDismiss() {
            a50 a50Var = a50.this;
            a50Var.f30new.m575throw(a50Var.f27do, a50Var.f29if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdShow(View view, int i) {
            a50 a50Var = a50.this;
            a50Var.f30new.m569static(a50Var.f27do, a50Var.f29if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderFail(View view, String str, int i) {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderSuccess(View view, float f, float f2) {
            a50 a50Var = a50.this;
            a50Var.f30new.f244case.showInteractionExpressAd(a50Var.f28for);
        }
    }

    public a50(b50 b50Var, String str, w60 w60Var, Activity activity) {
        this.f30new = b50Var;
        this.f27do = str;
        this.f29if = w60Var;
        this.f28for = activity;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
    public void onError(int i, String str) {
        this.f30new.m557if(i, str, this.f27do, this.f29if);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
    public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
        TTNativeExpressAd tTNativeExpressAd;
        if (list != null && list.size() != 0) {
            this.f30new.f244case = list.get(0);
            this.f30new.f244case.setExpressInteractionListener((TTNativeExpressAd.AdInteractionListener) new Cdo());
            this.f30new.m552extends(this.f27do, this.f29if);
            b50 b50Var = this.f30new;
            if (!b50Var.f245try || (tTNativeExpressAd = b50Var.f244case) == null) {
                return;
            }
            tTNativeExpressAd.render();
            return;
        }
        this.f30new.m557if(83008, "请求成功，但是返回的list为空", this.f27do, this.f29if);
    }
}
