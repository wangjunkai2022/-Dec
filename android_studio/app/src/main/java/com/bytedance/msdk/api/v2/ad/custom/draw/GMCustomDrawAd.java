package com.bytedance.msdk.api.v2.ad.custom.draw;

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
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomBaseNativeAd;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeConvert;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeDislikeConvert;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeExpressConvert;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeIsReadyStatusConvert;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeLifecycleConvert;
import com.bytedance.msdk.api.v2.ad.draw.GMDrawExpressAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import java.util.List;

/* loaded from: classes8.dex */
public abstract class GMCustomDrawAd extends GMCustomBaseNativeAd implements IGMCustomDrawEvent {

    /* renamed from: native  reason: not valid java name */
    public volatile boolean f9135native = false;

    /* renamed from: public  reason: not valid java name */
    public int f9136public = 0;

    /* renamed from: return  reason: not valid java name */
    public int f9137return = 0;

    /* renamed from: static  reason: not valid java name */
    public boolean f9138static = false;

    /* renamed from: switch  reason: not valid java name */
    public List<View> f9139switch;

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawAdClick() {
        if (this.f9135native) {
            checkClick(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.draw.GMCustomDrawAd.6
                @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
                public void callback() {
                    GMCustomTTBaseAd gMCustomTTBaseAd = GMCustomDrawAd.this.f9102do;
                    if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMDrawAdListener() == null) {
                        return;
                    }
                    GMCustomDrawAd.this.f9102do.getGMDrawAdListener().onAdClick();
                }
            });
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawAdShow() {
        checkShow(new GMCustomBaseAdapter.CheckCallback() { // from class: com.bytedance.msdk.api.v2.ad.custom.draw.GMCustomDrawAd.7
            @Override // com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter.CheckCallback
            public void callback() {
                GMCustomTTBaseAd gMCustomTTBaseAd = GMCustomDrawAd.this.f9102do;
                if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMDrawAdListener() == null) {
                    return;
                }
                GMCustomDrawAd.this.f9135native = true;
                GMCustomDrawAd.this.f9102do.getGMDrawAdListener().onAdShow();
            }
        });
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawDislikeCancel() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getDislikeCallback() == null) {
            return;
        }
        this.f9102do.getDislikeCallback().onCancel();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawDislikeRefuse() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getDislikeCallback() == null) {
            return;
        }
        this.f9102do.getDislikeCallback().onRefuse();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawDislikeSelected(int i, String str) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getDislikeCallback() == null) {
            return;
        }
        this.f9102do.getDislikeCallback().onSelected(i, str);
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawDislikeShow() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getDislikeCallback() == null) {
            return;
        }
        this.f9102do.getDislikeCallback().onShow();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawRenderFail(View view, String str, int i) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMNativeAdListener() == null) {
            return;
        }
        try {
            ((GMDrawExpressAdListener) this.f9102do.getGMDrawAdListener()).onRenderFail(view, str, i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawRenderSuccess(float f, float f2) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMDrawAdListener() == null) {
            return;
        }
        try {
            ((GMDrawExpressAdListener) this.f9102do.getGMDrawAdListener()).onRenderSuccess(f, f2);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawVideoCompleted() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onVideoCompleted();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawVideoError(GMCustomAdError gMCustomAdError) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onVideoError(new AdError(AdError.ERROR_CODE_CUSTOM_NATIVE_VIDEO_SHOW_ERROR, AdError.getMessage(AdError.ERROR_CODE_CUSTOM_NATIVE_VIDEO_SHOW_ERROR), gMCustomAdError == null ? -1 : gMCustomAdError.getCode(), gMCustomAdError == null ? "" : gMCustomAdError.getMessage()));
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawVideoPause() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onVideoPause();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawVideoProgressUpdate(long j, long j2) {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onProgressUpdate(j, j2);
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawVideoResume() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onVideoResume();
    }

    @Override // com.bytedance.msdk.api.v2.ad.custom.draw.IGMCustomDrawEvent
    public void callDrawVideoStart() {
        GMCustomTTBaseAd gMCustomTTBaseAd = this.f9102do;
        if (gMCustomTTBaseAd == null || gMCustomTTBaseAd.getGMVideoListener() == null) {
            return;
        }
        this.f9102do.getGMVideoListener().onVideoStart();
    }

    public final void checkClick(GMCustomBaseAdapter.CheckCallback checkCallback) {
        int i = this.f9137return;
        if (i < 60) {
            this.f9137return = i + 1;
            if (checkCallback != null) {
                checkCallback.callback();
                return;
            }
            return;
        }
        Logger.e("TTMediationSDK", "自定义Adapter click方法回调次数需要小于60次");
    }

    public final void checkShow(GMCustomBaseAdapter.CheckCallback checkCallback) {
        if (this.f9138static) {
            int i = this.f9136public;
            if (i < 2) {
                this.f9136public = i + 1;
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

    public List<View> getDirectDownloadViews() {
        return this.f9139switch;
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
        this.f9102do.setCustomNativeConvert(new IGMCustomNativeConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.draw.GMCustomDrawAd.1
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeConvert
            public void registerViewForInteractionInner(@Nullable Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, GMViewBinder gMViewBinder) {
                GMCustomDrawAd gMCustomDrawAd = GMCustomDrawAd.this;
                if (gMCustomDrawAd != null) {
                    try {
                        gMCustomDrawAd.f9138static = true;
                        gMCustomDrawAd.f9139switch = list3;
                        gMCustomDrawAd.registerViewForInteraction(activity, viewGroup, list, list2, gMViewBinder);
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
                GMCustomDrawAd.this.unregisterViewInner();
            }
        });
        this.f9102do.setCustomNativeExpressConvert(new IGMCustomNativeExpressConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.draw.GMCustomDrawAd.2
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeExpressConvert
            public View getExpressViewInner() {
                return GMCustomDrawAd.this.getExpressViewInner();
            }

            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeExpressConvert
            public void renderInner() {
                GMCustomDrawAd.this.renderInner();
            }
        });
        this.f9102do.setCustomNativeLifecycleConvert(new IGMCustomNativeLifecycleConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.draw.GMCustomDrawAd.3
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeLifecycleConvert
            public void onDestroyInner() {
                GMCustomDrawAd gMCustomDrawAd = GMCustomDrawAd.this;
                if (gMCustomDrawAd != null) {
                    try {
                        gMCustomDrawAd.onDestroy();
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
                GMCustomDrawAd gMCustomDrawAd = GMCustomDrawAd.this;
                if (gMCustomDrawAd != null) {
                    try {
                        gMCustomDrawAd.onPause();
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
                GMCustomDrawAd gMCustomDrawAd = GMCustomDrawAd.this;
                if (gMCustomDrawAd != null) {
                    try {
                        gMCustomDrawAd.onResume();
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                throw null;
            }
        });
        this.f9102do.setIGMCustomNativeDislikeConvert(new IGMCustomNativeDislikeConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.draw.GMCustomDrawAd.4
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeDislikeConvert
            public boolean hasDislike() {
                return GMCustomDrawAd.this.hasDislike();
            }
        });
        if (getBiddingPrice() > 0.0d) {
            this.f9102do.setCpm(getBiddingPrice());
        }
        this.f9102do.setIGMCustomNativeIsReadyStatusConvert(new IGMCustomNativeIsReadyStatusConvert() { // from class: com.bytedance.msdk.api.v2.ad.custom.draw.GMCustomDrawAd.5
            @Override // com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeIsReadyStatusConvert
            public GMAdConstant.AdIsReadyStatus isReadyStatus() {
                return GMCustomDrawAd.this.isReadyStatus();
            }
        });
        return this.f9102do;
    }

    public boolean hasDislike() {
        return false;
    }

    public GMAdConstant.AdIsReadyStatus isReadyStatus() {
        return GMAdConstant.AdIsReadyStatus.ADN_NO_READY_API;
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void registerViewForInteraction(@Nullable Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
    }

    public void render() {
    }

    public final void renderInner() {
        try {
            this.f9138static = true;
            render();
        } catch (Exception e) {
            e.printStackTrace();
        }
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
