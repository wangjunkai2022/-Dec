package com.bytedance.msdk.api.v2.ad.interstitialFull;

import android.app.Activity;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.b;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.base.TTLoadBase;
import com.bytedance.msdk.api.v2.ad.GMBaseAd;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitialFull;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMInterstitialFullAd extends GMBaseAd implements TTLoadBase {

    /* renamed from: if  reason: not valid java name */
    public b f9223if;

    public GMInterstitialFullAd(Activity activity, String str) {
        this.f9223if = new b(activity, str);
    }

    public void destroy() {
        b bVar = this.f9223if;
        if (bVar != null) {
            bVar.B();
        }
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<AdLoadInfo> getAdLoadInfoList() {
        b bVar = this.f9223if;
        if (bVar != null) {
            return bVar.C();
        }
        return new ArrayList();
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Deprecated
    public int getAdNetworkPlatformId() {
        b bVar = this.f9223if;
        if (bVar != null) {
            return bVar.E();
        }
        return -2;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    @Deprecated
    public String getAdNetworkRitId() {
        b bVar = this.f9223if;
        if (bVar != null) {
            return bVar.F();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getBestEcpm() {
        b bVar = this.f9223if;
        if (bVar != null) {
            return bVar.b();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getCacheList() {
        b bVar = this.f9223if;
        if (bVar != null) {
            return bVar.c();
        }
        return null;
    }

    public Map<String, Object> getMediaExtraInfo() {
        b bVar = this.f9223if;
        if (bVar != null) {
            return bVar.G();
        }
        return new HashMap();
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getMultiBiddingEcpm() {
        b bVar = this.f9223if;
        if (bVar != null) {
            return bVar.f();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    @Deprecated
    public String getPreEcpm() {
        b bVar = this.f9223if;
        if (bVar != null) {
            return bVar.H();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getShowEcpm() {
        b bVar = this.f9223if;
        if (bVar != null) {
            return bVar.J();
        }
        return null;
    }

    public boolean isReady() {
        b bVar = this.f9223if;
        if (bVar != null) {
            return bVar.g0();
        }
        return false;
    }

    public void loadAd(GMAdSlotInterstitialFull gMAdSlotInterstitialFull, GMInterstitialFullAdLoadCallback gMInterstitialFullAdLoadCallback) {
        if (gMAdSlotInterstitialFull != null) {
            m3587do(gMAdSlotInterstitialFull);
            this.f9079do.setImageAdSize(gMAdSlotInterstitialFull.getWidth(), gMAdSlotInterstitialFull.getHeight());
            this.f9079do.setUserID(gMAdSlotInterstitialFull.getUserID());
            this.f9079do.setOrientation(gMAdSlotInterstitialFull.getOrientation());
            this.f9079do.setRewardName(gMAdSlotInterstitialFull.getRewardName());
            this.f9079do.setRewardAmount(gMAdSlotInterstitialFull.getRewardAmount());
            this.f9079do.setCustomData(gMAdSlotInterstitialFull.getCustomData());
        }
        if (this.f9223if != null) {
            if (!a.f().a(this.f9223if.l(), 10) && gMInterstitialFullAdLoadCallback != null) {
                gMInterstitialFullAdLoadCallback.onInterstitialFullLoadFail(new AdError(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME)));
            } else if (a.f().A()) {
                this.f9223if.a(getAdSlot(), gMAdSlotInterstitialFull, gMInterstitialFullAdLoadCallback);
            } else if (gMInterstitialFullAdLoadCallback != null) {
                gMInterstitialFullAdLoadCallback.onInterstitialFullLoadFail(new AdError(AdError.ERROR_CODE_INTERACTION_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_INTERACTION_MODULE_UNABLE)));
            }
        }
    }

    public void setAdInterstitialFullListener(GMInterstitialFullAdListener gMInterstitialFullAdListener) {
        b bVar = this.f9223if;
        if (bVar != null) {
            bVar.a(gMInterstitialFullAdListener);
        }
    }

    public void showAd(Activity activity) {
        b bVar = this.f9223if;
        if (bVar != null) {
            if (activity == null) {
                Logger.e("TTMediationSDK", "activity can not be null !");
                return;
            }
            bVar.a(activity);
            this.f9223if.b((TTBaseAd) null);
        }
    }
}
