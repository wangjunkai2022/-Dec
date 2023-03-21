package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12;

import android.os.SystemClock;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTVideoOption;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: CacheBase.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, Integer> f10891a = new HashMap();
    public final Map<String, Integer> b = new HashMap();

    public void a(String str, String str2, int i) {
        this.f10891a.put(Cgoto.m996else(str, "_", str2), Integer.valueOf(i));
    }

    public void b(String str, String str2, int i) {
        this.b.put(Cgoto.m996else(str, "_", str2), Integer.valueOf(i));
    }

    public int a(String str, String str2) {
        Map<String, Integer> map = this.f10891a;
        Integer num = map.get(str + "_" + str2);
        if (num != null) {
            return num.intValue();
        }
        return 1800000;
    }

    public int b(String str, String str2) {
        Map<String, Integer> map = this.b;
        Integer num = map.get(str + "_" + str2);
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    public int a(e eVar, AdSlot adSlot, AdSlot adSlot2, String str) {
        if (eVar == null || eVar.f10900a == null) {
            return 4;
        }
        String adUnitId = adSlot2 != null ? adSlot2.getAdUnitId() : "";
        String adNetWorkName = eVar.f10900a.getAdNetWorkName();
        String adNetworkSlotId = eVar.f10900a.getAdNetworkSlotId();
        GMAdConstant.AdIsReadyStatus isReadyStatus = eVar.f10900a.isReadyStatus();
        if (isReadyStatus == GMAdConstant.AdIsReadyStatus.ADN_NO_READY_API) {
            if (eVar.f10900a.isHasShown()) {
                StringBuilder m1004import = Cgoto.m1004import("--==-- ", str, ":广告已show过 ---: ", adNetWorkName, ", adSlotId: ");
                m1004import.append(adNetworkSlotId);
                Logger.d("TTMediationSDK", m1004import.toString());
                return 7;
            } else if (a(adUnitId, eVar.f10900a)) {
                StringBuilder m1004import2 = Cgoto.m1004import("--==-- ", str, ":广告过期了(M配置) ---: ", adNetWorkName, ", adSlotId: ");
                m1004import2.append(adNetworkSlotId);
                Logger.d("TTMediationSDK", m1004import2.toString());
                return 2;
            } else if (!a(adSlot, adSlot2, eVar.f10900a)) {
                StringBuilder m1004import3 = Cgoto.m1004import("--==-- ", str, ":AdSlot不符合 ---: ", adNetWorkName, ", adSlotId: ");
                m1004import3.append(adNetworkSlotId);
                Logger.d("TTMediationSDK", m1004import3.toString());
                return 6;
            } else {
                StringBuilder m1004import4 = Cgoto.m1004import("--==-- ", str, ":复用成功：---", adNetWorkName, ", adSlotId: ");
                m1004import4.append(adNetworkSlotId);
                Logger.d("TTMediationSDK", m1004import4.toString());
                return -1;
            }
        } else if (eVar.f10900a.isHasShown()) {
            StringBuilder m1004import5 = Cgoto.m1004import("--==-- ", str, ":广告已show过 ---: ", adNetWorkName, ", adSlotId: ");
            m1004import5.append(adNetworkSlotId);
            Logger.d("TTMediationSDK", m1004import5.toString());
            return 7;
        } else if (isReadyStatus == GMAdConstant.AdIsReadyStatus.AD_IS_EXPIRED) {
            StringBuilder m1004import6 = Cgoto.m1004import("--==-- ", str, ":广告过期了(adn api) ---: ", adNetWorkName, ", adSlotId: ");
            m1004import6.append(adNetworkSlotId);
            Logger.d("TTMediationSDK", m1004import6.toString());
            return 1;
        } else if (isReadyStatus == GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY) {
            StringBuilder m1004import7 = Cgoto.m1004import("--==-- ", str, ":isReady是false ---: ", adNetWorkName, ", adSlotId: ");
            m1004import7.append(adNetworkSlotId);
            Logger.d("TTMediationSDK", m1004import7.toString());
            return 5;
        } else if (!a(adSlot, adSlot2, eVar.f10900a)) {
            StringBuilder m1004import8 = Cgoto.m1004import("--==-- ", str, ":AdSlot不符合 ---: ", adNetWorkName, ", adSlotId: ");
            m1004import8.append(adNetworkSlotId);
            Logger.d("TTMediationSDK", m1004import8.toString());
            return 6;
        } else {
            StringBuilder m1004import9 = Cgoto.m1004import("--==-- ", str, ":复用成功：---", adNetWorkName, ", adSlotId: ");
            m1004import9.append(adNetworkSlotId);
            Logger.d("TTMediationSDK", m1004import9.toString());
            return -1;
        }
    }

    public final boolean a(String str, TTBaseAd tTBaseAd) {
        if (tTBaseAd != null && !tTBaseAd.hasDestroyed()) {
            boolean z = SystemClock.elapsedRealtime() > tTBaseAd.getFillTime() + ((long) a(str, tTBaseAd.getAdNetworkSlotId()));
            Logger.d("TTMediationSDK", "--==-- 使用了配置的过期时间进行判断 ------");
            return z;
        }
        Logger.d("TTMediationSDK", "--==-- 广告已经destroy了，视为过期 ------");
        return true;
    }

    public static boolean a(AdSlot adSlot, AdSlot adSlot2, TTBaseAd tTBaseAd) {
        if (adSlot != null && adSlot2 != null) {
            if (adSlot.getOrientation() != adSlot2.getOrientation()) {
                StringBuilder m1016super = Cgoto.m1016super("--==-- orientation, a1: ");
                m1016super.append(adSlot.getOrientation());
                m1016super.append(", a2: ");
                m1016super.append(adSlot2.getOrientation());
                Logger.d("TMe", m1016super.toString());
                return false;
            }
            TTVideoOption tTVideoOption = adSlot.getTTVideoOption();
            TTVideoOption tTVideoOption2 = adSlot2.getTTVideoOption();
            if (tTVideoOption != null || tTVideoOption2 != null) {
                if (tTVideoOption != null && tTVideoOption2 != null) {
                    if (tTVideoOption.isMuted() != tTVideoOption2.isMuted()) {
                        StringBuilder m1016super2 = Cgoto.m1016super("--==-- isMuted, a1: ");
                        m1016super2.append(tTVideoOption.isMuted());
                        m1016super2.append(", a2: ");
                        m1016super2.append(tTVideoOption2.isMuted());
                        Logger.d("TMe", m1016super2.toString());
                        return false;
                    }
                } else {
                    Logger.d("TMe", "--==-- options=null, a1: " + tTVideoOption + ", a2: " + tTVideoOption2);
                    return false;
                }
            }
            if (adSlot.getBannerSize() != adSlot2.getBannerSize()) {
                StringBuilder m1016super3 = Cgoto.m1016super("--==-- bannerSize, a1: ");
                m1016super3.append(adSlot.getBannerSize());
                m1016super3.append(", a2: ");
                m1016super3.append(adSlot2.getBannerSize());
                Logger.d("TMe", m1016super3.toString());
                return false;
            } else if (adSlot.getImgAcceptedWidth() != adSlot2.getImgAcceptedWidth()) {
                StringBuilder m1016super4 = Cgoto.m1016super("--==-- ImgWidth, a1: ");
                m1016super4.append(adSlot.getImgAcceptedWidth());
                m1016super4.append(", a2: ");
                m1016super4.append(adSlot2.getImgAcceptedWidth());
                Logger.d("TMe", m1016super4.toString());
                return false;
            } else if (adSlot.getImgAcceptedHeight() != adSlot2.getImgAcceptedHeight()) {
                StringBuilder m1016super5 = Cgoto.m1016super("--==-- ImgHeight, a1: ");
                m1016super5.append(adSlot.getImgAcceptedHeight());
                m1016super5.append(", a2: ");
                m1016super5.append(adSlot2.getImgAcceptedHeight());
                Logger.d("TMe", m1016super5.toString());
                return false;
            } else {
                if (tTBaseAd != null && "pangle".equals(tTBaseAd.getAdNetWorkName())) {
                    Logger.d("TMe", "--==-- pangle合规判断进入");
                    if (tTBaseAd.getAdType() == 3 && adSlot.getSplashButtonType() != adSlot2.getSplashButtonType()) {
                        StringBuilder m1016super6 = Cgoto.m1016super("--==-- pangle splashButtonType, a1: ");
                        m1016super6.append(adSlot.getSplashButtonType());
                        m1016super6.append(", a2: ");
                        m1016super6.append(adSlot2.getSplashButtonType());
                        Logger.d("TMe", m1016super6.toString());
                        return false;
                    } else if (adSlot.getDownloadType() != adSlot2.getDownloadType()) {
                        StringBuilder m1016super7 = Cgoto.m1016super("--==-- pangle downloadDialogType, a1: ");
                        m1016super7.append(adSlot.getDownloadType());
                        m1016super7.append(", a2: ");
                        m1016super7.append(adSlot2.getDownloadType());
                        Logger.d("TMe", m1016super7.toString());
                        return false;
                    } else {
                        Logger.d("TMe", "--==-- pangle合规判断ok，adslot兼容");
                    }
                }
                if (adSlot.getRewardName() != null && adSlot2.getRewardName() != null) {
                    if (!adSlot.getRewardName().equals(adSlot2.getRewardName())) {
                        StringBuilder m1016super8 = Cgoto.m1016super("--==-- rewardName, a1: ");
                        m1016super8.append(adSlot.getRewardName());
                        m1016super8.append(", a2: ");
                        m1016super8.append(adSlot2.getRewardName());
                        Logger.d("TMe", m1016super8.toString());
                        return false;
                    }
                } else if (adSlot.getRewardName() != null || adSlot2.getRewardName() != null) {
                    StringBuilder m1016super9 = Cgoto.m1016super("--==-- rewardName=null, a1: ");
                    m1016super9.append(adSlot.getRewardName());
                    m1016super9.append(", a2: ");
                    m1016super9.append(adSlot2.getRewardName());
                    Logger.d("TMe", m1016super9.toString());
                    return false;
                }
                if (adSlot.getRewardAmount() != adSlot2.getRewardAmount()) {
                    StringBuilder m1016super10 = Cgoto.m1016super("--==-- rewardAmount, a1: ");
                    m1016super10.append(adSlot.getRewardAmount());
                    m1016super10.append(", a2: ");
                    m1016super10.append(adSlot2.getRewardAmount());
                    Logger.d("TMe", m1016super10.toString());
                    return false;
                }
                if (adSlot.getUserID() != null && adSlot2.getUserID() != null) {
                    if (!adSlot.getUserID().equals(adSlot2.getUserID())) {
                        StringBuilder m1016super11 = Cgoto.m1016super("--==-- reward, userId, a1: ");
                        m1016super11.append(adSlot.getUserID());
                        m1016super11.append(", a2: ");
                        m1016super11.append(adSlot2.getUserID());
                        Logger.d("TMe", m1016super11.toString());
                        return false;
                    }
                } else if (adSlot.getUserID() != null || adSlot2.getUserID() != null) {
                    StringBuilder m1016super12 = Cgoto.m1016super("--==-- reward, userId=null, a1: ");
                    m1016super12.append(adSlot.getUserID());
                    m1016super12.append(", a2: ");
                    m1016super12.append(adSlot2.getUserID());
                    Logger.d("TMe", m1016super12.toString());
                    return false;
                }
                if (adSlot.getCustomData() != null && adSlot2.getCustomData() != null) {
                    if (a(adSlot.getCustomData(), adSlot2.getCustomData())) {
                        return true;
                    }
                    StringBuilder m1016super13 = Cgoto.m1016super("--==-- customData, a1: ");
                    m1016super13.append(adSlot.getCustomData().toString());
                    m1016super13.append(", a2: ");
                    m1016super13.append(adSlot2.getCustomData().toString());
                    Logger.d("TMe", m1016super13.toString());
                    return false;
                } else if (adSlot.getCustomData() == null && adSlot2.getCustomData() == null) {
                    return true;
                } else {
                    StringBuilder m1016super14 = Cgoto.m1016super("--==-- customData=null, a1: ");
                    m1016super14.append(adSlot.getCustomData());
                    m1016super14.append(", a2: ");
                    m1016super14.append(adSlot2.getCustomData());
                    Logger.d("TMe", m1016super14.toString());
                    return false;
                }
            }
        }
        Logger.d("TMe", "--==-- adSlot = null, a1: " + adSlot + ", a2: " + adSlot2);
        return false;
    }

    public static boolean a(Map<String, String> map, Map<String, String> map2) {
        if (map == null && map2 == null) {
            return true;
        }
        if (map == null || map2 == null || map.size() != map2.size()) {
            return false;
        }
        Set<String> keySet = map.keySet();
        if (keySet != null) {
            for (String str : keySet) {
                if (str != null) {
                    String str2 = map.get(str);
                    String str3 = map2.get(str);
                    if (str2 != null || str3 != null) {
                        if (!TextUtils.equals(str2, str3)) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }
}
