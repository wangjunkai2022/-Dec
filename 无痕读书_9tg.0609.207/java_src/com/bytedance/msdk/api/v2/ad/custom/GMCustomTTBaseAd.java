package com.bytedance.msdk.api.v2.ad.custom;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.GMAdDislike;
import com.bytedance.msdk.api.v2.GMDislikeCallback;
import com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener;
import com.bytedance.msdk.api.v2.ad.custom.banner.GMCustomBannerAdapter;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomVideoAdapter;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeConvert;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeCustomizeVideoConvert;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeDislikeConvert;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeDislikeDialog;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeDownloadStatusControllerConvert;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeExpressConvert;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeIsReadyStatusConvert;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.IGMCustomNativeLifecycleConvert;
import com.bytedance.msdk.api.v2.ad.custom.splash.GMCustomSplashAdapter;
import com.bytedance.msdk.api.v2.ad.draw.GMDrawAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMCustomTTBaseAd extends TTBaseAd {

    /* renamed from: break  reason: not valid java name */
    public IGMCustomNativeCustomizeVideoConvert f9084break;

    /* renamed from: case  reason: not valid java name */
    public IGMCustomNativeExpressConvert f9085case;

    /* renamed from: catch  reason: not valid java name */
    public IGMCustomNativeDownloadStatusControllerConvert f9086catch;

    /* renamed from: do  reason: not valid java name */
    public GMCustomBaseAdapter f9087do;

    /* renamed from: else  reason: not valid java name */
    public IGMCustomNativeLifecycleConvert f9088else;

    /* renamed from: for  reason: not valid java name */
    public IGMCustomNativeDislikeDialog f9089for;

    /* renamed from: goto  reason: not valid java name */
    public IGMCustomNativeDislikeConvert f9090goto;

    /* renamed from: if  reason: not valid java name */
    public GMDislikeCallback f9091if;

    /* renamed from: new  reason: not valid java name */
    public Map<String, Object> f9092new = new HashMap();

    /* renamed from: this  reason: not valid java name */
    public IGMCustomNativeIsReadyStatusConvert f9093this;

    /* renamed from: try  reason: not valid java name */
    public IGMCustomNativeConvert f9094try;

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void bidLoseNotify(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        int lossReason = GMAdConstant.BiddingLossReason.OTHER.getLossReason();
        try {
            Object obj = map.get("bidding_lose_reason");
            if (obj instanceof GMAdConstant.BiddingLossReason) {
                lossReason = ((GMAdConstant.BiddingLossReason) obj).getLossReason();
            }
        } catch (Exception unused) {
        }
        int i = lossReason;
        GMCustomBaseAdapter gMCustomBaseAdapter = this.f9087do;
        if (gMCustomBaseAdapter != null) {
            gMCustomBaseAdapter.receiveBidResult(false, -1.0d, i, null);
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void bidWinNotify(Map<String, Object> map) {
        GMCustomBaseAdapter gMCustomBaseAdapter = this.f9087do;
        if (gMCustomBaseAdapter != null) {
            gMCustomBaseAdapter.receiveBidResult(true, getCpm(), -1, null);
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void cancelDownload() {
        IGMCustomNativeDownloadStatusControllerConvert iGMCustomNativeDownloadStatusControllerConvert = this.f9086catch;
        if (iGMCustomNativeDownloadStatusControllerConvert != null) {
            iGMCustomNativeDownloadStatusControllerConvert.cancelDownload();
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void dislikeClick(String str, Map<String, Object> map) {
        super.dislikeClick(str, map);
        IGMCustomNativeDislikeDialog iGMCustomNativeDislikeDialog = this.f9089for;
        if (iGMCustomNativeDislikeDialog != null) {
            iGMCustomNativeDislikeDialog.dislikeClick(str, map);
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public View getAdView() {
        GMCustomBaseAdapter gMCustomBaseAdapter = this.f9087do;
        if (gMCustomBaseAdapter != null && (gMCustomBaseAdapter instanceof GMCustomBannerAdapter)) {
            return ((GMCustomBannerAdapter) gMCustomBaseAdapter).getAdViewInner();
        }
        IGMCustomNativeExpressConvert iGMCustomNativeExpressConvert = this.f9085case;
        if (iGMCustomNativeExpressConvert != null) {
            return iGMCustomNativeExpressConvert.getExpressViewInner();
        }
        return null;
    }

    public GMDislikeCallback getDislikeCallback() {
        return this.f9091if;
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public GMAdDislike getDislikeDialog(Activity activity, Map<String, Object> map) {
        IGMCustomNativeDislikeDialog iGMCustomNativeDislikeDialog = this.f9089for;
        if (iGMCustomNativeDislikeDialog != null) {
            return iGMCustomNativeDislikeDialog.getDislikeDialog(activity, map);
        }
        return super.getDislikeDialog(activity, map);
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public int getDownloadStatus() {
        IGMCustomNativeDownloadStatusControllerConvert iGMCustomNativeDownloadStatusControllerConvert = this.f9086catch;
        if (iGMCustomNativeDownloadStatusControllerConvert != null) {
            return iGMCustomNativeDownloadStatusControllerConvert.getDownloadStatus();
        }
        return -1;
    }

    public GMAdAppDownloadListener getGMAdAppDownloadListener() {
        return this.mTTAdAppDownloadListener;
    }

    public GMDrawAdListener getGMDrawAdListener() {
        return this.mGMDrawAdListener;
    }

    public GMNativeAdListener getGMNativeAdListener() {
        return this.mTTNativeAdListener;
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public GMNativeCustomVideoReporter getGMNativeCustomVideoReporter() {
        IGMCustomNativeCustomizeVideoConvert iGMCustomNativeCustomizeVideoConvert = this.f9084break;
        if (iGMCustomNativeCustomizeVideoConvert != null) {
            return iGMCustomNativeCustomizeVideoConvert.getGMNativeCustomVideoReporter();
        }
        return null;
    }

    public GMVideoListener getGMVideoListener() {
        return this.mTTVideoListener;
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public Map<String, Object> getMediaExtraInfo() {
        return this.f9092new;
    }

    public ITTAdatperCallback getTTAdapterCallback() {
        return this.mTTAdatperCallback;
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public String getVideoUrl() {
        IGMCustomNativeCustomizeVideoConvert iGMCustomNativeCustomizeVideoConvert = this.f9084break;
        if (iGMCustomNativeCustomizeVideoConvert != null) {
            return iGMCustomNativeCustomizeVideoConvert.getVideoUrl();
        }
        return null;
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public boolean hasDestroyed() {
        return false;
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public boolean hasDislike() {
        IGMCustomNativeDislikeConvert iGMCustomNativeDislikeConvert = this.f9090goto;
        if (iGMCustomNativeDislikeConvert != null) {
            return iGMCustomNativeDislikeConvert.hasDislike();
        }
        return super.hasDislike();
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public final GMAdConstant.AdIsReadyStatus isReadyStatus() {
        IGMCustomNativeIsReadyStatusConvert iGMCustomNativeIsReadyStatusConvert = this.f9093this;
        if (iGMCustomNativeIsReadyStatusConvert != null) {
            return iGMCustomNativeIsReadyStatusConvert.isReadyStatus();
        }
        GMCustomBaseAdapter gMCustomBaseAdapter = this.f9087do;
        if (gMCustomBaseAdapter != null) {
            return gMCustomBaseAdapter.isReadyStatusInner();
        }
        return super.isReadyStatus();
    }

    public final void nativeDislikeClick(String str) {
        GMCustomBaseAdapter gMCustomBaseAdapter = this.f9087do;
        if (gMCustomBaseAdapter != null) {
            gMCustomBaseAdapter.nativeDislikeClick(this, str);
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void onDestroy() {
        super.onDestroy();
        IGMCustomNativeLifecycleConvert iGMCustomNativeLifecycleConvert = this.f9088else;
        if (iGMCustomNativeLifecycleConvert != null) {
            iGMCustomNativeLifecycleConvert.onDestroyInner();
            return;
        }
        GMCustomBaseAdapter gMCustomBaseAdapter = this.f9087do;
        if (gMCustomBaseAdapter != null) {
            try {
                gMCustomBaseAdapter.onDestroy();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void onPause() {
        super.onPause();
        IGMCustomNativeLifecycleConvert iGMCustomNativeLifecycleConvert = this.f9088else;
        if (iGMCustomNativeLifecycleConvert != null) {
            iGMCustomNativeLifecycleConvert.onPauseInner();
            return;
        }
        GMCustomBaseAdapter gMCustomBaseAdapter = this.f9087do;
        if (gMCustomBaseAdapter != null) {
            try {
                gMCustomBaseAdapter.onPause();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void onResume() {
        super.onResume();
        IGMCustomNativeLifecycleConvert iGMCustomNativeLifecycleConvert = this.f9088else;
        if (iGMCustomNativeLifecycleConvert != null) {
            iGMCustomNativeLifecycleConvert.onResumeInner();
            return;
        }
        GMCustomBaseAdapter gMCustomBaseAdapter = this.f9087do;
        if (gMCustomBaseAdapter != null) {
            try {
                gMCustomBaseAdapter.onResume();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void pauseAppDownload() {
        IGMCustomNativeDownloadStatusControllerConvert iGMCustomNativeDownloadStatusControllerConvert = this.f9086catch;
        if (iGMCustomNativeDownloadStatusControllerConvert != null) {
            iGMCustomNativeDownloadStatusControllerConvert.pauseAppDownload();
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void registerViewForInteraction(@NonNull ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
        registerViewForInteraction(null, viewGroup, list, list2, null, gMViewBinder);
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void render() {
        IGMCustomNativeExpressConvert iGMCustomNativeExpressConvert = this.f9085case;
        if (iGMCustomNativeExpressConvert != null) {
            iGMCustomNativeExpressConvert.renderInner();
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void resumeAppDownload() {
        IGMCustomNativeDownloadStatusControllerConvert iGMCustomNativeDownloadStatusControllerConvert = this.f9086catch;
        if (iGMCustomNativeDownloadStatusControllerConvert != null) {
            iGMCustomNativeDownloadStatusControllerConvert.resumeAppDownload();
        }
    }

    public void setCustomNativeConvert(IGMCustomNativeConvert iGMCustomNativeConvert) {
        this.f9094try = iGMCustomNativeConvert;
    }

    public void setCustomNativeCustomizeVideoConvert(IGMCustomNativeCustomizeVideoConvert iGMCustomNativeCustomizeVideoConvert) {
        this.f9084break = iGMCustomNativeCustomizeVideoConvert;
    }

    public void setCustomNativeDownloadStatusControllerConvert(IGMCustomNativeDownloadStatusControllerConvert iGMCustomNativeDownloadStatusControllerConvert) {
        this.f9086catch = iGMCustomNativeDownloadStatusControllerConvert;
    }

    public void setCustomNativeExpressConvert(IGMCustomNativeExpressConvert iGMCustomNativeExpressConvert) {
        this.f9085case = iGMCustomNativeExpressConvert;
    }

    public void setCustomNativeLifecycleConvert(IGMCustomNativeLifecycleConvert iGMCustomNativeLifecycleConvert) {
        this.f9088else = iGMCustomNativeLifecycleConvert;
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void setDislikeCallback(Activity activity, GMDislikeCallback gMDislikeCallback) {
        super.setDislikeCallback(activity, gMDislikeCallback);
        this.f9091if = gMDislikeCallback;
    }

    public void setDislikeDialogCallBack(IGMCustomNativeDislikeDialog iGMCustomNativeDislikeDialog) {
        this.f9089for = iGMCustomNativeDislikeDialog;
    }

    public void setGMCustomBaseAdapter(GMCustomBaseAdapter gMCustomBaseAdapter) {
        this.f9087do = gMCustomBaseAdapter;
    }

    public void setIGMCustomNativeDislikeConvert(IGMCustomNativeDislikeConvert iGMCustomNativeDislikeConvert) {
        this.f9090goto = iGMCustomNativeDislikeConvert;
    }

    public void setIGMCustomNativeIsReadyStatusConvert(IGMCustomNativeIsReadyStatusConvert iGMCustomNativeIsReadyStatusConvert) {
        this.f9093this = iGMCustomNativeIsReadyStatusConvert;
    }

    public void setMediaExtraInfo(Map<String, Object> map) {
        if (map != null) {
            this.f9092new.putAll(map);
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void showAd(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
        GMCustomBaseAdapter gMCustomBaseAdapter = this.f9087do;
        if (gMCustomBaseAdapter == null || !(gMCustomBaseAdapter instanceof GMCustomVideoAdapter)) {
            return;
        }
        ((GMCustomVideoAdapter) gMCustomBaseAdapter).showAdInner(activity);
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void showSplashAd(ViewGroup viewGroup) {
        GMCustomBaseAdapter gMCustomBaseAdapter = this.f9087do;
        if (gMCustomBaseAdapter == null || !(gMCustomBaseAdapter instanceof GMCustomSplashAdapter)) {
            return;
        }
        ((GMCustomSplashAdapter) gMCustomBaseAdapter).showAdInner(viewGroup);
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void unregisterView() {
        IGMCustomNativeConvert iGMCustomNativeConvert = this.f9094try;
        if (iGMCustomNativeConvert != null) {
            iGMCustomNativeConvert.unregisterViewInner();
        }
    }

    @Override // com.bytedance.msdk.base.TTBaseAd
    public void registerViewForInteraction(@NonNull Activity activity, @NonNull ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, GMViewBinder gMViewBinder) {
        IGMCustomNativeConvert iGMCustomNativeConvert = this.f9094try;
        if (iGMCustomNativeConvert != null) {
            iGMCustomNativeConvert.registerViewForInteractionInner(activity, viewGroup, list, list2, list3, gMViewBinder);
        }
    }
}
