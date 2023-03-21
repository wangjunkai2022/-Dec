package com.bytedance.msdk.api.v2.ad.nativeAd;

import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.h;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.v2.ad.GMAdTokenCallback;
import com.bytedance.msdk.api.v2.ad.GMBaseAd;
import com.bytedance.msdk.api.v2.slot.GMAdSlotNative;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes8.dex */
public class GMUnifiedNativeAd extends GMBaseAd {

    /* renamed from: if  reason: not valid java name */
    public h f9225if;

    public GMUnifiedNativeAd(Context context, String str) {
        this.f9225if = new h(context, str);
    }

    public void destroy() {
        h hVar = this.f9225if;
        if (hVar != null) {
            hVar.B();
        }
    }

    public List<AdLoadInfo> getAdLoadInfoList() {
        h hVar = this.f9225if;
        if (hVar != null) {
            return hVar.C();
        }
        return new ArrayList();
    }

    public List<GMAdEcpmInfo> getCacheList() {
        h hVar = this.f9225if;
        if (hVar != null) {
            return hVar.c();
        }
        return null;
    }

    public List<GMAdEcpmInfo> getMultiBiddingEcpm() {
        h hVar = this.f9225if;
        if (hVar != null) {
            return hVar.f();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.GMBaseAd
    public void loadAd(GMAdSlotNative gMAdSlotNative, GMNativeAdLoadCallback gMNativeAdLoadCallback) {
        super.loadAd(gMAdSlotNative, gMNativeAdLoadCallback);
        if (this.f9225if != null) {
            if (!a.f().a(this.f9225if.l(), 5) && gMNativeAdLoadCallback != null) {
                gMNativeAdLoadCallback.onAdLoadedFail(new AdError(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME)));
                return;
            }
            if (gMAdSlotNative != null) {
                if (gMAdSlotNative.getAdStyleType() == 1) {
                    if (!a.f().x()) {
                        if (gMNativeAdLoadCallback != null) {
                            gMNativeAdLoadCallback.onAdLoadedFail(new AdError(AdError.ERROR_CODE_FEED_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_FEED_MODULE_UNABLE)));
                            return;
                        }
                        return;
                    }
                } else if (gMAdSlotNative.getAdStyleType() == 2 && !a.f().B()) {
                    if (gMNativeAdLoadCallback != null) {
                        gMNativeAdLoadCallback.onAdLoadedFail(new AdError(AdError.ERROR_CODE_NATIVE_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_NATIVE_MODULE_UNABLE)));
                        return;
                    }
                    return;
                }
            }
            this.f9225if.a(getAdSlot(), gMAdSlotNative, gMNativeAdLoadCallback);
        }
    }

    public void loadAdByAdm(String str, GMNativeAdLoadCallback gMNativeAdLoadCallback) {
        h hVar = this.f9225if;
        if (hVar != null) {
            hVar.a(str, gMNativeAdLoadCallback);
        }
    }

    public void loadToken(GMAdSlotNative gMAdSlotNative, GMAdTokenCallback gMAdTokenCallback) {
        super.loadAd(gMAdSlotNative, null);
        if (this.f9225if != null) {
            if (!a.f().a(this.f9225if.l(), 5) && gMAdTokenCallback != null) {
                gMAdTokenCallback.onAdTokenLoadedFail(new AdError(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME)));
                return;
            }
            if (gMAdSlotNative != null) {
                if (gMAdSlotNative.getAdStyleType() == 1) {
                    if (!a.f().x()) {
                        if (gMAdTokenCallback != null) {
                            gMAdTokenCallback.onAdTokenLoadedFail(new AdError(AdError.ERROR_CODE_FEED_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_FEED_MODULE_UNABLE)));
                            return;
                        }
                        return;
                    }
                } else if (gMAdSlotNative.getAdStyleType() == 2 && !a.f().B()) {
                    if (gMAdTokenCallback != null) {
                        gMAdTokenCallback.onAdTokenLoadedFail(new AdError(AdError.ERROR_CODE_NATIVE_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_NATIVE_MODULE_UNABLE)));
                        return;
                    }
                    return;
                }
            }
            this.f9225if.a(getAdSlot(), gMAdSlotNative, gMAdTokenCallback);
        }
    }
}
