package com.bytedance.msdk.api.v2.ad.fullvideo;

import androidx.annotation.NonNull;
import com.bytedance.msdk.api.AdError;
/* loaded from: classes8.dex */
public interface GMFullVideoAdLoadCallback {
    void onFullVideoAdLoad();

    void onFullVideoCached();

    void onFullVideoLoadFail(@NonNull AdError adError);
}
