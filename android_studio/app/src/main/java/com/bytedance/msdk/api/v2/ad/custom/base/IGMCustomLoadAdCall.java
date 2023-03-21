package com.bytedance.msdk.api.v2.ad.custom.base;

import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;

/* loaded from: classes8.dex */
public interface IGMCustomLoadAdCall {
    void callLoadFail(GMCustomAdError gMCustomAdError);

    void callLoadSuccess();

    void callLoadSuccess(double d);
}
