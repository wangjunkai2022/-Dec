package com.bytedance.msdk.api.v2.ad.custom.base;

import android.app.Activity;
/* loaded from: classes8.dex */
public abstract class GMCustomVideoAdapter extends GMCustomBaseAdapter implements IGMCustomLoadAdCall {
    @Deprecated
    public boolean isReady() {
        return true;
    }

    public abstract void showAd(Activity activity);

    public final void showAdInner(Activity activity) {
        try {
            this.f9104do = true;
            showAd(activity);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
