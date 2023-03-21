package com.bytedance.msdk.api.nativeAd;

import android.content.Context;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.h;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.v2.ad.AdUtils;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdLoadCallback;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeUtil;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* loaded from: classes8.dex */
public class TTUnifiedNativeAd implements GMNativeAdLoadCallback {

    /* renamed from: do  reason: not valid java name */
    public h f8987do;

    /* renamed from: if  reason: not valid java name */
    public TTNativeAdLoadCallback f8988if;

    public TTUnifiedNativeAd(Context context, String str) {
        this.f8987do = new h(context, str);
    }

    public void destroy() {
        h hVar = this.f8987do;
        if (hVar != null) {
            hVar.B();
        }
    }

    public List<AdLoadInfo> getAdLoadInfoList() {
        h hVar = this.f8987do;
        if (hVar != null) {
            return hVar.C();
        }
        return new ArrayList();
    }

    public List<GMAdEcpmInfo> getCacheList() {
        h hVar = this.f8987do;
        if (hVar != null) {
            return hVar.c();
        }
        return null;
    }

    public List<GMAdEcpmInfo> getMultiBiddingEcpm() {
        h hVar = this.f8987do;
        if (hVar != null) {
            return hVar.f();
        }
        return null;
    }

    public void loadAd(AdSlot adSlot, TTNativeAdLoadCallback tTNativeAdLoadCallback) {
        this.f8988if = tTNativeAdLoadCallback;
        if (this.f8987do != null) {
            if (!a.f().a(this.f8987do.l(), 5) && tTNativeAdLoadCallback != null) {
                tTNativeAdLoadCallback.onAdLoadedFial(new AdError(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME)));
                return;
            }
            if (adSlot != null) {
                if (adSlot.getAdStyleType() == 1) {
                    if (!a.f().x()) {
                        if (tTNativeAdLoadCallback != null) {
                            tTNativeAdLoadCallback.onAdLoadedFial(new AdError(AdError.ERROR_CODE_FEED_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_FEED_MODULE_UNABLE)));
                            return;
                        }
                        return;
                    }
                } else if (adSlot.getAdStyleType() == 2 && !a.f().B()) {
                    if (tTNativeAdLoadCallback != null) {
                        tTNativeAdLoadCallback.onAdLoadedFial(new AdError(AdError.ERROR_CODE_NATIVE_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_NATIVE_MODULE_UNABLE)));
                        return;
                    }
                    return;
                }
            }
            this.f8987do.a(adSlot, AdUtils.getAdSlotNative(adSlot), this);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdLoadCallback
    public void onAdLoaded(@NonNull List<GMNativeAd> list) {
        TTNativeAdLoadCallback tTNativeAdLoadCallback = this.f8988if;
        if (tTNativeAdLoadCallback != null) {
            tTNativeAdLoadCallback.onAdLoaded(GMNativeUtil.GMsToTTs(list));
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdLoadCallback
    public void onAdLoadedFail(@NonNull AdError adError) {
        TTNativeAdLoadCallback tTNativeAdLoadCallback = this.f8988if;
        if (tTNativeAdLoadCallback != null) {
            tTNativeAdLoadCallback.onAdLoadedFial(adError);
        }
    }
}
