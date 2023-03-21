package com.bytedance.msdk.api.v2.ad.custom.base;

import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomTTBaseAd;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMCustomAd {

    /* renamed from: do  reason: not valid java name */
    public GMCustomTTBaseAd f9102do = new GMCustomTTBaseAd();

    public ITTAdatperCallback getTTAdapterCallback() {
        return this.f9102do.getTTAdapterCallback();
    }

    public GMCustomTTBaseAd getTTBaseAd() {
        return this.f9102do;
    }

    public void setAdType(int i) {
        this.f9102do.setAdType(i);
    }

    public void setCpm(double d) {
        this.f9102do.setCpm(d);
    }

    public void setGMCustomBaseAdapter(GMCustomBaseAdapter gMCustomBaseAdapter) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd != null) {
            gMCustomTTBaseAd.setGMCustomBaseAdapter(gMCustomBaseAdapter);
        }
    }

    public void setMediaExtraInfo(Map<String, Object> map) {
        GMCustomTTBaseAd gMCustomTTBaseAd;
        if (map == null || (gMCustomTTBaseAd = this.f9102do) == null) {
            return;
        }
        gMCustomTTBaseAd.setMediaExtraInfo(map);
    }
}
