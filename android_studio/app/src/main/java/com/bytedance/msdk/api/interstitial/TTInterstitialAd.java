package com.bytedance.msdk.api.interstitial;

import android.app.Activity;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.c;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.base.TTLoadBase;
import com.bytedance.msdk.api.v2.ad.AdUtils;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* loaded from: classes8.dex */
public class TTInterstitialAd implements TTLoadBase {

    /* renamed from: do  reason: not valid java name */
    public c f8978do;

    public TTInterstitialAd(Activity activity, String str) {
        this.f8978do = new c(activity, str);
    }

    public void destroy() {
        c cVar = this.f8978do;
        if (cVar != null) {
            cVar.B();
        }
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<AdLoadInfo> getAdLoadInfoList() {
        c cVar = this.f8978do;
        if (cVar != null) {
            return cVar.C();
        }
        return new ArrayList();
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public int getAdNetworkPlatformId() {
        c cVar = this.f8978do;
        if (cVar != null) {
            return cVar.E();
        }
        return -2;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    public String getAdNetworkRitId() {
        c cVar = this.f8978do;
        if (cVar != null) {
            return cVar.F();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getBestEcpm() {
        c cVar = this.f8978do;
        if (cVar != null) {
            return cVar.b();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getCacheList() {
        c cVar = this.f8978do;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getMultiBiddingEcpm() {
        c cVar = this.f8978do;
        if (cVar != null) {
            return cVar.f();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    public String getPreEcpm() {
        c cVar = this.f8978do;
        if (cVar != null) {
            return cVar.H();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getShowEcpm() {
        c cVar = this.f8978do;
        if (cVar != null) {
            return cVar.J();
        }
        return null;
    }

    public boolean isReady() {
        c cVar = this.f8978do;
        if (cVar != null) {
            return cVar.g0();
        }
        return false;
    }

    public void loadAd(AdSlot adSlot, TTInterstitialAdLoadCallback tTInterstitialAdLoadCallback) {
        if (this.f8978do != null) {
            if (!a.f().a(this.f8978do.l(), 2) && tTInterstitialAdLoadCallback != null) {
                tTInterstitialAdLoadCallback.onInterstitialLoadFail(new AdError(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME)));
            } else if (a.f().z()) {
                this.f8978do.a(adSlot, AdUtils.getAdSlotInterstitial(adSlot), tTInterstitialAdLoadCallback);
            } else if (tTInterstitialAdLoadCallback != null) {
                tTInterstitialAdLoadCallback.onInterstitialLoadFail(new AdError(AdError.ERROR_CODE_INTERACTION_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_INTERACTION_MODULE_UNABLE)));
            }
        }
    }

    public void setTTAdInterstitialListener(TTInterstitialAdListener tTInterstitialAdListener) {
        c cVar = this.f8978do;
        if (cVar != null) {
            cVar.a(tTInterstitialAdListener);
        }
    }

    public void showAd(Activity activity) {
        c cVar = this.f8978do;
        if (cVar != null) {
            if (activity == null) {
                Logger.e("TTMediationSDK", "activity can not be null !");
            } else {
                cVar.a(activity);
            }
        }
    }
}
