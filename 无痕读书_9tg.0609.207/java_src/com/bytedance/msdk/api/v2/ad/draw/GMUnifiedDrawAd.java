package com.bytedance.msdk.api.v2.ad.draw;

import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.f;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.v2.ad.GMBaseAd;
import com.bytedance.msdk.api.v2.slot.GMAdSlotDraw;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes8.dex */
public class GMUnifiedDrawAd extends GMBaseAd {

    /* renamed from: if  reason: not valid java name */
    public f f9220if;

    public GMUnifiedDrawAd(Context context, String str) {
        this.f9220if = new f(context, str);
    }

    public void destroy() {
        f fVar = this.f9220if;
        if (fVar != null) {
            fVar.B();
        }
    }

    public List<AdLoadInfo> getAdLoadInfoList() {
        f fVar = this.f9220if;
        if (fVar != null) {
            return fVar.C();
        }
        return new ArrayList();
    }

    public List<GMAdEcpmInfo> getCacheList() {
        f fVar = this.f9220if;
        if (fVar != null) {
            return fVar.c();
        }
        return null;
    }

    public List<GMAdEcpmInfo> getMultiBiddingEcpm() {
        f fVar = this.f9220if;
        if (fVar != null) {
            return fVar.f();
        }
        return null;
    }

    public void loadAd(GMAdSlotDraw gMAdSlotDraw, GMDrawAdLoadCallback gMDrawAdLoadCallback) {
        if (gMAdSlotDraw != null) {
            m3587do(gMAdSlotDraw);
            this.f9079do.setImageAdSize(gMAdSlotDraw.getWidth(), gMAdSlotDraw.getHeight());
            this.f9079do.setAdCount(gMAdSlotDraw.getAdCount());
        }
        if (this.f9220if != null) {
            if (!a.f().a(this.f9220if.l(), 9) && gMDrawAdLoadCallback != null) {
                gMDrawAdLoadCallback.onAdLoadFail(new AdError(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME)));
            } else {
                this.f9220if.a(getAdSlot(), gMAdSlotDraw, gMDrawAdLoadCallback);
            }
        }
    }
}
