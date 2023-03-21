package com.apk;

import android.app.Activity;
import android.view.View;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;

/* compiled from: CsjProviderBangDan.java */
/* loaded from: classes7.dex */
public class z70 extends k70 {

    /* renamed from: else  reason: not valid java name */
    public TTNativeExpressAd f6139else;

    /* compiled from: CsjProviderBangDan.java */
    /* renamed from: com.apk.z70$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements TTAdNative.NativeExpressAdListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f6140do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ Activity f6141for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ x60 f6142if;

        /* compiled from: CsjProviderBangDan.java */
        /* renamed from: com.apk.z70$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        public class C0078do implements TTNativeExpressAd.ExpressAdInteractionListener {
            public C0078do() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdClicked(View view, int i) {
                Cdo cdo = Cdo.this;
                z70.this.m570strictfp(cdo.f6140do, cdo.f6142if);
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdShow(View view, int i) {
                Cdo cdo = Cdo.this;
                z70.this.m573synchronized(cdo.f6140do, cdo.f6142if);
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderFail(View view, String str, int i) {
                z70.this.k();
                Cdo cdo = Cdo.this;
                z70.this.m547const(i, str, cdo.f6140do, cdo.f6142if);
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderSuccess(View view, float f, float f2) {
                Cdo cdo = Cdo.this;
                z70.this.m553final(view, cdo.f6140do, cdo.f6142if);
            }
        }

        /* compiled from: CsjProviderBangDan.java */
        /* renamed from: com.apk.z70$do$if  reason: invalid class name */
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
                    z70.this.k();
                    Cdo cdo = Cdo.this;
                    z70.this.m558implements(cdo.f6140do, cdo.f6142if);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public void onShow() {
            }
        }

        public Cdo(String str, x60 x60Var, Activity activity) {
            this.f6140do = str;
            this.f6142if = x60Var;
            this.f6141for = activity;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
        public void onError(int i, String str) {
            z70.this.m547const(i, str, this.f6140do, this.f6142if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
        public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
            if (list != null && list.size() != 0) {
                z70.this.f6139else = list.get(0);
                z70.this.f6139else.setExpressInteractionListener(new C0078do());
                z70.this.f6139else.setDislikeCallback(this.f6141for, new Cif());
                z70.this.f6139else.render();
                return;
            }
            z70.this.m547const(83008, "请求成功，但是返回的list为空", this.f6140do, this.f6142if);
        }
    }

    @Override // com.apk.f70
    public void g(Activity activity, String str, String str2, x60 x60Var) {
        b(str);
        k40.m1454new(activity).loadNativeExpressAd(new AdSlot.Builder().setCodeId(str2).setAdCount(1).setSupportDeepLink(true).setExpressViewAcceptedSize(r70.m2247for(j()), r70.m2247for(this.f2488case)).build(), new Cdo(str, x60Var, activity));
    }

    public void k() {
        TTNativeExpressAd tTNativeExpressAd = this.f6139else;
        if (tTNativeExpressAd != null) {
            tTNativeExpressAd.destroy();
            this.f6139else = null;
        }
    }
}
