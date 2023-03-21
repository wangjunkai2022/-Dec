package com.bytedance.msdk.api.reward;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.j;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.base.TTLoadBase;
import com.bytedance.msdk.api.v2.ad.AdUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes8.dex */
public class TTRewardAd implements TTLoadBase {

    /* renamed from: do  reason: not valid java name */
    public j f8989do;

    public TTRewardAd(Activity activity, String str) {
        this.f8989do = new j(activity, str);
    }

    public void destroy() {
        j jVar = this.f8989do;
        if (jVar != null) {
            jVar.B();
        }
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<AdLoadInfo> getAdLoadInfoList() {
        j jVar = this.f8989do;
        if (jVar != null) {
            return jVar.C();
        }
        return new ArrayList();
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public int getAdNetworkPlatformId() {
        j jVar = this.f8989do;
        if (jVar != null) {
            return jVar.E();
        }
        return -2;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    public String getAdNetworkRitId() {
        j jVar = this.f8989do;
        if (jVar != null) {
            return jVar.F();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getBestEcpm() {
        j jVar = this.f8989do;
        if (jVar != null) {
            return jVar.b();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getCacheList() {
        j jVar = this.f8989do;
        if (jVar != null) {
            return jVar.c();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getMultiBiddingEcpm() {
        j jVar = this.f8989do;
        if (jVar != null) {
            return jVar.f();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    public String getPreEcpm() {
        j jVar = this.f8989do;
        if (jVar != null) {
            return jVar.H();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getShowEcpm() {
        j jVar = this.f8989do;
        if (jVar != null) {
            return jVar.J();
        }
        return null;
    }

    public boolean isReady() {
        j jVar = this.f8989do;
        if (jVar != null) {
            return jVar.g0();
        }
        return false;
    }

    public void loadRewardAd(AdSlot adSlot, @NonNull TTRewardedAdLoadCallback tTRewardedAdLoadCallback) {
        if (this.f8989do != null) {
            if (!a.f().a(this.f8989do.l(), 7) && tTRewardedAdLoadCallback != null) {
                tTRewardedAdLoadCallback.onRewardVideoLoadFail(new AdError(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME)));
            } else if (a.f().D()) {
                this.f8989do.a(adSlot, AdUtils.getAdSlotRewardVideo(adSlot), tTRewardedAdLoadCallback);
            } else if (tTRewardedAdLoadCallback != null) {
                tTRewardedAdLoadCallback.onRewardVideoLoadFail(new AdError(AdError.ERROR_CODE_REWARD_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_REWARD_MODULE_UNABLE)));
            }
        }
    }

    public void setRewardAdListener(TTRewardedAdListener tTRewardedAdListener) {
        j jVar = this.f8989do;
        if (jVar != null) {
            jVar.a(tTRewardedAdListener);
        }
    }

    public void setRewardPlayAgainListener(TTRewardedAdListener tTRewardedAdListener) {
        j jVar = this.f8989do;
        if (jVar != null) {
            jVar.b(tTRewardedAdListener);
        }
    }

    @MainThread
    @Deprecated
    public void showRewardAd(Activity activity, TTRewardedAdListener tTRewardedAdListener) {
        showRewardAd(activity, null, tTRewardedAdListener);
    }

    @MainThread
    public void showRewardAd(Activity activity) {
        j jVar = this.f8989do;
        if (jVar != null) {
            jVar.a(activity, (Map<TTAdConstant.GroMoreExtraKey, Object>) null);
        }
    }

    @MainThread
    @Deprecated
    public void showRewardAd(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map, TTRewardedAdListener tTRewardedAdListener) {
        j jVar = this.f8989do;
        if (jVar != null) {
            jVar.a(tTRewardedAdListener);
            this.f8989do.a(activity, map);
        }
    }

    @MainThread
    public void showRewardAd(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
        j jVar = this.f8989do;
        if (jVar != null) {
            jVar.a(activity, map);
        }
    }
}
