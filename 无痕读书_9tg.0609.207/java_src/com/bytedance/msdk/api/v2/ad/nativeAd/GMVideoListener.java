package com.bytedance.msdk.api.v2.ad.nativeAd;

import androidx.annotation.NonNull;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.api.AdError;
/* loaded from: classes8.dex */
public interface GMVideoListener extends ITTAdatperCallback {
    void onProgressUpdate(long j, long j2);

    void onVideoCompleted();

    void onVideoError(@NonNull AdError adError);

    void onVideoPause();

    void onVideoResume();

    void onVideoStart();
}
