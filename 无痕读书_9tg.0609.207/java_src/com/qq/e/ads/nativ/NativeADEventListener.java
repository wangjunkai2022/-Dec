package com.qq.e.ads.nativ;

import com.qq.e.comm.util.AdError;
/* loaded from: classes8.dex */
public interface NativeADEventListener {
    void onADClicked();

    void onADError(AdError adError);

    void onADExposed();

    void onADStatusChanged();
}
