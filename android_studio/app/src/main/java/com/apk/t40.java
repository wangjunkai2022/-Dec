package com.apk;

import android.app.Activity;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;

/* compiled from: CsjProviderBannerList.java */
/* loaded from: classes7.dex */
public class t40 implements TTAdNative.NativeExpressAdListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f4636do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ Activity f4637for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ x60 f4638if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ u40 f4639new;

    /* compiled from: CsjProviderBannerList.java */
    /* renamed from: com.apk.t40$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements TTNativeExpressAd.ExpressAdInteractionListener {
        public Cdo() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdClicked(View view, int i) {
            t40 t40Var = t40.this;
            t40Var.f4639new.m543break(t40Var.f4636do, t40Var.f4638if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onAdShow(View view, int i) {
            t40 t40Var = t40.this;
            t40Var.f4639new.m572switch(t40Var.f4636do, t40Var.f4638if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderFail(View view, String str, int i) {
            t40.this.f4639new.j();
            t40 t40Var = t40.this;
            t40Var.f4639new.m555for(i, str, t40Var.f4636do, t40Var.f4638if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
        public void onRenderSuccess(View view, float f, float f2) {
            t40 t40Var = t40.this;
            t40Var.f4639new.m544case(view, t40Var.f4636do, t40Var.f4638if);
        }
    }

    /* compiled from: CsjProviderBannerList.java */
    /* renamed from: com.apk.t40$if  reason: invalid class name */
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
                t40.this.f4639new.j();
                t40 t40Var = t40.this;
                t40Var.f4639new.m580while(t40Var.f4636do, t40Var.f4638if);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
        public void onShow() {
        }
    }

    public t40(u40 u40Var, String str, x60 x60Var, Activity activity) {
        this.f4639new = u40Var;
        this.f4636do = str;
        this.f4638if = x60Var;
        this.f4637for = activity;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
    public void onError(int i, String str) {
        this.f4639new.j();
        this.f4639new.m555for(i, str, this.f4636do, this.f4638if);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
    public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
        if (list != null && list.size() != 0) {
            this.f4639new.f4845try = list.get(0);
            this.f4639new.f4845try.setExpressInteractionListener(new Cdo());
            this.f4639new.f4845try.setDislikeCallback(this.f4637for, new Cif());
            this.f4639new.f4845try.render();
            return;
        }
        this.f4639new.m555for(83008, "请求成功，但是返回的list为空", this.f4636do, this.f4638if);
    }
}
