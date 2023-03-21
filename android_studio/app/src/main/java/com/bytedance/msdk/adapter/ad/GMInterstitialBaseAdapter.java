package com.bytedance.msdk.adapter.ad;

import android.content.Context;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitial;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitialFull;
import java.util.Map;

/* loaded from: classes8.dex */
public abstract class GMInterstitialBaseAdapter extends TTAbsAdLoaderAdapter {
    public GMAdSlotInterstitial mGMAdSlotInterstitial;

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public void loadAd(Context context, Map<String, Object> map) {
        GMAdSlotBase gMAdSlotBase = this.mGMAdSlotBase;
        if (gMAdSlotBase instanceof GMAdSlotInterstitialFull) {
            this.mGMAdSlotInterstitial = ((GMAdSlotInterstitialFull) gMAdSlotBase).getGMAdSlotInterstitial();
        } else if (gMAdSlotBase instanceof GMAdSlotInterstitial) {
            this.mGMAdSlotInterstitial = (GMAdSlotInterstitial) gMAdSlotBase;
        } else {
            notifyAdFailed(new AdError("ClassCastException：load ad fail mGMAdSlotFullVideo is not GMAdSlotInterstitialFull or GMAdSlotInterstitial"));
        }
    }

    public void notifyLoadFailBecauseGMAdSlotIsNull() {
        notifyAdFailed(new AdError("load ad fail mGMAdSlotInterstitial is null"));
    }
}
