package com.bytedance.msdk.adapter.gdt;

import android.content.Context;
import com.bytedance.JProtect;
import com.bytedance.msdk.adapter.ad.GMNativeBaseAdapter;
import com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter;
import com.bytedance.msdk.api.v2.slot.GMAdSlotNative;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import com.qq.e.comm.managers.status.SDKStatus;
import java.util.Map;
/* loaded from: classes8.dex */
public class GdtNativeAdapter extends GMNativeBaseAdapter {

    /* renamed from: extends  reason: not valid java name */
    public Context f8519extends;

    /* renamed from: finally  reason: not valid java name */
    public GMAdSlotGDTOption f8520finally;

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public void destroy() {
    }

    @JProtect
    /* renamed from: else  reason: not valid java name */
    public final void m3562else() {
        GdtNativeExpressLoader gdtNativeExpressLoader = new GdtNativeExpressLoader();
        gdtNativeExpressLoader.f8527if = getAdLoadCount();
        gdtNativeExpressLoader.f8523do = getAdSlotId();
        gdtNativeExpressLoader.f8524else = this.mGMAdSlotNative.getWidth();
        this.mGMAdSlotNative.getHeight();
        gdtNativeExpressLoader.f8528new = this.f8520finally;
        gdtNativeExpressLoader.loadAd(this.f8519extends, isClientBidding(), this);
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getAdNetWorkName() {
        return "gdt";
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getSdkVersion() {
        try {
            return SDKStatus.getSDKVersion();
        } catch (Exception unused) {
            return PangleRewardVideoAdapter.VERSION_00;
        }
    }

    @JProtect
    /* renamed from: goto  reason: not valid java name */
    public final void m3563goto() {
        GdtNativeLoader gdtNativeLoader = new GdtNativeLoader();
        gdtNativeLoader.f8546new = getAdLoadCount();
        gdtNativeLoader.f8543for = getAdSlotId();
        GMAdSlotGDTOption gMAdSlotGDTOption = this.f8520finally;
        gdtNativeLoader.f8544goto = gMAdSlotGDTOption;
        if (gMAdSlotGDTOption != null) {
            gdtNativeLoader.f8538break = gMAdSlotGDTOption.getNativeAdLogoParams();
        }
        gdtNativeLoader.loadAd(this.f8519extends, isClientBidding(), this);
    }

    @Override // com.bytedance.msdk.adapter.ad.GMNativeBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @JProtect
    public void loadAd(Context context, Map<String, Object> map) {
        super.loadAd(context, map);
        this.f8519extends = context;
        GMAdSlotNative gMAdSlotNative = this.mGMAdSlotNative;
        if (gMAdSlotNative == null) {
            notifyLoadFailBecauseGMAdSlotIsNull();
        } else if (map != null) {
            this.f8520finally = gMAdSlotNative.getGMAdSlotGDTOption();
            Object obj = map.get("tt_ad_origin_type");
            if (obj != null) {
                int intValue = ((Integer) obj).intValue();
                if (intValue == 1 || intValue == 3) {
                    m3562else();
                    return;
                } else if (intValue == 2) {
                    m3563goto();
                    return;
                }
            }
            int adStyleType = this.mGMAdSlotNative.getAdStyleType();
            if (adStyleType == 1) {
                m3562else();
            } else if (adStyleType == 2) {
                m3563goto();
            }
        }
    }
}
