package com.bytedance.msdk.api.v2.ad.nativeAd;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.nativeAd.TTNativeAd;
import com.bytedance.msdk.api.v2.GMAdDislike;
import com.bytedance.msdk.api.v2.GMDislikeCallback;
import com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMNativeUtil {
    public static List<TTNativeAd> GMsToTTs(List<GMNativeAd> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            Iterator<GMNativeAd> it = list.iterator();
            while (it.hasNext()) {
                final GMNativeAd next = it.next();
                TTNativeAd tTNativeAd = next == null ? null : new TTNativeAd() { // from class: com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeUtil.1
                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public boolean canAdReuse() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.canAdReuse();
                        }
                        return false;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void cancelDownload() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.cancelDownload();
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void destroy() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.destroy();
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void dislikeClick(String str, Map<String, Object> map) {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.dislikeClick(str, map);
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public String getActionText() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getActionText();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public int getAdImageMode() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getAdImageMode();
                        }
                        return 0;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public View getAdLogoView() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getAdLogoView();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public int getAdNetworkPlatformId() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getAdNetworkPlatformId();
                        }
                        return 0;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public String getAdNetworkPlatformName() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getAdNetworkPlatformName();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @NonNull
                    public String getAdNetworkRitId() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getAdNetworkRitId();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public GMAdEcpmInfo getBestEcpm() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getBestEcpm();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public String getDescription() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getDescription();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public GMAdDislike getDislikeDialog(Activity activity) {
                        return getDislikeDialog(activity, null);
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public int getDownloadStatus() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getDownloadStatus();
                        }
                        return -1;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public View getExpressView() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getExpressView();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public Map<String, Object> getExtraMsg() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getExtraMsg();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public GMNativeCustomVideoReporter getGMNativeCustomVideoReporter() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getGMNativeCustomVideoReporter();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public String getIconUrl() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getIconUrl();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public int getImageHeight() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getImageHeight();
                        }
                        return 0;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public List<String> getImageList() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getImageList();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public String getImageUrl() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getImageUrl();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public int getImageWidth() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getImageWidth();
                        }
                        return 0;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public int getInteractionType() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getInteractionType();
                        }
                        return 0;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public Map<String, Object> getMediaExtraInfo() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getMediaExtraInfo();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public GMNativeAdAppInfo getNativeAdAppInfo() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getNativeAdAppInfo();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public String getPackageName() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getPackageName();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @NonNull
                    public String getPreEcpm() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getPreEcpm();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public int getSdkNumType() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getSdkNumType();
                        }
                        return 0;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public GMAdEcpmInfo getShowEcpm() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getShowEcpm();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public String getSource() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getSource();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public double getStarRating() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getStarRating();
                        }
                        return 0.0d;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public TTBaseAd getTTBaseAd() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getTTBaseAd();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    @Nullable
                    public String getTitle() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getTitle();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public int getVideoHeight() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getVideoHeight();
                        }
                        return 0;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public String getVideoUrl() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getVideoUrl();
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public int getVideoWidth() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getVideoWidth();
                        }
                        return 0;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public boolean hasDislike() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.hasDislike();
                        }
                        return false;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public boolean isExpressAd() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.isExpressAd();
                        }
                        return false;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public boolean isHasShown() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.isHasShown();
                        }
                        return false;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public boolean isReady() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.isReady();
                        }
                        return false;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public boolean isServerBidding() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.isServerBidding();
                        }
                        return false;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void onPause() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.onPause();
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void pauseAppDownload() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.pauseAppDownload();
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void registerView(@NonNull ViewGroup viewGroup, @NonNull List<View> list2, @Nullable List<View> list3, GMViewBinder gMViewBinder) {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.registerView(viewGroup, list2, list3, gMViewBinder);
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void render() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.render();
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void resume() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.resume();
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void resumeAppDownload() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.resumeAppDownload();
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void setAppDownloadListener(GMAdAppDownloadListener gMAdAppDownloadListener) {
                        setTTAdAppDownloadListener(gMAdAppDownloadListener);
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void setDislikeCallback(Activity activity, GMDislikeCallback gMDislikeCallback) {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.setDislikeCallback(activity, gMDislikeCallback);
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void setNativeAdListener(GMNativeAdListener gMNativeAdListener) {
                        setTTNativeAdListener(gMNativeAdListener);
                    }

                    @Override // com.bytedance.msdk.api.nativeAd.TTNativeAd
                    public void setTTAdAppDownloadListener(GMAdAppDownloadListener gMAdAppDownloadListener) {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.setAppDownloadListener(gMAdAppDownloadListener);
                        }
                    }

                    @Override // com.bytedance.msdk.api.nativeAd.TTNativeAd
                    public void setTTAdatperCallback(ITTAdatperCallback iTTAdatperCallback) {
                    }

                    @Override // com.bytedance.msdk.api.nativeAd.TTNativeAd
                    public void setTTNativeAdListener(GMNativeAdListener gMNativeAdListener) {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.setNativeAdListener(gMNativeAdListener);
                        }
                    }

                    @Override // com.bytedance.msdk.api.nativeAd.TTNativeAd
                    public void setTTVideoListener(GMVideoListener gMVideoListener) {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.setVideoListener(gMVideoListener);
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void setUseCustomVideo(boolean z) {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.setUseCustomVideo(z);
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void setVideoListener(GMVideoListener gMVideoListener) {
                        setTTVideoListener(gMVideoListener);
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void unregisterView() {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.unregisterView();
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public GMAdDislike getDislikeDialog(Activity activity, Map<String, Object> map) {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            return gMNativeAd.getDislikeDialog(activity, map);
                        }
                        return null;
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void registerView(@NonNull Activity activity, @NonNull ViewGroup viewGroup, @NonNull List<View> list2, @Nullable List<View> list3, GMViewBinder gMViewBinder) {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.registerView(activity, viewGroup, list2, list3, gMViewBinder);
                        }
                    }

                    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
                    public void registerView(@NonNull Activity activity, @NonNull ViewGroup viewGroup, @NonNull List<View> list2, @Nullable List<View> list3, @Nullable List<View> list4, GMViewBinder gMViewBinder) {
                        GMNativeAd gMNativeAd = GMNativeAd.this;
                        if (gMNativeAd != null) {
                            gMNativeAd.registerView(activity, viewGroup, list2, list3, list4, gMViewBinder);
                        }
                    }
                };
                if (tTNativeAd != null) {
                    arrayList.add(tTNativeAd);
                }
            }
        }
        return arrayList;
    }
}
