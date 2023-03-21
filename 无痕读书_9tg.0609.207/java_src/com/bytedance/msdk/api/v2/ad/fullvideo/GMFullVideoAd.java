package com.bytedance.msdk.api.v2.ad.fullvideo;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.g;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.base.TTLoadBase;
import com.bytedance.msdk.api.v2.ad.GMBaseAd;
import com.bytedance.msdk.api.v2.slot.GMAdSlotFullVideo;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMFullVideoAd extends GMBaseAd implements TTLoadBase {

    /* renamed from: if  reason: not valid java name */
    public g f9221if;

    public GMFullVideoAd(Activity activity, String str) {
        this.f9221if = new g(activity, str);
    }

    public void destroy() {
        g gVar = this.f9221if;
        if (gVar != null) {
            gVar.B();
        }
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<AdLoadInfo> getAdLoadInfoList() {
        g gVar = this.f9221if;
        if (gVar != null) {
            return gVar.C();
        }
        return new ArrayList();
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Deprecated
    public int getAdNetworkPlatformId() {
        g gVar = this.f9221if;
        if (gVar != null) {
            return gVar.E();
        }
        return -2;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    @Deprecated
    public String getAdNetworkRitId() {
        g gVar = this.f9221if;
        if (gVar != null) {
            return gVar.F();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getBestEcpm() {
        g gVar = this.f9221if;
        if (gVar != null) {
            return gVar.b();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getCacheList() {
        g gVar = this.f9221if;
        if (gVar != null) {
            return gVar.c();
        }
        return null;
    }

    public Map<String, Object> getMediaExtraInfo() {
        g gVar = this.f9221if;
        if (gVar != null) {
            return gVar.G();
        }
        return new HashMap();
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getMultiBiddingEcpm() {
        g gVar = this.f9221if;
        if (gVar != null) {
            return gVar.f();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    @Deprecated
    public String getPreEcpm() {
        g gVar = this.f9221if;
        if (gVar != null) {
            return gVar.H();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getShowEcpm() {
        g gVar = this.f9221if;
        if (gVar != null) {
            return gVar.J();
        }
        return null;
    }

    public boolean isReady() {
        g gVar = this.f9221if;
        if (gVar != null) {
            return gVar.g0();
        }
        return false;
    }

    public void loadAd(GMAdSlotFullVideo gMAdSlotFullVideo, @NonNull GMFullVideoAdLoadCallback gMFullVideoAdLoadCallback) {
        if (gMAdSlotFullVideo != null) {
            m3587do(gMAdSlotFullVideo);
            this.f9079do.setUserID(gMAdSlotFullVideo.getUserID());
            this.f9079do.setOrientation(gMAdSlotFullVideo.getOrientation());
            this.f9079do.setRewardName(gMAdSlotFullVideo.getRewardName());
            this.f9079do.setRewardAmount(gMAdSlotFullVideo.getRewardAmount());
            this.f9079do.setCustomData(gMAdSlotFullVideo.getCustomData());
        }
        if (this.f9221if != null) {
            if (!a.f().a(this.f9221if.l(), 8) && gMFullVideoAdLoadCallback != null) {
                gMFullVideoAdLoadCallback.onFullVideoLoadFail(new AdError(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME)));
            } else if (a.f().y()) {
                this.f9221if.a(getAdSlot(), gMAdSlotFullVideo, gMFullVideoAdLoadCallback);
            } else if (gMFullVideoAdLoadCallback != null) {
                gMFullVideoAdLoadCallback.onFullVideoLoadFail(new AdError(AdError.ERROR_CODE_FULL_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_FULL_MODULE_UNABLE)));
            }
        }
    }

    public void setFullVideoAdListener(GMFullVideoAdListener gMFullVideoAdListener) {
        g gVar = this.f9221if;
        if (gVar != null) {
            gVar.a(gMFullVideoAdListener);
        }
    }

    @MainThread
    public void showFullAd(Activity activity) {
        g gVar = this.f9221if;
        if (gVar != null) {
            gVar.a(activity, (Map<TTAdConstant.GroMoreExtraKey, Object>) null);
            this.f9221if.b((TTBaseAd) null);
        }
    }

    @MainThread
    public void showFullAd(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
        g gVar = this.f9221if;
        if (gVar != null) {
            gVar.a(activity, map);
        }
    }
}
