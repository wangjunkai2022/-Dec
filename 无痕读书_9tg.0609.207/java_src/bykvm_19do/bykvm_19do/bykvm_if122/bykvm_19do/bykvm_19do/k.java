package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.VisibleForTesting;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.l;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.o;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t;
import com.apk.Cgoto;
import com.apk.eg;
import com.bytedance.msdk.adapter.listener.ITTAdapterSplashAdListener;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTRequestExtraParams;
import com.bytedance.msdk.api.v2.GMNetworkRequestInfo;
import com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener;
import com.bytedance.msdk.api.v2.ad.splash.GMSplashAdLoadCallback;
import com.bytedance.msdk.api.v2.ad.splash.GMSplashCardListener;
import com.bytedance.msdk.api.v2.ad.splash.GMSplashMinWindowListener;
import com.bytedance.msdk.api.v2.slot.GMAdSlotSplash;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* compiled from: TTInterSplashAdManager.java */
/* loaded from: classes8.dex */
public class k extends e implements ITTAdapterSplashAdListener {
    public GMSplashAdLoadCallback f0;
    public GMSplashAdListener g0;
    public GMSplashMinWindowListener h0;
    public GMSplashCardListener i0;

    /* compiled from: TTInterSplashAdManager.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdError f10847a;

        public a(AdError adError) {
            this.f10847a = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (k.this.g0 != null) {
                k.this.g0.onAdShowFail(this.f10847a);
            }
        }
    }

    public k(Activity activity, View view, String str) {
        super(activity, str);
    }

    public k(Activity activity, String str) {
        super(activity, str);
    }

    private void a(TTBaseAd tTBaseAd, ViewGroup viewGroup) {
        this.N = tTBaseAd;
        tTBaseAd.setHasShown(true);
        this.N.setTTAdatperCallback(this.I);
        if (this.N.canAdReuse() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, this.N.getAdNetworkSlotId(), e())) {
            TTBaseAd tTBaseAd2 = this.N;
            a(tTBaseAd2, tTBaseAd2.getAdNetworkSlotId());
        }
        Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_SHOW) + "展示的广告类型：" + eg.m592do(this.N.getAdNetworkPlatformId()) + ",slotId：" + this.N.getAdNetworkSlotId() + ",slotType:" + this.N.getAdNetworkSlotType());
        m b = m.b();
        StringBuilder sb = new StringBuilder();
        sb.append(this.f);
        sb.append("");
        b.j(sb.toString());
        l.b().e(this.f, this.N.getAdNetworkSlotId());
        this.N.showSplashAd(viewGroup);
    }

    private void d(AdError adError) {
        ThreadHelper.runOnUiThread(new a(adError));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void B() {
        super.B();
        this.g0 = null;
        this.f0 = null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void O() {
        GMSplashAdLoadCallback gMSplashAdLoadCallback = this.f0;
        if (gMSplashAdLoadCallback != null) {
            gMSplashAdLoadCallback.onSplashAdLoadSuccess();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void P() {
    }

    public void a(ViewGroup viewGroup) {
        AdError adError;
        boolean z;
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e> a2;
        TTBaseAd tTBaseAd;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> list = null;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(this.h, cVar != null ? cVar.B() : null);
        if (this.L) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a((List<TTBaseAd>) null, this.h);
            d(new AdError(AdError.ERROR_CODE_SHOW_FAIL_NO_AD, AdError.getMessage(AdError.ERROR_CODE_SHOW_FAIL_NO_AD)));
            return;
        }
        List<TTBaseAd> u = u();
        if (viewGroup == null || this.b.get()) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(u, this.h);
            adError = new AdError(AdError.ERROR_CODE_SHOW_FAIL_NO_AD, AdError.getMessage(AdError.ERROR_CODE_SHOW_FAIL_NO_AD));
        } else {
            try {
                list = K();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            boolean z2 = false;
            if (list != null && list.size() > 0) {
                HashMap<String, TTBaseAd> d = d(u);
                for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar : list) {
                    if (iVar != null) {
                        String d2 = iVar.d();
                        TTBaseAd tTBaseAd2 = d.get(d2);
                        if (tTBaseAd2 != null && tTBaseAd2.isReady(this.f) && !tTBaseAd2.isHasShown()) {
                            a(tTBaseAd2, viewGroup);
                        } else if (iVar.a() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, d2, e()) && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(d2, this.h, false) == 3 && (a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(d2, this.h)) != null && a2.size() > 0 && (tTBaseAd = a2.get(0).f10900a) != null && tTBaseAd.isReady(this.f) && !tTBaseAd.isHasShown()) {
                            Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_SHOW) + "adSlotId：" + tTBaseAd.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(tTBaseAd.getAdNetworkPlatformId()) + ",isReady()：" + tTBaseAd.isReady(this.f));
                            c(tTBaseAd);
                            a(tTBaseAd, viewGroup);
                        }
                        z = true;
                        z2 = true;
                        break;
                    }
                }
            }
            z = false;
            if (!z2 && u != null && u.size() > 0) {
                Iterator<TTBaseAd> it = u.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    TTBaseAd next = it.next();
                    if (next != null && next.isReady(this.f) && !next.isHasShown()) {
                        a(next, viewGroup);
                        z = true;
                        break;
                    }
                }
            }
            if (z) {
                this.L = true;
                if (this.N != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.N);
                    a(arrayList);
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(this.N, this.h);
                return;
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(u, this.h);
            adError = new AdError(AdError.ERROR_CODE_SHOW_FAIL_NO_AD, AdError.getMessage(AdError.ERROR_CODE_SHOW_FAIL_NO_AD));
        }
        d(adError);
    }

    public void a(AdSlot adSlot, GMAdSlotSplash gMAdSlotSplash, GMNetworkRequestInfo gMNetworkRequestInfo, GMSplashAdLoadCallback gMSplashAdLoadCallback) {
        a(adSlot, gMAdSlotSplash, gMNetworkRequestInfo, gMSplashAdLoadCallback, -1);
    }

    public void a(AdSlot adSlot, GMAdSlotSplash gMAdSlotSplash, GMNetworkRequestInfo gMNetworkRequestInfo, GMSplashAdLoadCallback gMSplashAdLoadCallback, int i) {
        if (adSlot != null && adSlot.isV2Request()) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a("mediation_v2_splash");
        }
        if (d0()) {
            AdSlot shallowCopy = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.b.getShallowCopy(adSlot);
            this.h = shallowCopy;
            if (shallowCopy != null) {
                shallowCopy.setAdType(3);
                this.h.setAdCount(1);
            }
            this.S = gMNetworkRequestInfo;
            this.f0 = gMSplashAdLoadCallback;
            if (i != -1) {
                this.r.put(TTRequestExtraParams.PARAM_AD_LOAD_TIMEOUT, Integer.valueOf(i));
            }
            this.I = this;
            this.w = gMAdSlotSplash;
            S();
        }
    }

    public void a(GMSplashAdListener gMSplashAdListener) {
        this.g0 = gMSplashAdListener;
    }

    public void a(GMSplashCardListener gMSplashCardListener) {
        this.i0 = gMSplashCardListener;
    }

    public void a(GMSplashMinWindowListener gMSplashMinWindowListener) {
        this.h0 = gMSplashMinWindowListener;
    }

    public boolean a(Rect rect, ITTAdatperCallback iTTAdatperCallback) {
        TTBaseAd tTBaseAd = this.N;
        if (tTBaseAd == null || tTBaseAd.getAdNetworkPlatformId() != 7) {
            return false;
        }
        this.N.showMinWindow(rect, iTTAdatperCallback);
        return true;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void b(AdError adError) {
        GMSplashAdLoadCallback gMSplashAdLoadCallback = this.f0;
        if (gMSplashAdLoadCallback != null) {
            gMSplashAdLoadCallback.onSplashAdLoadFail(adError);
        }
    }

    public void e0() {
        if (this.N.canAdReuse() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, this.N.getAdNetworkSlotId(), e())) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(this.N.getAdNetworkSlotId(), this.h, this.r, true, this.S, this.v, this.H, this.w);
        }
    }

    public int[] f0() {
        TTBaseAd tTBaseAd = this.N;
        if (tTBaseAd != null) {
            tTBaseAd.getMinWindowSize();
            return null;
        }
        return null;
    }

    public Bitmap g0() {
        TTBaseAd tTBaseAd = this.N;
        if (tTBaseAd != null) {
            tTBaseAd.getSplashBitMap();
            return null;
        }
        return null;
    }

    @Override // com.bytedance.msdk.adapter.listener.ITTAdapterSplashAdListener
    public Activity getActivity() {
        GMSplashCardListener gMSplashCardListener = this.i0;
        if (gMSplashCardListener != null) {
            return gMSplashCardListener.getActivity();
        }
        return null;
    }

    @VisibleForTesting
    public int h0() {
        return ((Integer) this.r.get(TTRequestExtraParams.PARAM_AD_LOAD_TIMEOUT)).intValue();
    }

    public boolean i0() {
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

    public void j0() {
        TTBaseAd tTBaseAd = this.N;
        if (tTBaseAd != null) {
            tTBaseAd.splashMinWindowAnimationFinish();
        }
    }

    public void k(int i) {
        this.r.put(TTRequestExtraParams.PARAM_AD_LOAD_TIMEOUT, Integer.valueOf(i));
    }

    @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener
    public void onAdClicked() {
        GMSplashAdListener gMSplashAdListener = this.g0;
        if (gMSplashAdListener != null) {
            gMSplashAdListener.onAdClicked();
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
    }

    @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener
    public void onAdDismiss() {
        GMSplashAdListener gMSplashAdListener = this.g0;
        if (gMSplashAdListener != null) {
            gMSplashAdListener.onAdDismiss();
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a(this.H, this.f, e());
    }

    @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener
    public void onAdShow() {
        GMSplashAdListener gMSplashAdListener = this.g0;
        if (gMSplashAdListener != null) {
            gMSplashAdListener.onAdShow();
        }
        m b = m.b();
        b.a(this.f + "");
        if (this.N != null) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_SHOW_LISTEN) + "adSlotId：" + this.N.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(this.N.getAdNetworkPlatformId()));
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.k.b().a(this.f, this.N.getAdNetworkSlotId());
        }
        e0();
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(this.N, this.h, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.b(this.f, this.N);
    }

    @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener
    public void onAdShowFail(AdError adError) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, adError, 1, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
        d(adError);
    }

    @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener
    public void onAdSkip() {
        GMSplashAdListener gMSplashAdListener = this.g0;
        if (gMSplashAdListener != null) {
            gMSplashAdListener.onAdSkip();
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a(this.H, this.f, e());
    }

    @Override // com.bytedance.msdk.adapter.listener.ITTAdapterSplashAdListener
    public void onMinWindowPlayFinish() {
        GMSplashMinWindowListener gMSplashMinWindowListener = this.h0;
        if (gMSplashMinWindowListener != null) {
            gMSplashMinWindowListener.onMinWindowPlayFinish();
        }
    }

    @Override // com.bytedance.msdk.adapter.listener.ITTAdapterSplashAdListener
    public void onMinWindowStart() {
        GMSplashMinWindowListener gMSplashMinWindowListener = this.h0;
        if (gMSplashMinWindowListener != null) {
            gMSplashMinWindowListener.onMinWindowStart();
        }
    }

    @Override // com.bytedance.msdk.adapter.listener.ITTAdapterSplashAdListener
    public void onSplashClickEyeClose() {
        GMSplashCardListener gMSplashCardListener = this.i0;
        if (gMSplashCardListener != null) {
            gMSplashCardListener.onSplashClickEyeClose();
        }
    }

    @Override // com.bytedance.msdk.adapter.listener.ITTAdapterSplashAdListener
    public void onSplashEyeReady() {
        GMSplashCardListener gMSplashCardListener = this.i0;
        if (gMSplashCardListener != null) {
            gMSplashCardListener.onSplashEyeReady();
        }
    }

    @Override // com.bytedance.msdk.adapter.listener.ITTAdapterSplashAdListener
    public void setSupportSplashClickEye(boolean z) {
        GMSplashCardListener gMSplashCardListener = this.i0;
        if (gMSplashCardListener != null) {
            gMSplashCardListener.setSupportSplashClickEye(z);
        }
    }
}
