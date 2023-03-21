package com.bytedance.msdk.api.v2.ad;

import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.BaiduExtraOptions;
import com.bytedance.msdk.api.GDTExtraOption;
import com.bytedance.msdk.api.TTVideoOption;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBanner;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.api.v2.slot.GMAdSlotDraw;
import com.bytedance.msdk.api.v2.slot.GMAdSlotFullVideo;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitial;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitialFull;
import com.bytedance.msdk.api.v2.slot.GMAdSlotNative;
import com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo;
import com.bytedance.msdk.api.v2.slot.GMAdSlotSplash;
import com.bytedance.msdk.api.v2.slot.paltform.GMAdSlotGDTOption;
import java.util.Map;

/* loaded from: classes8.dex */
public class AdUtils {
    public static AdSlot convertGMAdSlotBase2AdSlot(GMAdSlotBase gMAdSlotBase) {
        AdSlot.Builder builder;
        if (gMAdSlotBase != null) {
            builder = new AdSlot.Builder();
            builder.setBidNotify(gMAdSlotBase.isBidNotify());
            builder.setTestSlotId(gMAdSlotBase.getTestSlotId());
            if (gMAdSlotBase instanceof GMAdSlotSplash) {
                builder.setTTVideoOption(gMAdSlotBase.createTTVideoOption(((GMAdSlotSplash) gMAdSlotBase).isSplashPreLoad()));
            } else {
                builder.setTTVideoOption(gMAdSlotBase.createTTVideoOption(false));
            }
            builder.setTTRequestExtraParams(gMAdSlotBase.getTTRequestExtraParams());
            builder.setDownloadType(gMAdSlotBase.getDownloadType());
            builder.setV2Request(true);
        } else {
            builder = null;
        }
        if (gMAdSlotBase instanceof GMAdSlotRewardVideo) {
            GMAdSlotRewardVideo gMAdSlotRewardVideo = (GMAdSlotRewardVideo) gMAdSlotBase;
            builder.setRewardName(gMAdSlotRewardVideo.getRewardName());
            builder.setRewardAmount(gMAdSlotRewardVideo.getRewardAmount());
            builder.setCustomData(gMAdSlotRewardVideo.getCustomData());
            builder.setUserID(gMAdSlotRewardVideo.getUserID());
            builder.setOrientation(gMAdSlotRewardVideo.getOrientation());
            AdSlot build = builder.build();
            build.setAdType(7);
            build.setAdCount(1);
            return build;
        } else if (gMAdSlotBase instanceof GMAdSlotFullVideo) {
            GMAdSlotFullVideo gMAdSlotFullVideo = (GMAdSlotFullVideo) gMAdSlotBase;
            builder.setUserID(gMAdSlotFullVideo.getUserID());
            builder.setOrientation(gMAdSlotFullVideo.getOrientation());
            builder.setRewardName(gMAdSlotFullVideo.getRewardName());
            builder.setRewardAmount(gMAdSlotFullVideo.getRewardAmount());
            builder.setCustomData(gMAdSlotFullVideo.getCustomData());
            AdSlot build2 = builder.build();
            build2.setAdType(8);
            build2.setAdCount(1);
            return build2;
        } else if (gMAdSlotBase instanceof GMAdSlotInterstitialFull) {
            GMAdSlotInterstitialFull gMAdSlotInterstitialFull = (GMAdSlotInterstitialFull) gMAdSlotBase;
            builder.setImageAdSize(gMAdSlotInterstitialFull.getWidth(), gMAdSlotInterstitialFull.getHeight());
            builder.setUserID(gMAdSlotInterstitialFull.getUserID());
            builder.setOrientation(gMAdSlotInterstitialFull.getOrientation());
            builder.setRewardName(gMAdSlotInterstitialFull.getRewardName());
            builder.setRewardAmount(gMAdSlotInterstitialFull.getRewardAmount());
            builder.setCustomData(gMAdSlotInterstitialFull.getCustomData());
            AdSlot build3 = builder.build();
            build3.setAdType(10);
            build3.setAdCount(1);
            return build3;
        } else if (gMAdSlotBase instanceof GMAdSlotSplash) {
            GMAdSlotSplash gMAdSlotSplash = (GMAdSlotSplash) gMAdSlotBase;
            builder.setImageAdSize(gMAdSlotSplash.getWidth(), gMAdSlotSplash.getHeight());
            builder.setUserID(gMAdSlotSplash.getUserID());
            builder.setSplashButtonType(gMAdSlotSplash.getSplashButtonType());
            builder.setForceLoadBottom(gMAdSlotSplash.isForceLoadBottom());
            builder.setSplashShakeButton(gMAdSlotSplash.getSplashShakeButton());
            AdSlot build4 = builder.build();
            build4.setAdType(3);
            build4.setAdCount(1);
            return build4;
        } else if (gMAdSlotBase instanceof GMAdSlotNative) {
            GMAdSlotNative gMAdSlotNative = (GMAdSlotNative) gMAdSlotBase;
            builder.setImageAdSize(gMAdSlotNative.getWidth(), gMAdSlotNative.getHeight());
            builder.setAdCount(gMAdSlotNative.getAdCount());
            builder.setAdStyleType(gMAdSlotNative.getAdStyleType());
            builder.setAdmobNativeAdOptions(gMAdSlotNative.getAdmobNativeAdOptions());
            builder.setUserID(gMAdSlotNative.getUserID());
            GMAdSlotGDTOption gMAdSlotGDTOption = gMAdSlotNative.getGMAdSlotGDTOption();
            if (gMAdSlotGDTOption != null) {
                builder.setGdtNativeAdLogoParams(gMAdSlotGDTOption.getNativeAdLogoParams());
            }
            AdSlot build5 = builder.build();
            build5.setAdType(5);
            if (build5.getAdCount() > 3) {
                build5.setAdCount(3);
            } else if (build5.getAdCount() < 1) {
                build5.setAdCount(1);
            }
            return build5;
        } else if (gMAdSlotBase instanceof GMAdSlotDraw) {
            GMAdSlotDraw gMAdSlotDraw = (GMAdSlotDraw) gMAdSlotBase;
            builder.setImageAdSize(gMAdSlotDraw.getWidth(), gMAdSlotDraw.getHeight());
            builder.setAdCount(gMAdSlotDraw.getAdCount());
            AdSlot build6 = builder.build();
            build6.setAdType(9);
            if (build6.getAdCount() > 3) {
                build6.setAdCount(3);
            } else if (build6.getAdCount() < 1) {
                build6.setAdCount(1);
            }
            return build6;
        } else if (gMAdSlotBase instanceof GMAdSlotBanner) {
            GMAdSlotBanner gMAdSlotBanner = (GMAdSlotBanner) gMAdSlotBase;
            builder.setImageAdSize(gMAdSlotBanner.getWidth(), gMAdSlotBanner.getHeight());
            builder.setBannerSize(gMAdSlotBanner.getBannerSize());
            AdSlot build7 = builder.build();
            build7.setAdType(1);
            build7.setAdCount(1);
            return build7;
        } else if (gMAdSlotBase instanceof GMAdSlotInterstitial) {
            GMAdSlotInterstitial gMAdSlotInterstitial = (GMAdSlotInterstitial) gMAdSlotBase;
            builder.setImageAdSize(gMAdSlotInterstitial.getWidth(), gMAdSlotInterstitial.getHeight());
            AdSlot build8 = builder.build();
            build8.setAdType(2);
            build8.setAdCount(1);
            return build8;
        } else {
            return builder.build();
        }
    }

    public static GMAdSlotBase covertAdSlot2GMAdSlotBase(AdSlot adSlot) {
        int adType = adSlot.getAdType();
        if (adType != 1) {
            if (adType != 2) {
                if (adType != 3) {
                    if (adType != 5) {
                        if (adType != 10) {
                            if (adType != 7) {
                                if (adType != 8) {
                                    return null;
                                }
                                return getAdSlotFullVideo(adSlot);
                            }
                            return getAdSlotRewardVideo(adSlot);
                        }
                        return getAdSlotInterstitialFull(adSlot);
                    }
                    return getAdSlotNative(adSlot);
                }
                return getAdSlotSplash(adSlot);
            }
            return getAdSlotInterstitial(adSlot);
        }
        return getAdSlotBanner(adSlot);
    }

    public static GMAdSlotBanner getAdSlotBanner(AdSlot adSlot) {
        if (adSlot != null) {
            GMAdSlotBanner.Builder downloadType = new GMAdSlotBanner.Builder().setBidNotify(adSlot.isBidNotify()).setTestSlotId(adSlot.getTestSlotId()).setDownloadType(adSlot.getDownloadType());
            for (Map.Entry<String, Object> entry : adSlot.getReuestParam().getExtraObject().entrySet()) {
                downloadType.setExtraObject(entry.getKey(), entry.getValue());
            }
            TTVideoOption tTVideoOption = adSlot.getTTVideoOption();
            if (tTVideoOption != null) {
                downloadType.setMuted(tTVideoOption.isMuted());
                downloadType.setVolume(tTVideoOption.getAdmobAppVolume());
                downloadType.setUseSurfaceView(tTVideoOption.useSurfaceView());
                GDTExtraOption gDTExtraOption = tTVideoOption.getGDTExtraOption();
                if (gDTExtraOption != null) {
                    downloadType.setGMAdSlotGDTOption(gDTExtraOption.getGMGDTExtraOption().build());
                }
                BaiduExtraOptions baiduExtraOption = tTVideoOption.getBaiduExtraOption();
                if (baiduExtraOption != null) {
                    downloadType.setGMAdSlotBaiduOption(baiduExtraOption.getGMBaiduExtra());
                }
            }
            downloadType.setImageAdSize(adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
            downloadType.setBannerSize(adSlot.getBannerSize());
            downloadType.setUserID(adSlot.getUserID());
            return downloadType.build();
        }
        return null;
    }

    public static GMAdSlotFullVideo getAdSlotFullVideo(AdSlot adSlot) {
        if (adSlot != null) {
            GMAdSlotFullVideo.Builder downloadType = new GMAdSlotFullVideo.Builder().setBidNotify(adSlot.isBidNotify()).setTestSlotId(adSlot.getTestSlotId()).setDownloadType(adSlot.getDownloadType());
            for (Map.Entry<String, Object> entry : adSlot.getReuestParam().getExtraObject().entrySet()) {
                downloadType.setExtraObject(entry.getKey(), entry.getValue());
            }
            TTVideoOption tTVideoOption = adSlot.getTTVideoOption();
            if (tTVideoOption != null) {
                downloadType.setMuted(tTVideoOption.isMuted());
                downloadType.setVolume(tTVideoOption.getAdmobAppVolume());
                downloadType.setUseSurfaceView(tTVideoOption.useSurfaceView());
                GDTExtraOption gDTExtraOption = tTVideoOption.getGDTExtraOption();
                if (gDTExtraOption != null) {
                    downloadType.setGMAdSlotGDTOption(gDTExtraOption.getGMGDTExtraOption().build());
                }
                BaiduExtraOptions baiduExtraOption = tTVideoOption.getBaiduExtraOption();
                if (baiduExtraOption != null) {
                    downloadType.setGMAdSlotBaiduOption(baiduExtraOption.getGMBaiduExtra());
                }
            }
            if (adSlot.getOrientation() == 2) {
                downloadType.setOrientation(2);
            } else {
                downloadType.setOrientation(1);
            }
            downloadType.setUserID(adSlot.getUserID());
            downloadType.setCustomData(adSlot.getCustomData());
            downloadType.setRewardAmount(adSlot.getRewardAmount());
            downloadType.setRewardName(adSlot.getRewardName());
            return downloadType.build();
        }
        return null;
    }

    public static GMAdSlotInterstitial getAdSlotInterstitial(AdSlot adSlot) {
        if (adSlot != null) {
            GMAdSlotInterstitial.Builder downloadType = new GMAdSlotInterstitial.Builder().setBidNotify(adSlot.isBidNotify()).setTestSlotId(adSlot.getTestSlotId()).setDownloadType(adSlot.getDownloadType());
            for (Map.Entry<String, Object> entry : adSlot.getReuestParam().getExtraObject().entrySet()) {
                downloadType.setExtraObject(entry.getKey(), entry.getValue());
            }
            TTVideoOption tTVideoOption = adSlot.getTTVideoOption();
            if (tTVideoOption != null) {
                downloadType.setMuted(tTVideoOption.isMuted());
                downloadType.setVolume(tTVideoOption.getAdmobAppVolume());
                downloadType.setUseSurfaceView(tTVideoOption.useSurfaceView());
                GDTExtraOption gDTExtraOption = tTVideoOption.getGDTExtraOption();
                if (gDTExtraOption != null) {
                    downloadType.setGMAdSlotGDTOption(gDTExtraOption.getGMGDTExtraOption().build());
                }
                BaiduExtraOptions baiduExtraOption = tTVideoOption.getBaiduExtraOption();
                if (baiduExtraOption != null) {
                    downloadType.setGMAdSlotBaiduOption(baiduExtraOption.getGMBaiduExtra());
                }
            }
            downloadType.setImageAdSize(adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
            return downloadType.build();
        }
        return null;
    }

    public static GMAdSlotInterstitialFull getAdSlotInterstitialFull(AdSlot adSlot) {
        if (adSlot != null) {
            GMAdSlotInterstitialFull.Builder downloadType = new GMAdSlotInterstitialFull.Builder().setBidNotify(adSlot.isBidNotify()).setTestSlotId(adSlot.getTestSlotId()).setDownloadType(adSlot.getDownloadType());
            for (Map.Entry<String, Object> entry : adSlot.getReuestParam().getExtraObject().entrySet()) {
                downloadType.setExtraObject(entry.getKey(), entry.getValue());
            }
            TTVideoOption tTVideoOption = adSlot.getTTVideoOption();
            if (tTVideoOption != null) {
                downloadType.setMuted(tTVideoOption.isMuted());
                downloadType.setVolume(tTVideoOption.getAdmobAppVolume());
                downloadType.setUseSurfaceView(tTVideoOption.useSurfaceView());
                GDTExtraOption gDTExtraOption = tTVideoOption.getGDTExtraOption();
                if (gDTExtraOption != null) {
                    downloadType.setGMAdSlotGDTOption(gDTExtraOption.getGMGDTExtraOption().build());
                }
                BaiduExtraOptions baiduExtraOption = tTVideoOption.getBaiduExtraOption();
                if (baiduExtraOption != null) {
                    downloadType.setGMAdSlotBaiduOption(baiduExtraOption.getGMBaiduExtra());
                }
            }
            if (adSlot.getOrientation() == 2) {
                downloadType.setOrientation(2);
            } else {
                downloadType.setOrientation(1);
            }
            downloadType.setImageAdSize(adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
            downloadType.setUserID(adSlot.getUserID());
            downloadType.setCustomData(adSlot.getCustomData());
            downloadType.setRewardAmount(adSlot.getRewardAmount());
            downloadType.setRewardName(adSlot.getRewardName());
            return downloadType.build();
        }
        return null;
    }

    public static GMAdSlotNative getAdSlotNative(AdSlot adSlot) {
        if (adSlot != null) {
            GMAdSlotNative.Builder downloadType = new GMAdSlotNative.Builder().setBidNotify(adSlot.isBidNotify()).setTestSlotId(adSlot.getTestSlotId()).setDownloadType(adSlot.getDownloadType());
            for (Map.Entry<String, Object> entry : adSlot.getReuestParam().getExtraObject().entrySet()) {
                downloadType.setExtraObject(entry.getKey(), entry.getValue());
            }
            TTVideoOption tTVideoOption = adSlot.getTTVideoOption();
            if (tTVideoOption != null) {
                downloadType.setMuted(tTVideoOption.isMuted());
                downloadType.setVolume(tTVideoOption.getAdmobAppVolume());
                downloadType.setUseSurfaceView(tTVideoOption.useSurfaceView());
                GDTExtraOption gDTExtraOption = tTVideoOption.getGDTExtraOption();
                if (gDTExtraOption != null) {
                    GMAdSlotGDTOption.Builder gMGDTExtraOption = gDTExtraOption.getGMGDTExtraOption();
                    gMGDTExtraOption.setNativeAdLogoParams(adSlot.getGdtNativeAdLogoParams());
                    downloadType.setGMAdSlotGDTOption(gMGDTExtraOption.build());
                }
                BaiduExtraOptions baiduExtraOption = tTVideoOption.getBaiduExtraOption();
                if (baiduExtraOption != null) {
                    downloadType.setGMAdSlotBaiduOption(baiduExtraOption.getGMBaiduExtra());
                }
            }
            downloadType.setImageAdSize(adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
            downloadType.setAdCount(adSlot.getAdCount());
            downloadType.setAdStyleType(adSlot.getAdStyleType());
            downloadType.setAdmobNativeAdOptions(adSlot.getAdmobNativeAdOptions());
            downloadType.setUserID(adSlot.getUserID());
            return downloadType.build();
        }
        return null;
    }

    public static GMAdSlotRewardVideo getAdSlotRewardVideo(AdSlot adSlot) {
        if (adSlot != null) {
            GMAdSlotRewardVideo.Builder downloadType = new GMAdSlotRewardVideo.Builder().setBidNotify(adSlot.isBidNotify()).setTestSlotId(adSlot.getTestSlotId()).setDownloadType(adSlot.getDownloadType());
            for (Map.Entry<String, Object> entry : adSlot.getReuestParam().getExtraObject().entrySet()) {
                downloadType.setExtraObject(entry.getKey(), entry.getValue());
            }
            TTVideoOption tTVideoOption = adSlot.getTTVideoOption();
            if (tTVideoOption != null) {
                downloadType.setMuted(tTVideoOption.isMuted());
                downloadType.setVolume(tTVideoOption.getAdmobAppVolume());
                downloadType.setUseSurfaceView(tTVideoOption.useSurfaceView());
                GDTExtraOption gDTExtraOption = tTVideoOption.getGDTExtraOption();
                if (gDTExtraOption != null) {
                    downloadType.setGMAdSlotGDTOption(gDTExtraOption.getGMGDTExtraOption().build());
                }
                BaiduExtraOptions baiduExtraOption = tTVideoOption.getBaiduExtraOption();
                if (baiduExtraOption != null) {
                    downloadType.setGMAdSlotBaiduOption(baiduExtraOption.getGMBaiduExtra());
                }
            }
            if (adSlot.getOrientation() == 2) {
                downloadType.setOrientation(2);
            } else {
                downloadType.setOrientation(1);
            }
            downloadType.setUserID(adSlot.getUserID());
            downloadType.setCustomData(adSlot.getCustomData());
            downloadType.setRewardAmount(adSlot.getRewardAmount());
            downloadType.setRewardName(adSlot.getRewardName());
            return downloadType.build();
        }
        return null;
    }

    public static GMAdSlotSplash getAdSlotSplash(AdSlot adSlot) {
        if (adSlot != null) {
            GMAdSlotSplash.Builder forceLoadBottom = new GMAdSlotSplash.Builder().setSplashButtonType(adSlot.getSplashButtonType()).setImageAdSize(adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight()).setUserID(adSlot.getUserID()).setBidNotify(adSlot.isBidNotify()).setTestSlotId(adSlot.getTestSlotId()).setDownloadType(adSlot.getDownloadType()).setSplashShakeButton(adSlot.getSplashShakeButton()).setForceLoadBottom(adSlot.isForceLoadBottom());
            for (Map.Entry<String, Object> entry : adSlot.getReuestParam().getExtraObject().entrySet()) {
                forceLoadBottom.setExtraObject(entry.getKey(), entry.getValue());
            }
            TTVideoOption tTVideoOption = adSlot.getTTVideoOption();
            if (tTVideoOption != null) {
                forceLoadBottom.setMuted(tTVideoOption.isMuted());
                forceLoadBottom.setVolume(tTVideoOption.getAdmobAppVolume());
                forceLoadBottom.setUseSurfaceView(tTVideoOption.useSurfaceView());
                GDTExtraOption gDTExtraOption = tTVideoOption.getGDTExtraOption();
                if (gDTExtraOption != null) {
                    forceLoadBottom.setGMAdSlotGDTOption(gDTExtraOption.getGMGDTExtraOption().build());
                    forceLoadBottom.setSplashPreLoad(gDTExtraOption.isSplashPreLoad());
                }
                BaiduExtraOptions baiduExtraOption = tTVideoOption.getBaiduExtraOption();
                if (baiduExtraOption != null) {
                    forceLoadBottom.setGMAdSlotBaiduOption(baiduExtraOption.getGMBaiduExtra());
                }
            }
            return forceLoadBottom.build();
        }
        return null;
    }
}
