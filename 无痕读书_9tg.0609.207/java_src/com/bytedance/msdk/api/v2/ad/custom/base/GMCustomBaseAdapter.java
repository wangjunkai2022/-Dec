package com.bytedance.msdk.api.v2.ad.custom.base;

import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomTTAbsAdLoaderAdapter;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomServiceConfig;
import com.bytedance.msdk.api.v2.ad.custom.init.GMCustomAdapterConfiguration;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.Map;
/* loaded from: classes8.dex */
public abstract class GMCustomBaseAdapter {
    public static final int CLICK_TIMES = 60;
    public static final int SHOW_TIMES = 2;

    /* renamed from: else  reason: not valid java name */
    public Map<String, Object> f9105else;

    /* renamed from: for  reason: not valid java name */
    public TTAbsAdLoaderAdapter f9106for;

    /* renamed from: if  reason: not valid java name */
    public i f9107if;

    /* renamed from: new  reason: not valid java name */
    public GMCustomAd f9108new;

    /* renamed from: do  reason: not valid java name */
    public boolean f9104do = false;

    /* renamed from: try  reason: not valid java name */
    public int f9109try = 0;

    /* renamed from: case  reason: not valid java name */
    public int f9103case = 0;

    /* loaded from: classes8.dex */
    public interface CheckCallback {
        void callback();
    }

    public final void checkClick(CheckCallback checkCallback) {
        int i = this.f9103case;
        if (i < 60) {
            this.f9103case = i + 1;
            if (checkCallback != null) {
                checkCallback.callback();
                return;
            }
            return;
        }
        Logger.e("TTMediationSDK", "自定义Adapter click方法回调次数需要小于60次");
    }

    public final void checkLoadSuccess(CheckCallback checkCallback) {
        if (!isCallLoadSuccessCall()) {
            Logger.e("TTMediationSDK", "自定义Adapter 调用错误需要在load成功之后才可以调用");
        } else if (checkCallback != null) {
            checkCallback.callback();
        }
    }

    public final void checkShow(CheckCallback checkCallback) {
        if (this.f9104do) {
            int i = this.f9109try;
            if (i < 2) {
                this.f9109try = i + 1;
                if (checkCallback != null) {
                    checkCallback.callback();
                    return;
                }
                return;
            }
            Logger.e("TTMediationSDK", "自定义Adapter show方法回调次数需要小于2次");
            return;
        }
        Logger.e("TTMediationSDK", "自定义Adapter show方法回调必须由GroMore触发show时才会生效");
    }

    public final String getAdm() {
        TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
        return tTAbsAdLoaderAdapter == null ? "" : tTAbsAdLoaderAdapter.getAdm();
    }

    public final int getBiddingType() {
        TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
        if (tTAbsAdLoaderAdapter == null) {
            return 0;
        }
        return tTAbsAdLoaderAdapter.getReqBiddingType();
    }

    public final String getCustomADNName() {
        i iVar = this.f9107if;
        return iVar == null ? "" : iVar.e();
    }

    public final boolean isCallLoadFailCall() {
        TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
        if (tTAbsAdLoaderAdapter != null) {
            return tTAbsAdLoaderAdapter.hasNotifyFail();
        }
        return false;
    }

    public final boolean isCallLoadSuccessCall() {
        TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
        if (tTAbsAdLoaderAdapter != null) {
            return tTAbsAdLoaderAdapter.hasNotifySuccess();
        }
        return false;
    }

    public GMAdConstant.AdIsReadyStatus isReadyStatus() {
        return GMAdConstant.AdIsReadyStatus.ADN_NO_READY_API;
    }

    public final GMAdConstant.AdIsReadyStatus isReadyStatusInner() {
        try {
            return isReadyStatus();
        } catch (Exception e) {
            e.printStackTrace();
            return GMAdConstant.AdIsReadyStatus.ADN_NO_READY_API;
        }
    }

    public abstract void loadCustom(Context context, GMAdSlotBase gMAdSlotBase, GMCustomServiceConfig gMCustomServiceConfig);

    public final void loadInner(Context context, AdSlot adSlot, final GMAdSlotBase gMAdSlotBase, final i iVar, Map<String, Object> map, h hVar, int i, TTAbsAdLoaderAdapter.AdapterLoaderListener adapterLoaderListener) {
        StringBuilder m1016super = Cgoto.m1016super("自定义ADN 开始加载广告对象 ----------   adSlot = ");
        m1016super.append(iVar.d());
        Logger.e("TTMediationSDK_SDK_Init", m1016super.toString());
        this.f9107if = iVar;
        map.put("const_is_custom", Boolean.TRUE);
        GMCustomTTAbsAdLoaderAdapter gMCustomTTAbsAdLoaderAdapter = new GMCustomTTAbsAdLoaderAdapter() { // from class: com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.1
            @Override // com.bytedance.msdk.api.v2.ad.custom.GMCustomTTAbsAdLoaderAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
            public String getAdNetWorkName() {
                i iVar2 = iVar;
                if (iVar2 != null) {
                    return iVar2.e();
                }
                return super.getAdNetWorkName();
            }

            @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
            public void loadAd(final Context context2, Map<String, Object> map2) {
                final GMCustomServiceConfig gMCustomServiceConfig = new GMCustomServiceConfig(GMCustomBaseAdapter.this.getCustomADNName(), iVar.d(), iVar.s(), iVar.z(), iVar.g());
                GMCustomAdapterConfiguration a2 = a.a(iVar.e());
                this.f9083extends = a2 != null ? a2.getNetworkSdkVersion() : "";
                ThreadHelper.runOnThreadPool(new Runnable() { // from class: com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        GMCustomBaseAdapter.this.loadCustom(context2, gMAdSlotBase, gMCustomServiceConfig);
                    }
                });
            }
        };
        this.f9106for = gMCustomTTAbsAdLoaderAdapter;
        gMCustomTTAbsAdLoaderAdapter.setAdapterListener(adapterLoaderListener);
        this.f9106for.loadAdInter(context, iVar, map, adSlot, hVar, i, gMAdSlotBase);
    }

    public final void nativeDislikeClick(TTBaseAd tTBaseAd, String str) {
        TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = this.f9106for;
        if (tTAbsAdLoaderAdapter != null) {
            tTAbsAdLoaderAdapter.nativeDislikeClick(tTBaseAd, str, null);
        }
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void receiveBidResult(boolean z, double d, int i, Map<String, Object> map) {
    }
}
