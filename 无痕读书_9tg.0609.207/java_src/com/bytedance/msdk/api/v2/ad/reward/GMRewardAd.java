package com.bytedance.msdk.api.v2.ad.reward;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.j;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.base.TTLoadBase;
import com.bytedance.msdk.api.v2.ad.GMBaseAd;
import com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMRewardAd extends GMBaseAd implements TTLoadBase {

    /* renamed from: if  reason: not valid java name */
    public j f9239if;

    public GMRewardAd(Activity activity, String str) {
        this.f9239if = new j(activity, str);
    }

    public void destroy() {
        j jVar = this.f9239if;
        if (jVar != null) {
            jVar.B();
        }
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<AdLoadInfo> getAdLoadInfoList() {
        j jVar = this.f9239if;
        if (jVar != null) {
            return jVar.C();
        }
        return new ArrayList();
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Deprecated
    public int getAdNetworkPlatformId() {
        j jVar = this.f9239if;
        if (jVar != null) {
            return jVar.E();
        }
        return -2;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    @Deprecated
    public String getAdNetworkRitId() {
        j jVar = this.f9239if;
        if (jVar != null) {
            return jVar.F();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getBestEcpm() {
        j jVar = this.f9239if;
        if (jVar != null) {
            return jVar.b();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getCacheList() {
        j jVar = this.f9239if;
        if (jVar != null) {
            return jVar.c();
        }
        return null;
    }

    public Map<String, Object> getMediaExtraInfo() {
        j jVar = this.f9239if;
        if (jVar != null) {
            return jVar.G();
        }
        return new HashMap();
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getMultiBiddingEcpm() {
        j jVar = this.f9239if;
        if (jVar != null) {
            return jVar.f();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    @Deprecated
    public String getPreEcpm() {
        j jVar = this.f9239if;
        if (jVar != null) {
            return jVar.H();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getShowEcpm() {
        j jVar = this.f9239if;
        if (jVar != null) {
            return jVar.J();
        }
        return null;
    }

    public boolean isReady() {
        j jVar = this.f9239if;
        if (jVar != null) {
            return jVar.g0();
        }
        return false;
    }

    public void loadAd(GMAdSlotRewardVideo gMAdSlotRewardVideo, @NonNull GMRewardedAdLoadCallback gMRewardedAdLoadCallback) {
        if (gMAdSlotRewardVideo != null) {
            m3587do(gMAdSlotRewardVideo);
            this.f9079do.setRewardName(gMAdSlotRewardVideo.getRewardName());
            this.f9079do.setRewardAmount(gMAdSlotRewardVideo.getRewardAmount());
            this.f9079do.setCustomData(gMAdSlotRewardVideo.getCustomData());
            this.f9079do.setUserID(gMAdSlotRewardVideo.getUserID());
            this.f9079do.setOrientation(gMAdSlotRewardVideo.getOrientation());
        }
        if (this.f9239if != null) {
            if (!a.f().a(this.f9239if.l(), 7) && gMRewardedAdLoadCallback != null) {
                gMRewardedAdLoadCallback.onRewardVideoLoadFail(new AdError(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME)));
            } else if (a.f().D()) {
                this.f9239if.a(getAdSlot(), gMAdSlotRewardVideo, gMRewardedAdLoadCallback);
            } else if (gMRewardedAdLoadCallback != null) {
                gMRewardedAdLoadCallback.onRewardVideoLoadFail(new AdError(AdError.ERROR_CODE_REWARD_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_REWARD_MODULE_UNABLE)));
            }
        }
    }

    public void setRewardAdListener(GMRewardedAdListener gMRewardedAdListener) {
        j jVar = this.f9239if;
        if (jVar != null) {
            jVar.a(gMRewardedAdListener);
        }
    }

    public void setRewardPlayAgainListener(GMRewardedAdListener gMRewardedAdListener) {
        j jVar = this.f9239if;
        if (jVar != null) {
            jVar.b(gMRewardedAdListener);
        }
    }

    @MainThread
    public void showRewardAd(Activity activity) {
        j jVar = this.f9239if;
        if (jVar != null) {
            jVar.a(activity, (Map<TTAdConstant.GroMoreExtraKey, Object>) null);
            this.f9239if.b((TTBaseAd) null);
        }
    }

    @MainThread
    public void showRewardAd(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
        j jVar = this.f9239if;
        if (jVar != null) {
            jVar.a(activity, map);
        }
    }
}
