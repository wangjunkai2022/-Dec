package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.l;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.o;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t;
import com.apk.Cgoto;
import com.apk.eg;
import com.bytedance.msdk.adapter.listener.ITTAdapterBannerAdListener;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.TTRequestExtraParams;
import com.bytedance.msdk.api.v2.GMAdDislike;
import com.bytedance.msdk.api.v2.GMDislikeCallback;
import com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener;
import com.bytedance.msdk.api.v2.ad.banner.GMBannerAdLoadCallback;
import com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo;
import com.bytedance.msdk.api.v2.ad.banner.GMNativeToBannerListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdAppInfo;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: TTInterBannerAdManager.java */
/* loaded from: classes8.dex */
public class d extends e implements ITTAdapterBannerAdListener {
    public GMBannerAdListener f0;
    public GMBannerAdLoadCallback g0;
    public boolean h0;
    public GMNativeToBannerListener i0;

    /* compiled from: TTInterBannerAdManager.java */
    /* loaded from: classes8.dex */
    public class a implements GMDislikeCallback {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ View f10822a;

        public a(d dVar, View view) {
            this.f10822a = view;
        }

        @Override // com.bytedance.msdk.api.v2.GMDislikeCallback
        public void onCancel() {
        }

        @Override // com.bytedance.msdk.api.v2.GMDislikeCallback
        public void onRefuse() {
        }

        @Override // com.bytedance.msdk.api.v2.GMDislikeCallback
        public void onSelected(int i, String str) {
            View view = this.f10822a;
            if (view != null) {
                View view2 = (View) view.getParent();
                if (view2 instanceof ViewGroup) {
                    ((ViewGroup) view2).removeViewInLayout(this.f10822a);
                }
            }
        }

        @Override // com.bytedance.msdk.api.v2.GMDislikeCallback
        public void onShow() {
        }
    }

    /* compiled from: TTInterBannerAdManager.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdError f10823a;

        public b(AdError adError) {
            this.f10823a = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.this.f0 != null) {
                d.this.f0.onAdShowFail(this.f10823a);
            }
        }
    }

    /* compiled from: TTInterBannerAdManager.java */
    /* loaded from: classes8.dex */
    public class c implements GMNativeAdInfo {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ TTBaseAd f10824a;

        public c(d dVar, TTBaseAd tTBaseAd) {
            this.f10824a = tTBaseAd;
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        @Nullable
        public String getActionText() {
            return this.f10824a.getActionText();
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        public int getAdImageMode() {
            return this.f10824a.getImageMode();
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        @Nullable
        public String getDescription() {
            return this.f10824a.getAdDescription();
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        @Nullable
        public GMAdDislike getDislikeDialog(Activity activity) {
            return getDislikeDialog(activity, null);
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        @Nullable
        public String getIconUrl() {
            return this.f10824a.getIconUrl();
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        @Nullable
        public List<String> getImageList() {
            return this.f10824a.getImages();
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        @Nullable
        public String getImageUrl() {
            return this.f10824a.getImageUrl();
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        public int getInteractionType() {
            return this.f10824a.getInteractionType();
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        public GMNativeAdAppInfo getNativeAdAppInfo() {
            if (this.f10824a.hasAppInfo()) {
                GMNativeAdAppInfo gMNativeAdAppInfo = new GMNativeAdAppInfo();
                gMNativeAdAppInfo.setAppName(this.f10824a.getAppName());
                gMNativeAdAppInfo.setAuthorName(this.f10824a.getAuthorName());
                gMNativeAdAppInfo.setPackageSizeBytes(this.f10824a.getPackageSizeBytes());
                gMNativeAdAppInfo.setPermissionsUrl(this.f10824a.getPermissionsUrl());
                gMNativeAdAppInfo.setPrivacyAgreement(this.f10824a.getPrivacyAgreement());
                gMNativeAdAppInfo.setVersionName(this.f10824a.getVersionName());
                gMNativeAdAppInfo.setPermissionsMap(this.f10824a.getPermissionsMap());
                gMNativeAdAppInfo.setAppInfoExtra(this.f10824a.getAppInfoExtra());
                return gMNativeAdAppInfo;
            }
            return null;
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        @Nullable
        public String getSource() {
            return this.f10824a.getSource();
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        public double getStarRating() {
            return this.f10824a.getStarRating();
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        @Nullable
        public String getTitle() {
            return this.f10824a.getAdTitle();
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        public boolean hasDislike() {
            return this.f10824a.hasDislike();
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        public void registerView(@NonNull Activity activity, @NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, GMViewBinder gMViewBinder) {
            this.f10824a.registerViewForInteraction(activity, viewGroup, list, list2, null, gMViewBinder);
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMNativeAdInfo
        @Nullable
        public GMAdDislike getDislikeDialog(Activity activity, Map<String, Object> map) {
            return this.f10824a.getDislikeDialog(activity, map);
        }
    }

    public d(Context context, String str) {
        super(context, str);
        this.h0 = false;
    }

    private void b(boolean z) {
        TTBaseAd tTBaseAd = this.N;
        if (tTBaseAd != null && tTBaseAd.canAdReuse() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, this.N.getAdNetworkSlotId(), e())) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(this.N.getAdNetworkSlotId(), this.h, this.r, z, this.S, this.v, this.H, this.w);
        }
    }

    private GMNativeAdInfo d(TTBaseAd tTBaseAd) {
        return new c(this, tTBaseAd);
    }

    private void d(AdError adError) {
        ThreadHelper.runOnUiThread(new b(adError));
    }

    private View e(TTBaseAd tTBaseAd) {
        GMNativeToBannerListener gMNativeToBannerListener;
        this.N = tTBaseAd;
        tTBaseAd.setHasShown(true);
        this.N.setTTAdatperCallback(this.I);
        if (this.N.canAdReuse() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, this.N.getAdNetworkSlotId(), e())) {
            TTBaseAd tTBaseAd2 = this.N;
            a(tTBaseAd2, tTBaseAd2.getAdNetworkSlotId());
        }
        b(false);
        Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_SHOW) + "展示的广告类型：" + eg.m592do(this.N.getAdNetworkPlatformId()) + ",slotId：" + this.N.getAdNetworkSlotId() + ",slotType:" + this.N.getAdNetworkSlotType());
        View adView = this.N.getAdView();
        if (!this.N.isCustomAd() && this.N.getSubAdType() == 4 && this.N.getOriginType() == 2 && (gMNativeToBannerListener = this.i0) != null) {
            try {
                adView = gMNativeToBannerListener.getGMBannerViewFromNativeAd(d(this.N));
                if (adView == null) {
                    Logger.d("TTMediationSDK", "--==-- getGMBannerViewFromNativeAd()返回null");
                }
            } catch (Throwable th) {
                Logger.d("TTMediationSDK", "--==-- getGMBannerViewFromNativeAd()发生异常，信息如下：");
                th.printStackTrace();
            }
        }
        if (this.N.hasDislike()) {
            this.N.setDislikeCallback((Activity) this.H, new a(this, adView));
        }
        return adView;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void B() {
        super.B();
        this.f0 = null;
        this.g0 = null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public String H() {
        if (this.h0) {
            return super.H();
        }
        return null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public GMAdEcpmInfo J() {
        if (this.h0) {
            return super.J();
        }
        return null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void O() {
        GMBannerAdLoadCallback gMBannerAdLoadCallback = this.g0;
        if (gMBannerAdLoadCallback != null) {
            gMBannerAdLoadCallback.onAdLoaded();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void P() {
    }

    public void a(AdSlot adSlot, GMAdSlotBase gMAdSlotBase, GMBannerAdLoadCallback gMBannerAdLoadCallback) {
        if (adSlot != null && adSlot.isV2Request()) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a("mediation_v2_banner");
        }
        if (d0()) {
            AdSlot shallowCopy = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.b.getShallowCopy(adSlot);
            this.h = shallowCopy;
            if (shallowCopy != null) {
                shallowCopy.setAdType(1);
                this.h.setAdCount(1);
            }
            this.g0 = gMBannerAdLoadCallback;
            this.I = this;
            this.w = gMAdSlotBase;
            S();
        }
    }

    public void a(GMBannerAdListener gMBannerAdListener) {
        this.f0 = gMBannerAdListener;
    }

    public void a(GMNativeToBannerListener gMNativeToBannerListener) {
        this.i0 = gMNativeToBannerListener;
    }

    public void a(boolean z) {
        this.r.put(TTRequestExtraParams.PARAM_BANNER_ALLOW_SHOW_CLOSE_BTN, Boolean.valueOf(z));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void b(AdError adError) {
        GMBannerAdLoadCallback gMBannerAdLoadCallback = this.g0;
        if (gMBannerAdLoadCallback != null) {
            gMBannerAdLoadCallback.onAdFailedToLoad(adError);
        }
    }

    public synchronized View e0() {
        View view;
        TTBaseAd tTBaseAd;
        TTBaseAd next;
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e> a2;
        TTBaseAd tTBaseAd2;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(this.h, cVar != null ? cVar.B() : null);
        if (!this.L && !this.b.get()) {
            List<TTBaseAd> u = u();
            List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> K = K();
            if (K != null && K.size() > 0) {
                HashMap<String, TTBaseAd> d = d(u);
                view = null;
                for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar : K) {
                    if (iVar != null) {
                        String d2 = iVar.d();
                        TTBaseAd tTBaseAd3 = d.get(d2);
                        if (tTBaseAd3 != null && tTBaseAd3.isReady(this.f) && !tTBaseAd3.isHasShown() && (view = e(tTBaseAd3)) != null) {
                            break;
                        } else if (iVar.a() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, d2, e()) && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(d2, this.h, false) == 3 && (a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(d2, this.h)) != null && a2.size() > 0 && (tTBaseAd2 = a2.get(0).f10900a) != null && tTBaseAd2.isReady(this.f) && !tTBaseAd2.isHasShown()) {
                            c(tTBaseAd2);
                            view = e(tTBaseAd2);
                            if (view != null) {
                                break;
                            }
                        }
                    }
                }
            } else {
                view = null;
            }
            if (view == null && u != null && u.size() > 0) {
                Iterator<TTBaseAd> it = u.iterator();
                while (it.hasNext() && ((next = it.next()) == null || !next.isReady(this.f) || next.isHasShown() || (view = e(next)) == null)) {
                }
            }
            if (view == null) {
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(u, this.h);
                d(new AdError(AdError.ERROR_CODE_SHOW_FAIL_NO_AD, AdError.getMessage(AdError.ERROR_CODE_SHOW_FAIL_NO_AD)));
                return null;
            }
            this.L = true;
            if (this.N != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.N);
                a(arrayList);
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(this.N, this.h);
            if (this.f0 != null && (tTBaseAd = this.N) != null && tTBaseAd.getAdNetworkPlatformId() == 2) {
                Logger.d("ADMOB_EVENT", TTLogUtil.getTagThirdLevelById(this.f, this.N.getAdNetworkSlotId()) + "mTTAdBannerListener-->Admob--->onAdShow......");
                m.b().a(this.f + "");
                m.b().j(this.f + "");
                this.f0.onAdShow();
                if (this.N != null) {
                    Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_SHOW_LISTEN) + "adSlotId：" + this.N.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(this.N.getAdNetworkPlatformId()));
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.k.b().a(this.f, this.N.getAdNetworkSlotId());
                    l.b().e(this.f, this.N.getAdNetworkSlotId());
                }
                b(true);
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(this.N, this.h, 0, (String) null);
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.b(this.f, this.N);
            }
            return view;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a((List<TTBaseAd>) null, this.h);
        d(new AdError(AdError.ERROR_CODE_SHOW_FAIL_NO_AD, AdError.getMessage(AdError.ERROR_CODE_SHOW_FAIL_NO_AD)));
        return null;
    }

    @VisibleForTesting
    public boolean f0() {
        return ((Boolean) this.r.get(TTRequestExtraParams.PARAM_BANNER_ALLOW_SHOW_CLOSE_BTN)).booleanValue();
    }

    public boolean g0() {
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> list;
        try {
            list = K();
        } catch (Throwable th) {
            th.printStackTrace();
            list = null;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        return o.a(this.q, this.p, this.o, this.h, this.L, this.b, l(), e(), list, cVar != null ? cVar.B() : null);
    }

    public void h0() {
        TTBaseAd tTBaseAd = this.N;
        if (tTBaseAd != null) {
            tTBaseAd.onPause();
        }
    }

    public void i0() {
        TTBaseAd tTBaseAd = this.N;
        if (tTBaseAd != null) {
            tTBaseAd.onResume();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdClicked() {
        GMBannerAdListener gMBannerAdListener = this.f0;
        if (gMBannerAdListener != null) {
            gMBannerAdListener.onAdClicked();
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdClosed() {
        GMBannerAdListener gMBannerAdListener = this.f0;
        if (gMBannerAdListener != null) {
            gMBannerAdListener.onAdClosed();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdLeftApplication() {
        GMBannerAdListener gMBannerAdListener = this.f0;
        if (gMBannerAdListener != null) {
            gMBannerAdListener.onAdLeftApplication();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdOpened() {
        GMBannerAdListener gMBannerAdListener = this.f0;
        if (gMBannerAdListener != null) {
            gMBannerAdListener.onAdOpened();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdShow() {
        this.h0 = true;
        if (this.f0 != null) {
            m b2 = m.b();
            b2.a(this.f + "");
            m b3 = m.b();
            b3.j(this.f + "");
            this.f0.onAdShow();
        }
        if (this.N != null) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_SHOW_LISTEN) + "adSlotId：" + this.N.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(this.N.getAdNetworkPlatformId()));
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.k.b().a(this.f, this.N.getAdNetworkSlotId());
            l.b().e(this.f, this.N.getAdNetworkSlotId());
        }
        b(true);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(this.N, this.h, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.b(this.f, this.N);
    }

    @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
    public void onAdShowFail(AdError adError) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, adError, 1, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
        d(adError);
    }
}
