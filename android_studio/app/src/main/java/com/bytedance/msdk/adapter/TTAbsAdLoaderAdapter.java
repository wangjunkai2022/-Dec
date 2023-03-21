package com.bytedance.msdk.adapter;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.c;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.g;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.f0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.g0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.y;
import com.apk.Cgoto;
import com.apk.eg;
import com.apk.os;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.UIUtils;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomAd;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes8.dex */
public abstract class TTAbsAdLoaderAdapter {

    /* renamed from: break  reason: not valid java name */
    public String f8420break;

    /* renamed from: case  reason: not valid java name */
    public int f8421case;

    /* renamed from: catch  reason: not valid java name */
    public long f8422catch;

    /* renamed from: class  reason: not valid java name */
    public long f8423class;

    /* renamed from: const  reason: not valid java name */
    public int f8424const;

    /* renamed from: else  reason: not valid java name */
    public int f8427else;

    /* renamed from: final  reason: not valid java name */
    public int f8428final;

    /* renamed from: for  reason: not valid java name */
    public AdapterLoaderListener f8429for;

    /* renamed from: goto  reason: not valid java name */
    public double f8430goto;

    /* renamed from: import  reason: not valid java name */
    public int f8432import;
    public AdSlot mAdSlot;
    public GMAdSlotBase mGMAdSlotBase;
    public h mTTExtraModel;
    public String mWaterfallAbTestParam;

    /* renamed from: native  reason: not valid java name */
    public String f8433native;

    /* renamed from: new  reason: not valid java name */
    public i f8434new;

    /* renamed from: public  reason: not valid java name */
    public boolean f8435public;

    /* renamed from: return  reason: not valid java name */
    public int f8436return;

    /* renamed from: static  reason: not valid java name */
    public int f8437static;

    /* renamed from: super  reason: not valid java name */
    public int f8438super;

    /* renamed from: switch  reason: not valid java name */
    public boolean f8439switch;

    /* renamed from: this  reason: not valid java name */
    public String f8440this;

    /* renamed from: throw  reason: not valid java name */
    public g f8441throw;

    /* renamed from: throws  reason: not valid java name */
    public int f8442throws;

    /* renamed from: try  reason: not valid java name */
    public String f8443try;

    /* renamed from: while  reason: not valid java name */
    public int f8444while;

    /* renamed from: do  reason: not valid java name */
    public boolean f8426do = false;

    /* renamed from: if  reason: not valid java name */
    public boolean f8431if = false;

    /* renamed from: default  reason: not valid java name */
    public volatile long f8425default = -1;

    /* loaded from: classes8.dex */
    public interface AdapterLoaderListener {
        void onAdFailed(AdError adError, d dVar);

        void onAdLoaded(TTBaseAd tTBaseAd, d dVar);

        void onAdLoaded(List<TTBaseAd> list, d dVar);

        void onAdVideoCache();
    }

    /* loaded from: classes8.dex */
    public class CallBackRunnable implements Runnable {

        /* renamed from: case  reason: not valid java name */
        public boolean f8448case;

        /* renamed from: do  reason: not valid java name */
        public String f8449do;

        /* renamed from: for  reason: not valid java name */
        public List<TTBaseAd> f8451for;

        /* renamed from: if  reason: not valid java name */
        public TTBaseAd f8452if;

        /* renamed from: new  reason: not valid java name */
        public AdError f8453new;

        /* renamed from: try  reason: not valid java name */
        public String f8454try;

        public CallBackRunnable(String str, TTBaseAd tTBaseAd, List<TTBaseAd> list, AdError adError, String str2, boolean z) {
            this.f8449do = str;
            this.f8452if = tTBaseAd;
            this.f8451for = list;
            this.f8453new = adError;
            this.f8454try = str2;
            this.f8448case = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            String str;
            String str2;
            if (TTAbsAdLoaderAdapter.this.f8429for != null) {
                d dVar = new d();
                dVar.a(TTAbsAdLoaderAdapter.this.mAdSlot.getAdType()).e(TTAbsAdLoaderAdapter.this.f8436return).b(TTAbsAdLoaderAdapter.this.f8432import).c(TTAbsAdLoaderAdapter.this.f8421case).d(TTAbsAdLoaderAdapter.this.f8427else).a(TTAbsAdLoaderAdapter.this.getAdNetWorkName()).c(TTAbsAdLoaderAdapter.this.getCustomAdNetWorkName()).b(TTAbsAdLoaderAdapter.this.f8433native);
                TTBaseAd tTBaseAd = null;
                boolean z = false;
                if (!"adload_ads".equals(this.f8449do) && !"adload_ad".equals(this.f8449do)) {
                    if ("failed".equals(this.f8449do)) {
                        TTBaseAd tTBaseAd2 = this.f8452if;
                        if (tTBaseAd2 != null) {
                            str = String.valueOf(tTBaseAd2.getCpm());
                            str2 = this.f8452if.getLevelTag();
                        } else {
                            str = null;
                            str2 = null;
                        }
                        TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = TTAbsAdLoaderAdapter.this;
                        if (tTAbsAdLoaderAdapter.f8432import != 2 && this.f8448case) {
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.f8453new, tTAbsAdLoaderAdapter.mAdSlot, tTAbsAdLoaderAdapter.f8434new, tTAbsAdLoaderAdapter.f8424const, tTAbsAdLoaderAdapter.f8428final, tTAbsAdLoaderAdapter.f8438super, tTAbsAdLoaderAdapter.getSdkVersion(), TTAbsAdLoaderAdapter.this.f8423class, str, str2, this.f8454try);
                        } else {
                            AdError adError = this.f8453new;
                            TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter2 = TTAbsAdLoaderAdapter.this;
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(adError, tTAbsAdLoaderAdapter2.mAdSlot, tTAbsAdLoaderAdapter2.f8434new, tTAbsAdLoaderAdapter2.f8424const, tTAbsAdLoaderAdapter2.f8428final, tTAbsAdLoaderAdapter2.f8438super, tTAbsAdLoaderAdapter2.getSdkVersion(), TTAbsAdLoaderAdapter.this.f8423class);
                        }
                        if (this.f8453new != null) {
                            if (os.f3493for) {
                                StringBuilder sb = new StringBuilder();
                                sb.append(TTLogUtil.getTagThirdLevelByEvent(TTAbsAdLoaderAdapter.this.f8443try, TTLogUtil.TAG_EVENT_FILL_FAIL));
                                sb.append("AdNetWorkName[");
                                sb.append(TTAbsAdLoaderAdapter.this.getAllAdNetWorkName());
                                sb.append("] AdUnitId[");
                                sb.append(TTAbsAdLoaderAdapter.this.f8433native);
                                sb.append("] AdType[");
                                TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter3 = TTAbsAdLoaderAdapter.this;
                                AdSlot adSlot = tTAbsAdLoaderAdapter3.mAdSlot;
                                tTAbsAdLoaderAdapter3.getAdNetWorkName();
                                int adType = TTAbsAdLoaderAdapter.this.mAdSlot.getAdType();
                                TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter4 = TTAbsAdLoaderAdapter.this;
                                sb.append(tTAbsAdLoaderAdapter3.m3556do(adSlot, eg.m597for(adType, tTAbsAdLoaderAdapter4.f8436return, tTAbsAdLoaderAdapter4.f8434new, tTAbsAdLoaderAdapter4.mAdSlot.getAdStyleType())));
                                sb.append("] 请求失败 (loadSort=");
                                sb.append(TTAbsAdLoaderAdapter.this.f8421case);
                                sb.append(",showSort=");
                                sb.append(TTAbsAdLoaderAdapter.this.f8427else);
                                sb.append("),error=");
                                sb.append(this.f8453new.thirdSdkErrorCode);
                                sb.append(",msg=");
                                sb.append(this.f8453new.thirdSdkErrorMessage);
                                Logger.e("TTMediationSDK", sb.toString());
                            } else {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(TTLogUtil.getTagThirdLevelByEvent(TTAbsAdLoaderAdapter.this.f8443try, TTLogUtil.TAG_EVENT_FILL_FAIL));
                                sb2.append("AdNetWorkName[");
                                sb2.append(TTAbsAdLoaderAdapter.this.getAllAdNetWorkName());
                                sb2.append("] AdType[");
                                TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter5 = TTAbsAdLoaderAdapter.this;
                                AdSlot adSlot2 = tTAbsAdLoaderAdapter5.mAdSlot;
                                tTAbsAdLoaderAdapter5.getAdNetWorkName();
                                int adType2 = TTAbsAdLoaderAdapter.this.mAdSlot.getAdType();
                                TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter6 = TTAbsAdLoaderAdapter.this;
                                sb2.append(tTAbsAdLoaderAdapter5.m3556do(adSlot2, eg.m597for(adType2, tTAbsAdLoaderAdapter6.f8436return, tTAbsAdLoaderAdapter6.f8434new, tTAbsAdLoaderAdapter6.mAdSlot.getAdStyleType())));
                                sb2.append("] 请求失败 error=");
                                sb2.append(this.f8453new.thirdSdkErrorCode);
                                sb2.append(",msg=");
                                sb2.append(this.f8453new.thirdSdkErrorMessage);
                                Logger.e("TTMediationSDK", sb2.toString());
                            }
                            if (TTAbsAdLoaderAdapter.this.f8434new != null) {
                                String str3 = "";
                                String m1019this = Cgoto.m1019this(new StringBuilder(), this.f8453new.thirdSdkErrorCode, "");
                                String str4 = this.f8453new.thirdSdkErrorMessage;
                                if (TTAbsAdLoaderAdapter.this != null) {
                                    ArrayList arrayList = new ArrayList();
                                    if (!TextUtils.isEmpty(str4)) {
                                        StringBuilder sb3 = new StringBuilder();
                                        char[] charArray = str4.toCharArray();
                                        int i2 = 0;
                                        while (true) {
                                            if (i2 >= charArray.length) {
                                                break;
                                            }
                                            char c = charArray[i2];
                                            if (c >= '0' && c <= '9') {
                                                sb3.append(c);
                                                if (i2 == charArray.length - 1) {
                                                    arrayList.add(sb3.toString());
                                                    break;
                                                }
                                            } else if (sb3.length() > 0) {
                                                arrayList.add(sb3.toString());
                                                sb3.delete(0, sb3.length());
                                            }
                                            if (arrayList.size() > 0) {
                                                str3 = (String) arrayList.get(0);
                                                break;
                                            }
                                            i2++;
                                        }
                                        StringBuilder sb4 = new StringBuilder();
                                        Iterator it = arrayList.iterator();
                                        while (it.hasNext()) {
                                            sb4.append((String) it.next());
                                            sb4.append("_");
                                        }
                                        if (sb4.length() > 0) {
                                            sb4.delete(sb4.length() - 1, sb4.length());
                                        }
                                        str3 = sb4.toString();
                                    }
                                    Logger.e("TTMediationSDK", "errorCode = " + m1019this + " errorCodeList = " + str3);
                                    c a2 = c.a();
                                    String e = TTAbsAdLoaderAdapter.this.f8434new.e();
                                    String d = TTAbsAdLoaderAdapter.this.f8434new.d();
                                    String e2 = TTAbsAdLoaderAdapter.this.f8434new.e();
                                    if (!TextUtils.isEmpty(str3) && e2.equals("gdt")) {
                                        m1019this = Cgoto.m996else(m1019this, "_", str3);
                                    }
                                    a2.a(e, d, m1019this);
                                } else {
                                    throw null;
                                }
                            }
                        }
                        AdapterLoaderListener adapterLoaderListener = TTAbsAdLoaderAdapter.this.f8429for;
                        if (adapterLoaderListener != null) {
                            adapterLoaderListener.onAdFailed(this.f8453new, dVar);
                            return;
                        }
                        return;
                    } else if ("ad_video_cache".equals(this.f8449do)) {
                        if (this.f8452if != null && ((i = TTAbsAdLoaderAdapter.this.f8437static) == 10 || i == 8 || i == 7)) {
                            TTAbsAdLoaderAdapter.m3553case(TTAbsAdLoaderAdapter.this, this.f8452if);
                            AdError adError2 = this.f8453new;
                            if (adError2 != null && adError2.code == 30010) {
                                if (TTAbsAdLoaderAdapter.this != null) {
                                    boolean e3 = y.e(a.d());
                                    boolean f = y.f(a.d());
                                    if (a.f().G() && (e3 || f)) {
                                        z = true;
                                    }
                                    if (z) {
                                        ThreadHelper.postDelayOnMSDKThread(new Runnable() { // from class: com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.CallBackRunnable.1
                                            @Override // java.lang.Runnable
                                            public void run() {
                                                CallBackRunnable.this.f8452if.setCacheSuccess(true);
                                                CallBackRunnable callBackRunnable = CallBackRunnable.this;
                                                TTAbsAdLoaderAdapter.m3554for(TTAbsAdLoaderAdapter.this, callBackRunnable.f8452if);
                                                if (TTAbsAdLoaderAdapter.this.isServerBidding()) {
                                                    CallBackRunnable callBackRunnable2 = CallBackRunnable.this;
                                                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(callBackRunnable2.f8452if, TTAbsAdLoaderAdapter.this.mAdSlot);
                                                }
                                                AdapterLoaderListener adapterLoaderListener2 = TTAbsAdLoaderAdapter.this.f8429for;
                                                if (adapterLoaderListener2 != null) {
                                                    adapterLoaderListener2.onAdVideoCache();
                                                }
                                            }
                                        }, 1000L);
                                        return;
                                    }
                                } else {
                                    throw null;
                                }
                            }
                            this.f8452if.setCacheSuccess(true);
                            TTAbsAdLoaderAdapter.m3554for(TTAbsAdLoaderAdapter.this, this.f8452if);
                            if (TTAbsAdLoaderAdapter.this.isServerBidding()) {
                                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.f8452if, TTAbsAdLoaderAdapter.this.mAdSlot);
                            }
                            AdapterLoaderListener adapterLoaderListener2 = TTAbsAdLoaderAdapter.this.f8429for;
                            if (adapterLoaderListener2 != null) {
                                adapterLoaderListener2.onAdVideoCache();
                                return;
                            }
                            return;
                        }
                        Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(TTAbsAdLoaderAdapter.this.f8443try, TTLogUtil.TAG_EVENT_FILL) + "onAdVideoCache-----ttAd=" + this.f8452if);
                        return;
                    } else {
                        return;
                    }
                }
                boolean equals = "adload_ads".equals(this.f8449do);
                int i3 = AdError.ERROR_CODE_AD_LOAD_SUCCESS;
                if (equals) {
                    List<TTBaseAd> list = this.f8451for;
                    int size = list != null ? list.size() : 0;
                    List<TTBaseAd> list2 = this.f8451for;
                    if (list2 == null || list2.size() <= 0) {
                        i3 = AdError.ERROR_CODE_NO_AD;
                    }
                    for (TTBaseAd tTBaseAd3 : this.f8451for) {
                        if (tTBaseAd3 != null) {
                            TTAbsAdLoaderAdapter.m3553case(TTAbsAdLoaderAdapter.this, tTBaseAd3);
                            if (tTBaseAd == null) {
                                tTBaseAd = tTBaseAd3;
                            }
                        }
                    }
                    if (!TTAbsAdLoaderAdapter.this.isClientBidding() && !TTAbsAdLoaderAdapter.this.isMultiBidding() && !TTAbsAdLoaderAdapter.this.isServerBidding()) {
                        TTAbsAdLoaderAdapter.m3555if(TTAbsAdLoaderAdapter.this, i3, tTBaseAd, size, this.f8454try);
                    } else {
                        for (TTBaseAd tTBaseAd4 : this.f8451for) {
                            if (tTBaseAd4 != null) {
                                TTAbsAdLoaderAdapter.m3555if(TTAbsAdLoaderAdapter.this, i3, tTBaseAd4, 1, this.f8454try);
                            }
                        }
                    }
                    AdapterLoaderListener adapterLoaderListener3 = TTAbsAdLoaderAdapter.this.f8429for;
                    if (adapterLoaderListener3 != null) {
                        adapterLoaderListener3.onAdLoaded(this.f8451for, dVar);
                    }
                    if (!TTAbsAdLoaderAdapter.this.isServerBidding() || f0.b(this.f8451for)) {
                        return;
                    }
                    TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter7 = TTAbsAdLoaderAdapter.this;
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.f8451for.get(0), tTAbsAdLoaderAdapter7.mAdSlot, tTAbsAdLoaderAdapter7.f8423class);
                    return;
                }
                if (this.f8452if == null) {
                    i3 = AdError.ERROR_CODE_NO_AD;
                }
                TTAbsAdLoaderAdapter.m3553case(TTAbsAdLoaderAdapter.this, this.f8452if);
                TTAbsAdLoaderAdapter.m3555if(TTAbsAdLoaderAdapter.this, i3, this.f8452if, 1, this.f8454try);
                AdapterLoaderListener adapterLoaderListener4 = TTAbsAdLoaderAdapter.this.f8429for;
                if (adapterLoaderListener4 != null) {
                    adapterLoaderListener4.onAdLoaded(this.f8452if, dVar);
                }
                if (TTAbsAdLoaderAdapter.this.isServerBidding()) {
                    TTBaseAd tTBaseAd5 = this.f8452if;
                    TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter8 = TTAbsAdLoaderAdapter.this;
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(tTBaseAd5, tTAbsAdLoaderAdapter8.mAdSlot, tTAbsAdLoaderAdapter8.f8423class);
                }
            }
        }
    }

    /* renamed from: case  reason: not valid java name */
    public static void m3553case(TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter, TTBaseAd tTBaseAd) {
        int i;
        i iVar;
        if (tTAbsAdLoaderAdapter == null) {
            throw null;
        }
        if (tTBaseAd == null) {
            return;
        }
        int i2 = tTAbsAdLoaderAdapter.f8432import;
        if (i2 == 0 || i2 == 100) {
            double d = tTAbsAdLoaderAdapter.f8430goto;
            if (d != 0.0d) {
                tTBaseAd.setCpm(d);
            }
        }
        if (tTAbsAdLoaderAdapter.isServerBidding() && (iVar = tTAbsAdLoaderAdapter.f8434new) != null) {
            tTBaseAd.setServerBiddingShowCpm(iVar.w());
            tTBaseAd.setServerBiddingLoadCpm(tTAbsAdLoaderAdapter.f8434new.v());
            if (tTAbsAdLoaderAdapter.f8434new.x() != null) {
                tTBaseAd.setAid(tTAbsAdLoaderAdapter.f8434new.x().c());
                tTBaseAd.setAdExtra(tTAbsAdLoaderAdapter.f8434new.x().a());
                tTBaseAd.setWinCallback(tTAbsAdLoaderAdapter.f8434new.x().i());
                tTBaseAd.setFailCallback(tTAbsAdLoaderAdapter.f8434new.x().e());
            }
        }
        tTBaseAd.setAdNetworkSlotType(tTAbsAdLoaderAdapter.f8432import);
        tTBaseAd.setLoadSort(tTAbsAdLoaderAdapter.f8421case);
        tTBaseAd.setShowSort(tTAbsAdLoaderAdapter.f8427else);
        tTBaseAd.setSdkVersion(tTAbsAdLoaderAdapter.getSdkVersion());
        i iVar2 = tTAbsAdLoaderAdapter.f8434new;
        tTBaseAd.setAdNetWorkName(iVar2 != null ? iVar2.e() : tTAbsAdLoaderAdapter.getAdNetWorkName());
        i iVar3 = tTAbsAdLoaderAdapter.f8434new;
        tTBaseAd.setCustomAdNetWorkName(iVar3 != null ? iVar3.h() : null);
        tTBaseAd.setExchangeRate(tTAbsAdLoaderAdapter.f8420break);
        tTBaseAd.setAdNetworkSlotId(tTAbsAdLoaderAdapter.f8433native);
        tTBaseAd.setRit(tTAbsAdLoaderAdapter.f8443try);
        tTBaseAd.putEventParam("waterfall_abtest", tTAbsAdLoaderAdapter.mWaterfallAbTestParam);
        String adNetWorkName = tTAbsAdLoaderAdapter.getAdNetWorkName();
        if (TextUtils.isEmpty(adNetWorkName)) {
            i = 0;
        } else if (adNetWorkName.startsWith("gdt")) {
            i = 3;
        } else if (adNetWorkName.startsWith("admob")) {
            i = 2;
        } else if (adNetWorkName.equalsIgnoreCase("pangle")) {
            i = 1;
        } else if (adNetWorkName.equalsIgnoreCase("mintegral")) {
            i = 4;
        } else if (adNetWorkName.equalsIgnoreCase("unity")) {
            i = 5;
        } else if (adNetWorkName.equalsIgnoreCase("baidu")) {
            i = 6;
        } else if (adNetWorkName.equalsIgnoreCase("ks")) {
            i = 7;
        } else if (adNetWorkName.equalsIgnoreCase("sigmob")) {
            i = 8;
        } else {
            i = adNetWorkName.equalsIgnoreCase("klevin") ? 9 : -1;
        }
        tTBaseAd.setSdkNum(i);
        tTBaseAd.setMediationRitReqTypeFromRealReq(tTAbsAdLoaderAdapter.f8428final);
        tTBaseAd.setMediationRitReqTypeSrcFromRealReq(tTAbsAdLoaderAdapter.f8438super);
        tTBaseAd.setLinkIdFromRealReq(tTAbsAdLoaderAdapter.f8440this);
        tTBaseAd.setMediationRitReqType(tTAbsAdLoaderAdapter.f8428final);
        tTBaseAd.setMediationRitReqTypeSrc(tTAbsAdLoaderAdapter.f8438super);
        i iVar4 = tTAbsAdLoaderAdapter.f8434new;
        tTBaseAd.setOriginType(iVar4 != null ? iVar4.s() : -1);
        tTBaseAd.setSubAdType(tTAbsAdLoaderAdapter.f8436return);
        tTBaseAd.setAdType(tTAbsAdLoaderAdapter.f8437static);
        g0.a(tTBaseAd, tTAbsAdLoaderAdapter.f8434new, tTAbsAdLoaderAdapter.mAdSlot, false);
        h hVar = tTAbsAdLoaderAdapter.mTTExtraModel;
        if (hVar != null) {
            int i3 = hVar.b;
            tTBaseAd.putEventParam("if_test", Integer.valueOf(i3 == 1 ? i3 : 0));
            tTBaseAd.putEventParam("server_bidding_extra", tTAbsAdLoaderAdapter.mTTExtraModel.f10876a);
        }
        g gVar = tTAbsAdLoaderAdapter.f8441throw;
        if (gVar == null || gVar.d() == null) {
            return;
        }
        tTBaseAd.putExtraMsg("extra_data_and_no_parse", tTAbsAdLoaderAdapter.f8441throw.d());
    }

    /* renamed from: for  reason: not valid java name */
    public static void m3554for(TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter, TTBaseAd tTBaseAd) {
        if (tTAbsAdLoaderAdapter.f8432import != 2 && tTBaseAd != null) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(tTAbsAdLoaderAdapter.mAdSlot, tTBaseAd);
        }
        if (os.f3493for) {
            Logger.i("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(tTAbsAdLoaderAdapter.f8443try, TTLogUtil.TAG_EVENT_FILL) + "AdNetWorkName[" + tTAbsAdLoaderAdapter.getAllAdNetWorkName() + "] AdUnitId[" + tTAbsAdLoaderAdapter.f8433native + "] AdType[" + eg.m597for(tTAbsAdLoaderAdapter.mAdSlot.getAdType(), tTAbsAdLoaderAdapter.f8436return, tTAbsAdLoaderAdapter.f8434new, tTAbsAdLoaderAdapter.mAdSlot.getAdStyleType()) + "] 视频缓存成功 (loadSort=" + tTAbsAdLoaderAdapter.f8421case + ",showSort=" + tTAbsAdLoaderAdapter.f8427else + ")");
            return;
        }
        Logger.i("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(tTAbsAdLoaderAdapter.f8443try, TTLogUtil.TAG_EVENT_FILL) + "AdNetWorkName[" + tTAbsAdLoaderAdapter.getAllAdNetWorkName() + "] AdType[" + eg.m597for(tTAbsAdLoaderAdapter.mAdSlot.getAdType(), tTAbsAdLoaderAdapter.f8436return, tTAbsAdLoaderAdapter.f8434new, tTAbsAdLoaderAdapter.mAdSlot.getAdStyleType()) + "] 视频缓存成功 ");
    }

    /* renamed from: if  reason: not valid java name */
    public static void m3555if(TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter, int i, TTBaseAd tTBaseAd, int i2, String str) {
        String str2 = i == 20000 ? AdError.AD_LOAD_SUCCESS_MSG : AdError.ERROR_MEDIA_REQUEST_SUCCESS_NO_ADS_MSG;
        boolean z = tTAbsAdLoaderAdapter.f8435public;
        if (tTAbsAdLoaderAdapter.f8432import != 2 && tTBaseAd != null) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(tTBaseAd, i, str2, tTAbsAdLoaderAdapter.f8423class, tTAbsAdLoaderAdapter.mAdSlot, tTAbsAdLoaderAdapter.f8424const, i2, z ? 1 : 0, str, tTAbsAdLoaderAdapter.f8425default != -1 ? SystemClock.elapsedRealtime() - tTAbsAdLoaderAdapter.f8425default : -1L);
        }
        if (os.f3493for) {
            StringBuilder sb = new StringBuilder();
            sb.append(TTLogUtil.getTagThirdLevelByEvent(tTAbsAdLoaderAdapter.f8443try, TTLogUtil.TAG_EVENT_FILL));
            sb.append("AdNetWorkName[");
            sb.append(tTAbsAdLoaderAdapter.getAllAdNetWorkName());
            sb.append("] AdUnitId[");
            sb.append(tTAbsAdLoaderAdapter.f8433native);
            sb.append("] AdType[");
            AdSlot adSlot = tTAbsAdLoaderAdapter.mAdSlot;
            tTAbsAdLoaderAdapter.getAdNetWorkName();
            sb.append(tTAbsAdLoaderAdapter.m3556do(adSlot, eg.m597for(tTAbsAdLoaderAdapter.mAdSlot.getAdType(), tTAbsAdLoaderAdapter.f8436return, tTAbsAdLoaderAdapter.f8434new, tTAbsAdLoaderAdapter.mAdSlot.getAdStyleType())));
            sb.append("] 请求成功 (loadSort=");
            sb.append(tTAbsAdLoaderAdapter.f8421case);
            sb.append(",showSort=");
            sb.append(tTAbsAdLoaderAdapter.f8427else);
            sb.append(")");
            Logger.i("TTMediationSDK", sb.toString());
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(TTLogUtil.getTagThirdLevelByEvent(tTAbsAdLoaderAdapter.f8443try, TTLogUtil.TAG_EVENT_FILL));
        sb2.append("AdNetWorkName[");
        sb2.append(tTAbsAdLoaderAdapter.getAllAdNetWorkName());
        sb2.append("] AdType[");
        AdSlot adSlot2 = tTAbsAdLoaderAdapter.mAdSlot;
        tTAbsAdLoaderAdapter.getAdNetWorkName();
        sb2.append(tTAbsAdLoaderAdapter.m3556do(adSlot2, eg.m597for(tTAbsAdLoaderAdapter.mAdSlot.getAdType(), tTAbsAdLoaderAdapter.f8436return, tTAbsAdLoaderAdapter.f8434new, tTAbsAdLoaderAdapter.mAdSlot.getAdStyleType())));
        sb2.append("] 请求成功");
        Logger.i("TTMediationSDK", sb2.toString());
    }

    public abstract void destroy();

    /* renamed from: do  reason: not valid java name */
    public final String m3556do(AdSlot adSlot, String str) {
        return adSlot == null ? "" : str;
    }

    public final int getAdLoadCount() {
        return this.f8444while;
    }

    public abstract String getAdNetWorkName();

    public final String getAdSlotId() {
        return this.f8433native;
    }

    public String getAdapterRit() {
        return this.f8443try;
    }

    public final String getAdm() {
        g gVar;
        if (isServerBidding() && (gVar = this.f8441throw) != null) {
            return gVar.b();
        }
        return null;
    }

    public String getAllAdNetWorkName() {
        if (this.f8434new != null) {
            if (a.f().g(this.f8434new.e())) {
                return this.f8434new.h() + "_" + this.f8434new.e();
            }
            return getAdNetWorkName();
        }
        return getAdNetWorkName();
    }

    public String getBiddingToken(Context context, String str, GMAdSlotBase gMAdSlotBase) {
        return null;
    }

    public String getClientReqId() {
        String str = !TextUtils.isEmpty(this.f8440this) ? this.f8440this : null;
        if (TextUtils.isEmpty(this.f8433native)) {
            return str;
        }
        StringBuilder m1016super = Cgoto.m1016super(Cgoto.m989case(str, "_"));
        m1016super.append(this.f8433native);
        return m1016super.toString();
    }

    public String getCustomAdNetWorkName() {
        if (this.f8434new == null || !a.f().g(this.f8434new.e())) {
            return null;
        }
        return this.f8434new.h();
    }

    public int getIfTest() {
        h hVar = this.mTTExtraModel;
        if (hVar != null) {
            return hVar.b;
        }
        return 0;
    }

    public int getReqBiddingType() {
        return this.f8432import;
    }

    public abstract String getSdkVersion();

    public boolean hasNotifyFail() {
        return this.f8431if;
    }

    public boolean hasNotifySuccess() {
        return this.f8426do;
    }

    public boolean isClientBidding() {
        return this.f8432import == 1;
    }

    public boolean isMultiBidding() {
        return this.f8432import == 3;
    }

    public boolean isServerBidding() {
        return this.f8432import == 2;
    }

    public abstract void loadAd(Context context, Map<String, Object> map);

    public final void loadAdInter(@NonNull final Context context, @NonNull i iVar, @NonNull final Map<String, Object> map, @NonNull AdSlot adSlot, h hVar, int i, GMAdSlotBase gMAdSlotBase) {
        this.f8426do = false;
        this.f8431if = false;
        this.f8434new = iVar;
        this.f8443try = adSlot.getAdUnitId();
        this.f8444while = adSlot.getAdCount();
        this.f8440this = adSlot.getLinkedId();
        this.f8437static = adSlot.getAdType();
        this.f8436return = iVar.z();
        this.f8421case = iVar.p();
        this.f8427else = iVar.y();
        this.f8433native = iVar.d();
        this.f8441throw = iVar.x();
        this.f8420break = iVar.j();
        this.mAdSlot = adSlot;
        this.mTTExtraModel = hVar;
        this.f8432import = iVar.f();
        this.mWaterfallAbTestParam = iVar.A();
        this.f8424const = i;
        this.mGMAdSlotBase = gMAdSlotBase;
        Object obj = map.get("key_mediation_rit_req_type");
        this.f8428final = obj != null ? ((Integer) obj).intValue() : 1;
        Object obj2 = map.get("key_mediation_rit_req_type_src");
        this.f8438super = obj2 != null ? ((Integer) obj2).intValue() : 1;
        Object obj3 = map.get("key_is_from_developer_req");
        this.f8439switch = obj3 != null && ((Boolean) obj3).booleanValue();
        Object obj4 = map.get("key_requestwfb_ms");
        long longValue = obj4 instanceof Long ? ((Long) obj4).longValue() : -1L;
        Object obj5 = map.get("const_is_custom");
        boolean z = obj5 != null && ((Boolean) obj5).booleanValue();
        if (!iVar.G()) {
            this.f8442throws = this.f8428final == 4 ? 3 : 0;
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(iVar, adSlot, getSdkVersion(), this.f8439switch, this.f8442throws, i, this.f8428final, this.f8438super, (AdError) null, longValue);
        }
        if (!isServerBidding() && !isClientBidding() && !isMultiBidding()) {
            this.f8430goto = iVar.i();
        } else {
            this.f8430goto = 0.0d;
        }
        this.f8422catch = System.currentTimeMillis();
        if (!z) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().e(iVar.d(), getSdkVersion());
        }
        if (!TextUtils.equals("mintegral", iVar.e()) && !TextUtils.equals("baidu", iVar.e()) && !TextUtils.equals("admob", iVar.e())) {
            try {
                loadAd(context, map);
                return;
            } catch (Throwable unused) {
                notifyAdFailed(new AdError("子线程ADN请求广告崩溃"));
                return;
            }
        }
        ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TTAbsAdLoaderAdapter.this.loadAd(context, map);
                } catch (Throwable unused2) {
                    TTAbsAdLoaderAdapter.this.notifyAdFailed(new AdError("主线程ADN请求广告崩溃"));
                }
            }
        });
    }

    public final void nativeDislikeClick(TTBaseAd tTBaseAd, String str, Map<String, Object> map) {
        if (tTBaseAd == null || tTBaseAd.getAdType() != 5) {
            return;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(tTBaseAd, this.mAdSlot, str);
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3557new(TTBaseAd tTBaseAd, AdError adError, boolean z) {
        this.f8431if = true;
        if (this.f8426do) {
            return;
        }
        this.f8426do = true;
        this.f8423class = System.currentTimeMillis() - this.f8422catch;
        m3558try("failed", tTBaseAd, null, adError, z);
    }

    public final void notifyAdFailed(AdError adError) {
        m3557new(null, adError, true);
    }

    public final void notifyAdLoaded(GMCustomAd gMCustomAd) {
        notifyAdLoaded(gMCustomAd.getTTBaseAd());
    }

    public final void notifyAdLoadedCustom(List<? extends GMCustomAd> list) {
        if (list != null) {
            ArrayList arrayList = new ArrayList(list.size());
            for (GMCustomAd gMCustomAd : list) {
                arrayList.add(gMCustomAd.getTTBaseAd());
            }
            notifyAdLoaded(arrayList);
        }
    }

    public final void notifyAdVideoCache(GMCustomAd gMCustomAd, AdError adError) {
        notifyAdVideoCache(gMCustomAd.getTTBaseAd(), adError);
    }

    public void removeFromParent(View view) {
        UIUtils.removeFromParent(view);
    }

    public final void setAdapterListener(AdapterLoaderListener adapterLoaderListener) {
        this.f8429for = adapterLoaderListener;
    }

    public void setTotalTimedOut(boolean z) {
        this.f8435public = z;
    }

    /* renamed from: try  reason: not valid java name */
    public final void m3558try(String str, TTBaseAd tTBaseAd, List<TTBaseAd> list, AdError adError, boolean z) {
        ThreadHelper.runOnMSDKThread(new CallBackRunnable(str, tTBaseAd, list, adError, t.a(this.f8434new) ? Cgoto.m1021throws() : null, z));
    }

    public final void notifyAdLoaded(TTBaseAd tTBaseAd) {
        int i;
        if (this.f8425default == -1) {
            this.f8425default = SystemClock.elapsedRealtime();
        }
        if (tTBaseAd != null) {
            tTBaseAd.setAdNetworkSlotType(this.f8432import);
            tTBaseAd.setExchangeRate(this.f8420break);
            tTBaseAd.setFillTime(SystemClock.elapsedRealtime());
            g0.a(tTBaseAd, this.f8434new, this.mAdSlot, true);
            if (this.mAdSlot != null && ((i = this.f8432import) == 1 || i == 3)) {
                double bidFloor = this.mAdSlot.getBidFloor();
                if (bidFloor > 0.0d && bidFloor > tTBaseAd.getCpm()) {
                    m3557new(tTBaseAd, new AdError(AdError.ERROR_CODE_BIDDING_PRICE_LOW, AdError.getMessage(AdError.ERROR_CODE_BIDDING_PRICE_LOW)), true);
                    return;
                }
            }
        }
        if (this.f8426do) {
            return;
        }
        this.f8426do = true;
        this.f8423class = System.currentTimeMillis() - this.f8422catch;
        m3558try("adload_ad", tTBaseAd, null, null, true);
        i iVar = this.f8434new;
        if (iVar != null && iVar.t() == 10 && this.f8436return == 1) {
            notifyAdVideoCache(tTBaseAd, (AdError) null);
        }
    }

    public final void notifyAdVideoCache(TTBaseAd tTBaseAd, AdError adError) {
        if (this.f8431if) {
            return;
        }
        m3558try("ad_video_cache", tTBaseAd, null, adError, true);
    }

    public final void notifyAdLoaded(List<TTBaseAd> list) {
        int i;
        int i2;
        if (this.f8425default == -1) {
            this.f8425default = SystemClock.elapsedRealtime();
        }
        if (list != null) {
            for (TTBaseAd tTBaseAd : list) {
                if (tTBaseAd != null) {
                    tTBaseAd.setFillTime(SystemClock.elapsedRealtime());
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        if (!f0.a(list)) {
            arrayList.addAll(list);
        }
        if (!f0.b(list) && ((i = this.f8432import) == 1 || i == 3)) {
            Iterator<TTBaseAd> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                TTBaseAd next = it.next();
                next.setAdNetworkSlotType(this.f8432import);
                next.setExchangeRate(this.f8420break);
                g0.a(next, this.f8434new, this.mAdSlot, true);
                if (this.mAdSlot != null && ((i2 = this.f8432import) == 1 || i2 == 3)) {
                    double bidFloor = this.mAdSlot.getBidFloor();
                    if (bidFloor > 0.0d && bidFloor > next.getCpm()) {
                        arrayList.remove(next);
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(new AdError(AdError.ERROR_CODE_BIDDING_PRICE_LOW, AdError.getMessage(AdError.ERROR_CODE_BIDDING_PRICE_LOW)), this.mAdSlot, this.f8434new, this.f8424const, this.f8428final, this.f8438super, getSdkVersion(), this.f8423class, String.valueOf(next.getCpm()), next.getLevelTag(), t.a(this.f8434new) ? Cgoto.m1021throws() : null);
                    }
                }
            }
            if (arrayList.size() <= 0) {
                m3557new(null, new AdError(AdError.ERROR_CODE_BIDDING_PRICE_LOW, AdError.getMessage(AdError.ERROR_CODE_BIDDING_PRICE_LOW)), false);
                return;
            }
        }
        if (this.f8426do) {
            return;
        }
        this.f8426do = true;
        this.f8423class = System.currentTimeMillis() - this.f8422catch;
        m3558try("adload_ads", null, arrayList, null, true);
    }
}
