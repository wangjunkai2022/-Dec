package com.bytedance.msdk.api.v2.ad.splash;

import android.app.Activity;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;

/* loaded from: classes8.dex */
public interface GMSplashCardListener extends ITTAdatperCallback {
    Activity getActivity();

    void onSplashClickEyeClose();

    void onSplashEyeReady();

    void setSupportSplashClickEye(boolean z);
}
