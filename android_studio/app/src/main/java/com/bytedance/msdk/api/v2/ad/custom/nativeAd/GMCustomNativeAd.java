package com.bytedance.msdk.api.v2.ad.custom.nativeAd;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomTTBaseAd;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import java.util.List;

/* loaded from: classes8.dex */
public abstract class GMCustomNativeAd extends GMCustomBaseNativeAd implements IGMCustomNativeEvent {

    /* renamed from: native  reason: not valid java name */
    public volatile boolean f9186native = false;

    /* renamed from: public  reason: not valid java name */
    public int f9187public = 0;

    /* renamed from: return  reason: not valid java name */
    public int f9188return = 0;

    /* renamed from: static  reason: not valid java name */
    public boolean f9189static = false;

    /* renamed from: switch  reason: not valid java name */
    public Activity f9190switch;

    /* renamed from: throws  reason: not valid java name */
    public List<View> f9191throws;

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeAdClick() {
        if (this.f9186native) {
            checkClick(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAd.8
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMCustomTTBaseAd gMCustomTTBaseAd = GMCustomNativeAd.this.f9102do;
                    if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMNativeAdListener() == null) {
                        return;
                    }
                    GMCustomNativeAd.this.f9102do.getGMNativeAdListener().onAdClick();
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeAdShow() {
        checkShow(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAd.9
            @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
            public void callback() {
                GMCustomTTBaseAd gMCustomTTBaseAd = GMCustomNativeAd.this.f9102do;
                if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMNativeAdListener() == null) {
                    return;
                }
                GMCustomNativeAd.this.f9186native = true;
                GMCustomNativeAd.this.f9102do.getGMNativeAdListener().onAdShow();
            }
        });
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeDislikeCancel() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getDislikeCallback() == null) {
            return;
        }
        this.f9102do.getDislikeCallback().onCancel();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeDislikeRefuse() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getDislikeCallback() == null) {
            return;
        }
        this.f9102do.getDislikeCallback().onRefuse();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeDislikeSelected(int i, String str) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getDislikeCallback() == null) {
            return;
        }
        this.f9102do.nativeDislikeClick(str);
        this.f9102do.getDislikeCallback().onSelected(i, str);
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeDislikeShow() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getDislikeCallback() == null) {
            return;
        }
        this.f9102do.getDislikeCallback().onShow();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeOnDownloadActive(long j, long j2, String str, String str2) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMAdAppDownloadListener() == null) {
            return;
        }
        this.f9102do.getGMAdAppDownloadListener().onDownloadProgress(j, j2, -1, 1);
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeOnDownloadFailed(long j, long j2, String str, String str2) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMAdAppDownloadListener() == null) {
            return;
        }
        this.f9102do.getGMAdAppDownloadListener().onDownloadFailed(j, j2, str, str2);
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeOnDownloadFinished(long j, String str, String str2) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMAdAppDownloadListener() == null) {
            return;
        }
        this.f9102do.getGMAdAppDownloadListener().onDownloadFinished(j, str, str2);
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeOnDownloadPaused(long j, long j2, String str, String str2) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMAdAppDownloadListener() == null) {
            return;
        }
        this.f9102do.getGMAdAppDownloadListener().onDownloadPaused(j, j2, str, str2);
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeOnIdle() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMAdAppDownloadListener() == null) {
            return;
        }
        this.f9102do.getGMAdAppDownloadListener().onIdle();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeOnInstalled(String str, String str2) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMAdAppDownloadListener() == null) {
            return;
        }
        this.f9102do.getGMAdAppDownloadListener().onInstalled(str, str2);
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeRenderFail(View view, String str, int i) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMNativeAdListener() == null) {
            return;
        }
        try {
            ((GMNativeExpressAdListener) this.f9102do.getGMNativeAdListener()).onRenderFail(view, str, i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeRenderSuccess(float f, float f2) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMNativeAdListener() == null) {
            return;
        }
        try {
            ((GMNativeExpressAdListener) this.f9102do.getGMNativeAdListener()).onRenderSuccess(f, f2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeVideoCompleted() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onVideoCompleted();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeVideoError(GMCustomAdError gMCustomAdError) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onVideoError(new AdError(AdError.ERROR_CODE_CUSTOM_NATIVE_VIDEO_SHOW_ERROR, AdError.getMessage(AdError.ERROR_CODE_CUSTOM_NATIVE_VIDEO_SHOW_ERROR), gMCustomAdError == null ? -1 : gMCustomAdError.getCode(), gMCustomAdError == null ? "" : gMCustomAdError.getMessage()));
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeVideoPause() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onVideoPause();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeVideoProgressUpdate(long j, long j2) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onProgressUpdate(j, j2);
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeVideoResume() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onVideoResume();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeEvent
    public void callNativeVideoStart() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onVideoStart();
    }

    public void cancelDownload() {
    }

    public final void checkClick(GMCustomBaseAdapter.CheckCallback checkCallback) {
        int i = this.f9188return;
        if (i < 60) {
            this.f9188return = i + 1;
            if (checkCallback != null) {
                checkCallback.callback();
                return;
            }
            return;
        }
        Logger.e("TTMediationSDK", "自定义Adapter click方法回调次数需要小于60次");
    }

    public final void checkShow(GMCustomBaseAdapter.CheckCallback checkCallback) {
        if (this.f9189static) {
            int i = this.f9187public;
            if (i < 2) {
                this.f9187public = i + 1;
                if (checkCallback != null) {
                    checkCallback.callback();
                    return;
                }
                return;
            }
            Logger.e("TTMediationSDK", "自定义Adapter show方法回调次数需要小于2次");
            return;
        }
        Logger.e("TTMediationSDK", "自定义Adapter show方法回调必须由GroMore触发show时才会生效");
    }

    @Nullable
    public Activity getActivity() {
        return this.f9190switch;
    }

    public List<View> getDirectDownloadViews() {
        return this.f9191throws;
    }

    public int getDownloadStatus() {
        return -1;
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomBaseNativeAd
    public View getExpressView() {
        return null;
    }

    public final View getExpressViewInner() {
        try {
            return getExpressView();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public GMNativeCustomVideoReporter getGMNativeCustomVideoReporter() {
        return null;
    }

    public final GMNativeCustomVideoReporter getGMNativeCustomVideoReporterInner() {
        try {
            return getGMNativeCustomVideoReporter();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomAd
    public GMCustomTTBaseAd getTTBaseAd() {
        this.f9102do.setTitle(getTitle());
        this.f9102do.setAdDescription(getDescription());
        this.f9102do.setIconUrl(getIconUrl());
        this.f9102do.setImageUrl(getImageUrl());
        this.f9102do.setImageWidth(getImageWidth());
        this.f9102do.setImageHeight(getImageHeight());
        this.f9102do.setVideoWidth(getVideoWidth());
        this.f9102do.setVideoHeight(getVideoHeight());
        this.f9102do.setActionText(getActionText());
        this.f9102do.setPackageName(getPackageName());
        this.f9102do.setRating(getStarRating());
        this.f9102do.setImages(getImageList());
        this.f9102do.setSource(getSource());
        this.f9102do.setImageMode(getAdImageMode());
        this.f9102do.setInteractionType(getInteractionType());
        if (getNativeAdAppInfo() != null) {
            this.f9102do.setAppName(getNativeAdAppInfo().getAppName());
            this.f9102do.setAuthorName(getNativeAdAppInfo().getAuthorName());
            this.f9102do.setPackageSizeBytes(getNativeAdAppInfo().getPackageSizeBytes());
            this.f9102do.setPermissionsUrl(getNativeAdAppInfo().getPermissionsUrl());
            this.f9102do.setPrivacyAgreement(getNativeAdAppInfo().getPrivacyAgreement());
            this.f9102do.setVersionName(getNativeAdAppInfo().getVersionName());
        }
        this.f9102do.setCustomNativeConvert(new IGMCustomNativeConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAd.1
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeConvert
            public void registerViewForInteractionInner(@Nullable Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, GMViewBinder gMViewBinder) {
                GMCustomNativeAd gMCustomNativeAd = GMCustomNativeAd.this;
                if (gMCustomNativeAd != null) {
                    try {
                        gMCustomNativeAd.f9190switch = activity;
                        gMCustomNativeAd.f9189static = true;
                        gMCustomNativeAd.f9191throws = list3;
                        gMCustomNativeAd.registerViewForInteraction(viewGroup, list, list2, gMViewBinder);
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                throw null;
            }

            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeConvert
            public void unregisterViewInner() {
                GMCustomNativeAd.this.unregisterViewInner();
            }
        });
        this.f9102do.setCustomNativeExpressConvert(new IGMCustomNativeExpressConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAd.2
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeExpressConvert
            public View getExpressViewInner() {
                return GMCustomNativeAd.this.getExpressViewInner();
            }

            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeExpressConvert
            public void renderInner() {
                GMCustomNativeAd.this.renderInner();
            }
        });
        this.f9102do.setCustomNativeLifecycleConvert(new IGMCustomNativeLifecycleConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAd.3
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeLifecycleConvert
            public void onDestroyInner() {
                GMCustomNativeAd gMCustomNativeAd = GMCustomNativeAd.this;
                if (gMCustomNativeAd != null) {
                    try {
                        gMCustomNativeAd.f9190switch = null;
                        gMCustomNativeAd.onDestroy();
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                throw null;
            }

            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeLifecycleConvert
            public void onPauseInner() {
                GMCustomNativeAd gMCustomNativeAd = GMCustomNativeAd.this;
                if (gMCustomNativeAd != null) {
                    try {
                        gMCustomNativeAd.onPause();
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                throw null;
            }

            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeLifecycleConvert
            public void onResumeInner() {
                GMCustomNativeAd gMCustomNativeAd = GMCustomNativeAd.this;
                if (gMCustomNativeAd != null) {
                    try {
                        gMCustomNativeAd.onResume();
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                throw null;
            }
        });
        this.f9102do.setIGMCustomNativeDislikeConvert(new IGMCustomNativeDislikeConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAd.4
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeDislikeConvert
            public boolean hasDislike() {
                return GMCustomNativeAd.this.hasDislike();
            }
        });
        if (getBiddingPrice() > 0.0d) {
            this.f9102do.setCpm(getBiddingPrice());
        }
        this.f9102do.setIGMCustomNativeIsReadyStatusConvert(new IGMCustomNativeIsReadyStatusConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAd.5
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeIsReadyStatusConvert
            public GMAdConstant.AdIsReadyStatus isReadyStatus() {
                return GMCustomNativeAd.this.isReadyStatus();
            }
        });
        this.f9102do.setCustomNativeCustomizeVideoConvert(new IGMCustomNativeCustomizeVideoConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAd.6
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeCustomizeVideoConvert
            public GMNativeCustomVideoReporter getGMNativeCustomVideoReporter() {
                return GMCustomNativeAd.this.getGMNativeCustomVideoReporterInner();
            }

            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeCustomizeVideoConvert
            public String getVideoUrl() {
                return GMCustomNativeAd.this.getVideoUrlInner();
            }
        });
        this.f9102do.setCustomNativeDownloadStatusControllerConvert(new IGMCustomNativeDownloadStatusControllerConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAd.7
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeDownloadStatusControllerConvert
            public void cancelDownload() {
                GMCustomNativeAd.this.cancelDownload();
            }

            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeDownloadStatusControllerConvert
            public int getDownloadStatus() {
                return GMCustomNativeAd.this.getDownloadStatus();
            }

            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeDownloadStatusControllerConvert
            public void pauseAppDownload() {
                GMCustomNativeAd.this.pauseAppDownload();
            }

            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeDownloadStatusControllerConvert
            public void resumeAppDownload() {
                GMCustomNativeAd.this.resumeAppDownload();
            }
        });
        return this.f9102do;
    }

    public String getVideoUrl() {
        return null;
    }

    public final String getVideoUrlInner() {
        try {
            return getVideoUrl();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean hasDislike() {
        return false;
    }

    public GMAdConstant.AdIsReadyStatus isReadyStatus() {
        return GMAdConstant.AdIsReadyStatus.ADN_NO_READY_API;
    }

    public final boolean isUseCustomVideo() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd != null) {
            return gMCustomTTBaseAd.isUseCustomVideo();
        }
        return false;
    }

    public final void nativeDislikeClick(String str) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd != null) {
            gMCustomTTBaseAd.nativeDislikeClick(str);
        }
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void pauseAppDownload() {
    }

    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
    }

    public void render() {
    }

    public final void renderInner() {
        try {
            this.f9189static = true;
            render();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void resumeAppDownload() {
    }

    public final void setDislikeDialogCallBack(IGMCustomNativeDislikeDialog iGMCustomNativeDislikeDialog) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || iGMCustomNativeDislikeDialog == null) {
            return;
        }
        gMCustomTTBaseAd.setDislikeDialogCallBack(iGMCustomNativeDislikeDialog);
    }

    public void unregisterView() {
    }

    public final void unregisterViewInner() {
        try {
            unregisterView();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
