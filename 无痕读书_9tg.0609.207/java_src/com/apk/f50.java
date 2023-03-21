package com.apk;

import android.app.Activity;
import android.view.View;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;
/* compiled from: CsjProviderRectangle.java */
/* loaded from: classes7.dex */
public class f50 extends k70 {

    /* renamed from: else  reason: not valid java name */
    public TTNativeExpressAd f1229else;

    /* compiled from: CsjProviderRectangle.java */
    /* renamed from: com.apk.f50$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements TTAdNative.NativeExpressAdListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f1230do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ Activity f1231for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ x60 f1232if;

        /* compiled from: CsjProviderRectangle.java */
        /* renamed from: com.apk.f50$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        public class C0065do implements TTNativeExpressAd.ExpressAdInteractionListener {
            public C0065do() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdClicked(View view, int i) {
                Cdo cdo = Cdo.this;
                f50.this.m570strictfp(cdo.f1230do, cdo.f1232if);
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdShow(View view, int i) {
                Cdo cdo = Cdo.this;
                f50.this.m573synchronized(cdo.f1230do, cdo.f1232if);
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderFail(View view, String str, int i) {
                f50 f50Var = f50.this;
                TTNativeExpressAd tTNativeExpressAd = f50Var.f1229else;
                if (tTNativeExpressAd != null) {
                    tTNativeExpressAd.destroy();
                    f50Var.f1229else = null;
                }
                Cdo cdo = Cdo.this;
                f50.this.m547const(i, str, cdo.f1230do, cdo.f1232if);
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderSuccess(View view, float f, float f2) {
                Cdo cdo = Cdo.this;
                f50.this.m553final(view, cdo.f1230do, cdo.f1232if);
            }
        }

        /* compiled from: CsjProviderRectangle.java */
        /* renamed from: com.apk.f50$do$if  reason: invalid class name */
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
                    f50 f50Var = f50.this;
                    TTNativeExpressAd tTNativeExpressAd = f50Var.f1229else;
                    if (tTNativeExpressAd != null) {
                        tTNativeExpressAd.destroy();
                        f50Var.f1229else = null;
                    }
                    Cdo cdo = Cdo.this;
                    f50.this.m558implements(cdo.f1230do, cdo.f1232if);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdDislike.DislikeInteractionCallback
            public void onShow() {
            }
        }

        public Cdo(String str, x60 x60Var, Activity activity) {
            this.f1230do = str;
            this.f1232if = x60Var;
            this.f1231for = activity;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
        public void onError(int i, String str) {
            f50.this.m547const(i, str, this.f1230do, this.f1232if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.NativeExpressAdListener
        public void onNativeExpressAdLoad(List<TTNativeExpressAd> list) {
            if (list != null && list.size() != 0) {
                f50.this.f1229else = list.get(0);
                f50.this.f1229else.setExpressInteractionListener(new C0065do());
                f50.this.f1229else.setDislikeCallback(this.f1231for, new Cif());
                f50.this.f1229else.render();
                return;
            }
            f50.this.m547const(83008, "请求成功，但是返回的list为空", this.f1230do, this.f1232if);
        }
    }

    @Override // com.apk.f70
    public void g(Activity activity, String str, String str2, x60 x60Var) {
        b(str);
        k40.m1454new(activity).loadNativeExpressAd(new AdSlot.Builder().setCodeId(str2).setSupportDeepLink(true).setAdCount(1).setExpressViewAcceptedSize(r70.m2247for(j()), r70.m2247for(this.f2488case)).build(), new Cdo(str, x60Var, activity));
    }
}
