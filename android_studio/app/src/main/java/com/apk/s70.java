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

/* compiled from: GmProviderBangDan.java */
/* loaded from: classes7.dex */
public class s70 extends k70 {

    /* renamed from: break  reason: not valid java name */
    public x60 f4285break;

    /* renamed from: catch  reason: not valid java name */
    public GMUnifiedNativeAd f4286catch;

    /* renamed from: class  reason: not valid java name */
    public GMNativeAd f4287class;

    /* renamed from: const  reason: not valid java name */
    public final GMSettingConfigCallback f4288const = new Cif();

    /* renamed from: else  reason: not valid java name */
    public Activity f4289else;

    /* renamed from: goto  reason: not valid java name */
    public String f4290goto;

    /* renamed from: this  reason: not valid java name */
    public String f4291this;

    /* compiled from: GmProviderBangDan.java */
    /* renamed from: com.apk.s70$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements GMNativeAdLoadCallback {

        /* compiled from: GmProviderBangDan.java */
        /* renamed from: com.apk.s70$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        public class C0075do implements GMNativeExpressAdListener {
            public C0075do() {
            }

            @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener
            public void onAdClick() {
                s70 s70Var = s70.this;
                s70Var.m570strictfp(s70Var.f4290goto, s70Var.f4285break);
            }

            @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener
            public void onAdShow() {
                s70 s70Var = s70.this;
                s70Var.m573synchronized(s70Var.f4290goto, s70Var.f4285break);
            }

            @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener
            public void onRenderFail(View view, String str, int i) {
                s70 s70Var = s70.this;
                s70Var.m547const(i, str, s70Var.f4290goto, s70Var.f4285break);
            }

            @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener
            public void onRenderSuccess(float f, float f2) {
                s70 s70Var = s70.this;
                View expressView = s70Var.f4287class.getExpressView();
                s70 s70Var2 = s70.this;
                s70Var.m553final(expressView, s70Var2.f4290goto, s70Var2.f4285break);
            }
        }

        /* compiled from: GmProviderBangDan.java */
        /* renamed from: com.apk.s70$do$if  reason: invalid class name */
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
                    s70 s70Var = s70.this;
                    s70Var.m558implements(s70Var.f4290goto, s70Var.f4285break);
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
            if (list.isEmpty()) {
                s70 s70Var = s70.this;
                s70Var.m547const(83008, "请求成功，但是返回的list为空", s70Var.f4290goto, s70Var.f4285break);
                return;
            }
            s70.this.f4287class = list.get(0);
            s70.this.f4287class.setNativeAdListener(new C0075do());
            if (s70.this.f4287class.hasDislike()) {
                s70 s70Var2 = s70.this;
                s70Var2.f4287class.setDislikeCallback(s70Var2.f4289else, new Cif());
            }
            s70.this.f4287class.render();
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdLoadCallback
        public void onAdLoadedFail(@NonNull AdError adError) {
            s70 s70Var = s70.this;
            s70Var.m547const(adError.code, adError.message, s70Var.f4290goto, s70Var.f4285break);
        }
    }

    /* compiled from: GmProviderBangDan.java */
    /* renamed from: com.apk.s70$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements GMSettingConfigCallback {
        public Cif() {
        }

        @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
        public void configLoad() {
            s70.this.k();
        }
    }

    @Override // com.apk.f70
    public void g(Activity activity, String str, String str2, x60 x60Var) {
        this.f4289else = activity;
        this.f4290goto = str;
        this.f4291this = str2;
        this.f4285break = x60Var;
        if (GMMediationAdSdk.configLoadSuccess()) {
            k();
        } else {
            GMMediationAdSdk.registerConfigCallback(this.f4288const);
        }
    }

    public final void k() {
        b(this.f4290goto);
        GMAdSlotNative build = new GMAdSlotNative.Builder().setGMAdSlotBaiduOption(GMAdOptionUtil.getGMAdSlotBaiduOption().build()).setGMAdSlotGDTOption(GMAdOptionUtil.getGMAdSlotGDTOption().setNativeAdLogoParams(new FrameLayout.LayoutParams(r70.m2248if(40.0f), r70.m2248if(13.0f), 53)).build()).setAdmobNativeAdOptions(GMAdOptionUtil.getAdmobNativeAdOptions()).setAdStyleType(1).setImageAdSize(r70.m2247for(j()), r70.m2247for(this.f2488case)).setAdCount(1).setDownloadType(i()).build();
        GMUnifiedNativeAd gMUnifiedNativeAd = new GMUnifiedNativeAd(this.f4289else, this.f4291this);
        this.f4286catch = gMUnifiedNativeAd;
        gMUnifiedNativeAd.loadAd(build, new Cdo());
    }
}
