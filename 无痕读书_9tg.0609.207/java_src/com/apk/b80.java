package com.apk;

import android.app.Activity;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;
/* compiled from: CsjProviderBanner.java */
/* loaded from: classes7.dex */
public class b80 implements TTAdNative.NativeExpressAdListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f265do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ Activity f266for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ x60 f267if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ d80 f268new;

    /* compiled from: CsjProviderBanner.java */
    /* renamed from: com.apk.b80$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements TTNativeExpressAd.ExpressAdInteractionListener {
        public Cdo() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdClicked(View view, int i) {
            b80 b80Var = b80.this;
            b80Var.f268new.m543break(b80Var.f265do, b80Var.f267if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdShow(View view, int i) {
            b80 b80Var = b80.this;
            b80Var.f268new.m572switch(b80Var.f265do, b80Var.f267if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderFail(View view, String str, int i) {
            b80.this.f268new.j();
            b80 b80Var = b80.this;
            b80Var.f268new.m555for(-1, "", b80Var.f265do, b80Var.f267if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderSuccess(View view, float f, float f2) {
            b80 b80Var = b80.this;
            b80Var.f268new.m544case(view, b80Var.f265do, b80Var.f267if);
        }
    }

    /* compiled from: CsjProviderBanner.java */
    /* renamed from: com.apk.b80$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements TTAdDislike.DislikeInteractionCallback {
        public Cif() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onCancel() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onSelected(int i, String str, boolean z) {
            if (TrAdSdk.isOpenAdClose()) {
                b80.this.f268new.j();
                b80 b80Var = b80.this;
                b80Var.f268new.m580while(b80Var.f265do, b80Var.f267if);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onShow() {
        }
    }

    public b80(d80 d80Var, String str, x60 x60Var, Activity activity) {
        this.f268new = d80Var;
        this.f265do = str;
        this.f267if = x60Var;
        this.f266for = activity;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
    public void onError(int i, String str) {
        this.f268new.j();
        this.f268new.m555for(i, str, this.f265do, this.f267if);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
    public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
        if (list != null && list.size() != 0) {
            this.f268new.f835try = list.get(0);
            this.f268new.f835try.setSlideIntervalTime(0);
            this.f268new.f835try.setExpressInteractionListener(new Cdo());
            this.f268new.f835try.setDislikeCallback(this.f266for, new Cif());
            this.f268new.f835try.render();
            return;
        }
        this.f268new.m555for(83008, "请求成功，但是返回的list为空", this.f265do, this.f267if);
    }
}
