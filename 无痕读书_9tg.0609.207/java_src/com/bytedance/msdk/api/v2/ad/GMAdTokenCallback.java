package com.bytedance.msdk.api.v2.ad;

import com.bytedance.msdk.api.AdError;
/* loaded from: classes8.dex */
public interface GMAdTokenCallback {
    void onAdTokenLoaded(String str);

    void onAdTokenLoadedFail(AdError adError);
}
