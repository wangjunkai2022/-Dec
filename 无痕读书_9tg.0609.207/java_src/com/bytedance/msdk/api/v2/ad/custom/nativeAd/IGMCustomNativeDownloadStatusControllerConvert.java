package com.bytedance.msdk.api.v2.ad.custom.nativeAd;
/* loaded from: classes8.dex */
public interface IGMCustomNativeDownloadStatusControllerConvert {
    void cancelDownload();

    int getDownloadStatus();

    void pauseAppDownload();

    void resumeAppDownload();
}
