package com.bytedance.msdk.api.nativeAd;

import androidx.annotation.NonNull;
import com.bytedance.msdk.api.AdError;
import java.util.List;

@Deprecated
/* loaded from: classes8.dex */
public interface TTNativeAdLoadCallback {
    void onAdLoaded(@NonNull List<TTNativeAd> list);

    void onAdLoadedFial(@NonNull AdError adError);
}
