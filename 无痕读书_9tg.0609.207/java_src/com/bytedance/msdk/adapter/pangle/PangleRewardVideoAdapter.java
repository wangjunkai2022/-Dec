package com.bytedance.msdk.adapter.pangle;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.ad.GMRewardBaseAdapter;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener;
import com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo;
import com.bytedance.msdk.base.TTBaseAd;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes8.dex */
public class PangleRewardVideoAdapter extends GMRewardBaseAdapter {
    public static final String TAG = "PgRewardVideoAdapter";
    public static final String VERSION_00 = "0.0";
    public static final String VERSION_4400 = "4.4.0.0";

    /* renamed from: extends  reason: not valid java name */
    public PangleRewardVideo f8707extends;

    /* renamed from: finally  reason: not valid java name */
    public Context f8708finally;

    /* loaded from: classes8.dex */
    public class PangleRewardVideo extends TTBaseAd {

        /* renamed from: do  reason: not valid java name */
        public TTRewardVideoAd f8709do;

        /* renamed from: for  reason: not valid java name */
        public boolean f8710for;

        /* renamed from: if  reason: not valid java name */
        public boolean f8711if;

        /* renamed from: new  reason: not valid java name */
        public TTAdNative.RewardVideoAdListener f8712new = new AnonymousClass1();

        /* renamed from: com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter$PangleRewardVideo$1  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class AnonymousClass1 implements TTAdNative.RewardVideoAdListener {
            public AnonymousClass1() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
            public void onError(int i, String str) {
                Logger.e("TTMediationSDK", "pangle_reward_onError code:" + i + "  message:" + str);
                PangleRewardVideo pangleRewardVideo = PangleRewardVideo.this;
                pangleRewardVideo.f8711if = false;
                PangleRewardVideoAdapter.this.notifyAdFailed(new AdError(i, str));
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
            public void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd) {
                Logger.e("TTMediationSDK", "pangle_reward_onRewardVideoAdLoad");
                if (tTRewardVideoAd == null) {
                    PangleRewardVideoAdapter.this.notifyAdFailed(new AdError(AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG));
                    return;
                }
                PangleRewardVideo pangleRewardVideo = PangleRewardVideo.this;
                pangleRewardVideo.f8709do = tTRewardVideoAd;
                pangleRewardVideo.setExpressAd(true);
                PangleRewardVideo pangleRewardVideo2 = PangleRewardVideo.this;
                pangleRewardVideo2.setInteractionType(pangleRewardVideo2.f8709do.getInteractionType());
                Map<String, Object> mediaExtraInfo = PangleRewardVideo.this.f8709do.getMediaExtraInfo();
                if (PangleRewardVideoAdapter.this.isClientBidding() && mediaExtraInfo != null) {
                    double value = PangleAdapterUtils.getValue(mediaExtraInfo.get("price"));
                    Logger.d("TTMediationSDK_ECMP", TTLogUtil.getTagThirdLevelById(PangleRewardVideoAdapter.this.getAdapterRit(), PangleRewardVideoAdapter.this.getAdSlotId()) + "pangle reward 返回的 cpm价格：" + value);
                    PangleRewardVideo pangleRewardVideo3 = PangleRewardVideo.this;
                    if (value <= 0.0d) {
                        value = 0.0d;
                    }
                    pangleRewardVideo3.setCpm(value);
                }
                if (mediaExtraInfo != null) {
                    Object obj = mediaExtraInfo.get("materialMetaIsFromPreload");
                    if (obj instanceof Boolean) {
                        PangleRewardVideo.this.f8710for = ((Boolean) obj).booleanValue();
                        StringBuilder m1016super = Cgoto.m1016super("pangle 激励 返回的adnPreload：");
                        m1016super.append(PangleRewardVideo.this.f8710for);
                        Logger.d("TTMediationSDK", m1016super.toString());
                    }
                }
                PangleRewardVideo pangleRewardVideo4 = PangleRewardVideo.this;
                pangleRewardVideo4.f8711if = true;
                pangleRewardVideo4.f8709do.setRewardPlayAgainInteractionListener(new TTRewardVideoAd.RewardAdInteractionListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.PangleRewardVideo.1.1
                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onAdClose() {
                        Logger.e("TTMediationSDK", "pangle_reward:onAdClose-----------2");
                        ITTAdatperCallback iTTAdatperCallback = PangleRewardVideo.this.mTTAdatperRewardPlayAgainCallback;
                        if (iTTAdatperCallback instanceof GMRewardedAdListener) {
                            ((GMRewardedAdListener) iTTAdatperCallback).onRewardedAdClosed();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onAdShow() {
                        Logger.e("TTMediationSDK", "pangle_reward:onAdShow-----------2");
                        ITTAdatperCallback iTTAdatperCallback = PangleRewardVideo.this.mTTAdatperRewardPlayAgainCallback;
                        if (iTTAdatperCallback instanceof GMRewardedAdListener) {
                            ((GMRewardedAdListener) iTTAdatperCallback).onRewardedAdShow();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onAdVideoBarClick() {
                        Logger.e("TTMediationSDK", "pangle_reward:onAdVideoBarClick---------2");
                        ITTAdatperCallback iTTAdatperCallback = PangleRewardVideo.this.mTTAdatperRewardPlayAgainCallback;
                        if (iTTAdatperCallback instanceof GMRewardedAdListener) {
                            ((GMRewardedAdListener) iTTAdatperCallback).onRewardClick();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onRewardArrived(final boolean z, final int i, final Bundle bundle) {
                        if (PangleRewardVideo.m3577do(PangleRewardVideo.this)) {
                            return;
                        }
                        Logger.e("TTMediationSDK", "pangle_reward:onRewardArrived-------------2");
                        ITTAdatperCallback iTTAdatperCallback = PangleRewardVideo.this.mTTAdatperRewardPlayAgainCallback;
                        if (iTTAdatperCallback instanceof GMRewardedAdListener) {
                            ((GMRewardedAdListener) iTTAdatperCallback).onRewardVerify(new RewardItem() { // from class: com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.PangleRewardVideo.1.1.2
                                @Override // com.bytedance.msdk.api.reward.RewardItem
                                public float getAmount() {
                                    Bundle bundle2 = bundle;
                                    float f = bundle2 != null ? bundle2.getFloat(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_AMOUNT) : 0.0f;
                                    if (f >= 0.0f) {
                                        return f;
                                    }
                                    GMAdSlotRewardVideo gMAdSlotRewardVideo = PangleRewardVideoAdapter.this.mGMAdSlotRewardVideo;
                                    if (gMAdSlotRewardVideo != null) {
                                        return gMAdSlotRewardVideo.getRewardAmount();
                                    }
                                    return 0.0f;
                                }

                                @Override // com.bytedance.msdk.api.reward.RewardItem
                                public Map<String, Object> getCustomData() {
                                    HashMap hashMap = new HashMap();
                                    hashMap.put(RewardItem.KEY_EXTRA_INFO, bundle);
                                    hashMap.put(RewardItem.KEY_REWARD_TYPE, Integer.valueOf(i));
                                    return hashMap;
                                }

                                @Override // com.bytedance.msdk.api.reward.RewardItem
                                public String getRewardName() {
                                    Bundle bundle2 = bundle;
                                    String string = bundle2 != null ? bundle2.getString(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_NAME) : "";
                                    if (TextUtils.isEmpty(string)) {
                                        GMAdSlotRewardVideo gMAdSlotRewardVideo = PangleRewardVideoAdapter.this.mGMAdSlotRewardVideo;
                                        return gMAdSlotRewardVideo != null ? gMAdSlotRewardVideo.getRewardName() : "";
                                    }
                                    return string;
                                }

                                @Override // com.bytedance.msdk.api.reward.RewardItem
                                public boolean rewardVerify() {
                                    return z;
                                }
                            });
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    @Deprecated
                    public void onRewardVerify(final boolean z, final int i, final String str, int i2, String str2) {
                        if (PangleRewardVideo.m3577do(PangleRewardVideo.this)) {
                            Logger.e("TTMediationSDK", "pangle_reward:onRewardVerify-------------2");
                            ITTAdatperCallback iTTAdatperCallback = PangleRewardVideo.this.mTTAdatperRewardPlayAgainCallback;
                            if (iTTAdatperCallback instanceof GMRewardedAdListener) {
                                ((GMRewardedAdListener) iTTAdatperCallback).onRewardVerify(new RewardItem() { // from class: com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.PangleRewardVideo.1.1.1
                                    @Override // com.bytedance.msdk.api.reward.RewardItem
                                    public float getAmount() {
                                        int i3 = i;
                                        if (i3 >= 0) {
                                            return i3;
                                        }
                                        AdSlot adSlot = PangleRewardVideoAdapter.this.mAdSlot;
                                        if (adSlot != null) {
                                            return adSlot.getRewardAmount();
                                        }
                                        return 0.0f;
                                    }

                                    @Override // com.bytedance.msdk.api.reward.RewardItem
                                    public Map<String, Object> getCustomData() {
                                        return null;
                                    }

                                    @Override // com.bytedance.msdk.api.reward.RewardItem
                                    public String getRewardName() {
                                        if (TextUtils.isEmpty(str)) {
                                            AdSlot adSlot = PangleRewardVideoAdapter.this.mAdSlot;
                                            return adSlot != null ? adSlot.getRewardName() : "";
                                        }
                                        return str;
                                    }

                                    @Override // com.bytedance.msdk.api.reward.RewardItem
                                    public boolean rewardVerify() {
                                        return z;
                                    }
                                });
                            }
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onSkippedVideo() {
                        Logger.e("TTMediationSDK", "pangle_reward:onSkippedVideo-------------2");
                        ITTAdatperCallback iTTAdatperCallback = PangleRewardVideo.this.mTTAdatperRewardPlayAgainCallback;
                        if (iTTAdatperCallback instanceof GMRewardedAdListener) {
                            ((GMRewardedAdListener) iTTAdatperCallback).onSkippedVideo();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onVideoComplete() {
                        Logger.e("TTMediationSDK", "pangle_reward:onVideoComplete----------2");
                        ITTAdatperCallback iTTAdatperCallback = PangleRewardVideo.this.mTTAdatperRewardPlayAgainCallback;
                        if (iTTAdatperCallback instanceof GMRewardedAdListener) {
                            ((GMRewardedAdListener) iTTAdatperCallback).onVideoComplete();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onVideoError() {
                        Logger.e("TTMediationSDK", "pangle_reward:onVideoError-----------2");
                        ITTAdatperCallback iTTAdatperCallback = PangleRewardVideo.this.mTTAdatperRewardPlayAgainCallback;
                        if (iTTAdatperCallback instanceof GMRewardedAdListener) {
                            ((GMRewardedAdListener) iTTAdatperCallback).onVideoError();
                        }
                    }
                });
                PangleRewardVideo.this.f8709do.setRewardAdInteractionListener(new TTRewardVideoAd.RewardAdInteractionListener() { // from class: com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.PangleRewardVideo.1.2
                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onAdClose() {
                        Logger.e("TTMediationSDK", "pangle_reward:onAdClose");
                        PangleRewardVideo pangleRewardVideo5 = PangleRewardVideo.this;
                        if (pangleRewardVideo5.mTTAdatperCallback instanceof GMRewardedAdListener) {
                            PangleRewardVideo.m3578if(pangleRewardVideo5).onRewardedAdClosed();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onAdShow() {
                        Logger.e("TTMediationSDK", "pangle_reward:onAdShow");
                        PangleRewardVideo pangleRewardVideo5 = PangleRewardVideo.this;
                        if (pangleRewardVideo5.mTTAdatperCallback instanceof GMRewardedAdListener) {
                            PangleRewardVideo.m3578if(pangleRewardVideo5).onRewardedAdShow();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onAdVideoBarClick() {
                        Logger.e("TTMediationSDK", "pangle_reward:onAdVideoBarClick");
                        PangleRewardVideo pangleRewardVideo5 = PangleRewardVideo.this;
                        if (pangleRewardVideo5.mTTAdatperCallback instanceof GMRewardedAdListener) {
                            PangleRewardVideo.m3578if(pangleRewardVideo5).onRewardClick();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onRewardArrived(final boolean z, final int i, final Bundle bundle) {
                        if (PangleRewardVideo.m3577do(PangleRewardVideo.this)) {
                            return;
                        }
                        Logger.e("TTMediationSDK", "pangle_reward:onRewardArrived");
                        PangleRewardVideo pangleRewardVideo5 = PangleRewardVideo.this;
                        if (pangleRewardVideo5.mTTAdatperCallback instanceof GMRewardedAdListener) {
                            PangleRewardVideo.m3578if(pangleRewardVideo5).onRewardVerify(new RewardItem() { // from class: com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.PangleRewardVideo.1.2.2
                                @Override // com.bytedance.msdk.api.reward.RewardItem
                                public float getAmount() {
                                    Bundle bundle2 = bundle;
                                    float f = bundle2 != null ? bundle2.getInt(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_AMOUNT) : 0.0f;
                                    if (f >= 0.0f) {
                                        return f;
                                    }
                                    GMAdSlotRewardVideo gMAdSlotRewardVideo = PangleRewardVideoAdapter.this.mGMAdSlotRewardVideo;
                                    if (gMAdSlotRewardVideo != null) {
                                        return gMAdSlotRewardVideo.getRewardAmount();
                                    }
                                    return 0.0f;
                                }

                                @Override // com.bytedance.msdk.api.reward.RewardItem
                                public Map<String, Object> getCustomData() {
                                    HashMap hashMap = new HashMap();
                                    hashMap.put(RewardItem.KEY_EXTRA_INFO, bundle);
                                    hashMap.put(RewardItem.KEY_REWARD_TYPE, Integer.valueOf(i));
                                    return hashMap;
                                }

                                @Override // com.bytedance.msdk.api.reward.RewardItem
                                public String getRewardName() {
                                    Bundle bundle2 = bundle;
                                    String string = bundle2 != null ? bundle2.getString(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_NAME) : "";
                                    if (TextUtils.isEmpty(string)) {
                                        GMAdSlotRewardVideo gMAdSlotRewardVideo = PangleRewardVideoAdapter.this.mGMAdSlotRewardVideo;
                                        return gMAdSlotRewardVideo != null ? gMAdSlotRewardVideo.getRewardName() : "";
                                    }
                                    return string;
                                }

                                @Override // com.bytedance.msdk.api.reward.RewardItem
                                public boolean rewardVerify() {
                                    return z;
                                }
                            });
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    @Deprecated
                    public void onRewardVerify(final boolean z, final int i, final String str, int i2, String str2) {
                        if (PangleRewardVideo.m3577do(PangleRewardVideo.this)) {
                            Logger.e("TTMediationSDK", "pangle_reward:onRewardVerify");
                            PangleRewardVideo pangleRewardVideo5 = PangleRewardVideo.this;
                            if (pangleRewardVideo5.mTTAdatperCallback instanceof GMRewardedAdListener) {
                                PangleRewardVideo.m3578if(pangleRewardVideo5).onRewardVerify(new RewardItem() { // from class: com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.PangleRewardVideo.1.2.1
                                    @Override // com.bytedance.msdk.api.reward.RewardItem
                                    public float getAmount() {
                                        int i3 = i;
                                        if (i3 >= 0) {
                                            return i3;
                                        }
                                        AdSlot adSlot = PangleRewardVideoAdapter.this.mAdSlot;
                                        if (adSlot != null) {
                                            return adSlot.getRewardAmount();
                                        }
                                        return 0.0f;
                                    }

                                    @Override // com.bytedance.msdk.api.reward.RewardItem
                                    public Map<String, Object> getCustomData() {
                                        return null;
                                    }

                                    @Override // com.bytedance.msdk.api.reward.RewardItem
                                    public String getRewardName() {
                                        if (TextUtils.isEmpty(str)) {
                                            AdSlot adSlot = PangleRewardVideoAdapter.this.mAdSlot;
                                            return adSlot != null ? adSlot.getRewardName() : "";
                                        }
                                        return str;
                                    }

                                    @Override // com.bytedance.msdk.api.reward.RewardItem
                                    public boolean rewardVerify() {
                                        return z;
                                    }
                                });
                            }
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onSkippedVideo() {
                        Logger.e("TTMediationSDK", "pangle_reward:onSkippedVideo");
                        PangleRewardVideo pangleRewardVideo5 = PangleRewardVideo.this;
                        if (pangleRewardVideo5.mTTAdatperCallback instanceof GMRewardedAdListener) {
                            PangleRewardVideo.m3578if(pangleRewardVideo5).onSkippedVideo();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onVideoComplete() {
                        Logger.e("TTMediationSDK", "pangle_reward:onVideoComplete");
                        PangleRewardVideo pangleRewardVideo5 = PangleRewardVideo.this;
                        if (pangleRewardVideo5.mTTAdatperCallback instanceof GMRewardedAdListener) {
                            PangleRewardVideo.m3578if(pangleRewardVideo5).onVideoComplete();
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd.RewardAdInteractionListener
                    public void onVideoError() {
                        Logger.e("TTMediationSDK", "pangle_reward:onVideoError");
                        PangleRewardVideo pangleRewardVideo5 = PangleRewardVideo.this;
                        if (pangleRewardVideo5.mTTAdatperCallback instanceof GMRewardedAdListener) {
                            PangleRewardVideo.m3578if(pangleRewardVideo5).onVideoError();
                        }
                    }
                });
                PangleRewardVideo pangleRewardVideo5 = PangleRewardVideo.this;
                PangleRewardVideoAdapter.this.notifyAdLoaded(pangleRewardVideo5);
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
            public void onRewardVideoCached() {
                Logger.e("TTMediationSDK", "pangle_reward_onRewardVideoCached");
            }

            @Override // com.bytedance.sdk.openadsdk.TTAdNative.RewardVideoAdListener
            public void onRewardVideoCached(TTRewardVideoAd tTRewardVideoAd) {
                Logger.e("TTMediationSDK", "pangle_reward_onRewardVideoCached");
                PangleRewardVideo pangleRewardVideo = PangleRewardVideo.this;
                PangleRewardVideoAdapter.this.notifyAdVideoCache(pangleRewardVideo, (AdError) null);
            }
        }

        public PangleRewardVideo() {
        }

        /* renamed from: do  reason: not valid java name */
        public static boolean m3577do(PangleRewardVideo pangleRewardVideo) {
            return !PangleRewardVideoAdapter.VERSION_00.equals(PangleRewardVideoAdapter.this.getSdkVersion()) && PangleRewardVideoAdapter.VERSION_4400.compareTo(PangleRewardVideoAdapter.this.getSdkVersion()) > 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x001e  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0014 A[SYNTHETIC] */
        /* renamed from: if  reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener m3578if(com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.PangleRewardVideo r4) {
            /*
            L0:
                r0 = 94
                r1 = 75
                r2 = 93
            L6:
                r3 = 92
                if (r0 == r3) goto Ld
                if (r0 == r2) goto L10
                goto L19
            Ld:
                switch(r1) {
                    case 21: goto L19;
                    case 22: goto L14;
                    case 23: goto L14;
                    default: goto L10;
                }
            L10:
                switch(r1) {
                    case 91: goto L0;
                    case 92: goto L19;
                    case 93: goto L14;
                    default: goto L13;
                }
            L13:
                goto L1e
            L14:
                com.bytedance.msdk.adapter.listener.ITTAdatperCallback r4 = r4.mTTAdatperCallback
                com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener r4 = (com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener) r4
                return r4
            L19:
                r0 = 93
                r1 = 93
                goto L6
            L1e:
                r1 = 91
                goto L10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.PangleRewardVideo.m3578if(com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter$PangleRewardVideo):com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener");
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean adnHasAdVideoCachedApi() {
            return true;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getAdId() {
            TTRewardVideoAd tTRewardVideoAd = this.f8709do;
            return tTRewardVideoAd != null ? PangleAdapterUtils.getAdId(tTRewardVideoAd.getMediaExtraInfo()) : super.getAdId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public long getCreativeId() {
            TTRewardVideoAd tTRewardVideoAd = this.f8709do;
            return tTRewardVideoAd != null ? PangleAdapterUtils.getCreativeId(tTRewardVideoAd.getMediaExtraInfo()) : super.getCreativeId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public Map<String, Object> getMediaExtraInfo() {
            Map<String, Object> mediaExtraInfo;
            TTRewardVideoAd tTRewardVideoAd = this.f8709do;
            if (tTRewardVideoAd == null || (mediaExtraInfo = tTRewardVideoAd.getMediaExtraInfo()) == null) {
                return super.getMediaExtraInfo();
            }
            HashMap hashMap = new HashMap();
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_COUPON, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_COUPON));
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_LIVE_ROOM, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_LIVE_ROOM));
            hashMap.put(PangleAdapterUtils.MEDIA_EXTRA_PRODUCT, mediaExtraInfo.get(PangleAdapterUtils.MEDIA_EXTRA_PRODUCT));
            return hashMap;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public String getReqId() {
            TTRewardVideoAd tTRewardVideoAd = this.f8709do;
            return tTRewardVideoAd != null ? PangleAdapterUtils.getReqId(tTRewardVideoAd.getMediaExtraInfo()) : super.getReqId();
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean hasDestroyed() {
            return this.f8709do == null;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public boolean isAdnPreload() {
            return this.f8710for;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public GMAdConstant.AdIsReadyStatus isReadyStatus() {
            TTRewardVideoAd tTRewardVideoAd = this.f8709do;
            return (tTRewardVideoAd == null || tTRewardVideoAd.getExpirationTimestamp() <= System.currentTimeMillis()) ? GMAdConstant.AdIsReadyStatus.AD_IS_EXPIRED : GMAdConstant.AdIsReadyStatus.AD_IS_READY;
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void onDestroy() {
            TTRewardVideoAd tTRewardVideoAd = this.f8709do;
            if (tTRewardVideoAd != null) {
                tTRewardVideoAd.setDownloadListener(null);
                this.f8709do.setRewardAdInteractionListener(null);
                this.f8709do = null;
            }
        }

        @Override // com.bytedance.msdk.base.TTBaseAd
        public void showAd(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
            if (this.f8709do != null) {
                TTAdConstant.RitScenes ritScenes = PangleAdapterUtils.getRitScenes(map);
                String customRitScenes = PangleAdapterUtils.getCustomRitScenes(map);
                if (ritScenes != null) {
                    this.f8709do.showRewardVideoAd(activity, ritScenes, customRitScenes);
                } else {
                    this.f8709do.showRewardVideoAd(activity);
                }
            }
        }
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public void destroy() {
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getAdNetWorkName() {
        return "pangle";
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    public String getSdkVersion() {
        try {
            return TTAdSdk.getAdManager().getSDKVersion();
        } catch (Exception unused) {
            return VERSION_00;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (android.text.TextUtils.isEmpty(r0) == false) goto L11;
     */
    @Override // com.bytedance.msdk.adapter.ad.GMRewardBaseAdapter, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter
    @com.bytedance.JProtect
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadAd(android.content.Context r10, java.util.Map<java.lang.String, java.lang.Object> r11) {
        /*
            r9 = this;
            super.loadAd(r10, r11)
            com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo r0 = r9.mGMAdSlotRewardVideo
            if (r0 == 0) goto L93
            r9.f8708finally = r10
            if (r11 == 0) goto L96
            com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter$PangleRewardVideo r10 = new com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter$PangleRewardVideo
            r10.<init>()
            r9.f8707extends = r10
            if (r10 == 0) goto L91
            com.bytedance.sdk.openadsdk.TTAdManager r11 = com.bytedance.sdk.openadsdk.TTAdSdk.getAdManager()
            com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter r0 = com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.this
            android.content.Context r0 = r0.f8708finally
            com.bytedance.sdk.openadsdk.TTAdNative r11 = r11.createAdNative(r0)
            com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter r0 = com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.this
            com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo r0 = r0.mGMAdSlotRewardVideo
            java.util.Map r0 = r0.getCustomData()
            if (r0 == 0) goto L39
            java.lang.String r1 = "pangle"
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L39
            goto L3b
        L39:
            java.lang.String r0 = ""
        L3b:
            com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter r1 = com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.this
            com.bytedance.msdk.api.AdSlot r2 = r1.mAdSlot
            com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo r3 = r1.mGMAdSlotRewardVideo
            java.lang.String r4 = r1.getAdSlotId()
            com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter r1 = com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.this
            java.lang.String r5 = r1.mWaterfallAbTestParam
            java.lang.String r6 = r1.getClientReqId()
            com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter r1 = com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.this
            java.lang.String r7 = r1.getAdm()
            r8 = 0
            com.bytedance.sdk.openadsdk.AdSlot$Builder r1 = com.bytedance.msdk.adapter.pangle.PangleAdapterUtils.buildPangleAdSlot(r2, r3, r4, r5, r6, r7, r8)
            com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter r2 = com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.this
            com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo r2 = r2.mGMAdSlotRewardVideo
            java.lang.String r2 = r2.getUserID()
            com.bytedance.sdk.openadsdk.AdSlot$Builder r2 = r1.setUserID(r2)
            com.bytedance.sdk.openadsdk.AdSlot$Builder r0 = r2.setMediaExtra(r0)
            r2 = 1080(0x438, float:1.513E-42)
            r3 = 1920(0x780, float:2.69E-42)
            com.bytedance.sdk.openadsdk.AdSlot$Builder r0 = r0.setImageAcceptedSize(r2, r3)
            com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter r2 = com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.this
            com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo r2 = r2.mGMAdSlotRewardVideo
            int r2 = r2.getOrientation()
            r0.setOrientation(r2)
            com.bytedance.sdk.openadsdk.AdSlot r0 = r1.build()
            com.bytedance.sdk.openadsdk.TTAdNative$RewardVideoAdListener r10 = r10.f8712new
            r11.loadRewardVideoAd(r0, r10)
        L84:
            r10 = 19
            r11 = 18
        L88:
            if (r10 == r11) goto L96
            r0 = 20
            if (r10 == r0) goto L84
            r10 = 18
            goto L88
        L91:
            r10 = 0
            throw r10
        L93:
            r9.notifyLoadFailBecauseGMAdSlotIsNull()
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.msdk.adapter.pangle.PangleRewardVideoAdapter.loadAd(android.content.Context, java.util.Map):void");
    }
}
