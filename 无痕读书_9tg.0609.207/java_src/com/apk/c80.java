package com.apk;

import android.app.Activity;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.GMDislikeCallback;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdLoadCallback;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMUnifiedNativeAd;
import com.bytedance.msdk.api.v2.slot.GMAdOptionUtil;
import com.bytedance.msdk.api.v2.slot.GMAdSlotNative;
import com.swl.gg.sdk.TrAdSdk;
import java.util.List;
/* compiled from: GmProviderRectangle.java */
/* loaded from: classes7.dex */
public class c80 extends k70 {

    /* renamed from: break  reason: not valid java name */
    public x60 f529break;

    /* renamed from: catch  reason: not valid java name */
    public GMNativeAd f530catch;

    /* renamed from: class  reason: not valid java name */
    public final GMSettingConfigCallback f531class = new Cif();

    /* renamed from: else  reason: not valid java name */
    public Activity f532else;

    /* renamed from: goto  reason: not valid java name */
    public String f533goto;

    /* renamed from: this  reason: not valid java name */
    public String f534this;

    /* compiled from: GmProviderRectangle.java */
    /* renamed from: com.apk.c80$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements GMNativeAdLoadCallback {

        /* compiled from: GmProviderRectangle.java */
        /* renamed from: com.apk.c80$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        public class C0062do implements GMNativeExpressAdListener {
            public C0062do() {
            }

            @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener
            public void onAdClick() {
                c80 c80Var = c80.this;
                c80Var.m570strictfp(c80Var.f533goto, c80Var.f529break);
            }

            @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener
            public void onAdShow() {
                c80 c80Var = c80.this;
                c80Var.m573synchronized(c80Var.f533goto, c80Var.f529break);
            }

            @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener
            public void onRenderFail(View view, String str, int i) {
                c80 c80Var = c80.this;
                c80Var.m547const(i, str, c80Var.f533goto, c80Var.f529break);
            }

            @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener
            public void onRenderSuccess(float f, float f2) {
                c80 c80Var = c80.this;
                View expressView = c80Var.f530catch.getExpressView();
                c80 c80Var2 = c80.this;
                c80Var.m553final(expressView, c80Var2.f533goto, c80Var2.f529break);
            }
        }

        /* compiled from: GmProviderRectangle.java */
        /* renamed from: com.apk.c80$do$if  reason: invalid class name */
        /* loaded from: classes7.dex */
        public class Cif implements GMDislikeCallback {
            public Cif() {
            }

            @Override // com.bytedance.msdk.api.v2.GMDislikeCallback
            public void onCancel() {
            }

            @Override // com.bytedance.msdk.api.v2.GMDislikeCallback
            public void onRefuse() {
            }

            @Override // com.bytedance.msdk.api.v2.GMDislikeCallback
            public void onSelected(int i, String str) {
                if (TrAdSdk.isOpenAdClose()) {
                    c80 c80Var = c80.this;
                    c80Var.m558implements(c80Var.f533goto, c80Var.f529break);
                }
            }

            @Override // com.bytedance.msdk.api.v2.GMDislikeCallback
            public void onShow() {
            }
        }

        public Cdo() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdLoadCallback
        public void onAdLoaded(List<GMNativeAd> list) {
            if (list.size() == 0) {
                c80 c80Var = c80.this;
                c80Var.m547const(83008, "请求成功，但是返回的list为空", c80Var.f533goto, c80Var.f529break);
                return;
            }
            c80.this.f530catch = list.get(0);
            c80.this.f530catch.setNativeAdListener(new C0062do());
            if (c80.this.f530catch.hasDislike()) {
                c80 c80Var2 = c80.this;
                c80Var2.f530catch.setDislikeCallback(c80Var2.f532else, new Cif());
            }
            c80.this.f530catch.render();
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdLoadCallback
        public void onAdLoadedFail(@NonNull AdError adError) {
            c80 c80Var = c80.this;
            c80Var.m547const(adError.code, adError.message, c80Var.f533goto, c80Var.f529break);
        }
    }

    /* compiled from: GmProviderRectangle.java */
    /* renamed from: com.apk.c80$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements GMSettingConfigCallback {
        public Cif() {
        }

        @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
        public void configLoad() {
            c80.this.k();
        }
    }

    @Override // com.apk.f70
    public void g(Activity activity, String str, String str2, x60 x60Var) {
        this.f532else = activity;
        this.f533goto = str;
        this.f534this = str2;
        this.f529break = x60Var;
        if (GMMediationAdSdk.configLoadSuccess()) {
            k();
        } else {
            GMMediationAdSdk.registerConfigCallback(this.f531class);
        }
    }

    public final void k() {
        b(this.f533goto);
        new GMUnifiedNativeAd(this.f532else, this.f534this).loadAd(new GMAdSlotNative.Builder().setGMAdSlotBaiduOption(GMAdOptionUtil.getGMAdSlotBaiduOption().build()).setGMAdSlotGDTOption(GMAdOptionUtil.getGMAdSlotGDTOption().setNativeAdLogoParams(new FrameLayout.LayoutParams(r70.m2248if(40.0f), r70.m2248if(13.0f), 53)).build()).setAdmobNativeAdOptions(GMAdOptionUtil.getAdmobNativeAdOptions()).setAdStyleType(1).setImageAdSize(r70.m2247for(j()), r70.m2247for(this.f2488case)).setAdCount(1).setDownloadType(i()).build(), new Cdo());
    }
}
