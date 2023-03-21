package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do;

import android.app.Activity;
import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t;
import com.apk.Cgoto;
import com.apk.eg;
import com.bytedance.msdk.adapter.listener.ITTAdapterInterstitialListener;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener;
import com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitial;
/* compiled from: TTInterAdInterstitialManager.java */
/* loaded from: classes8.dex */
public class c extends bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d implements ITTAdapterInterstitialListener {
    public GMInterstitialAdLoadCallback g0;
    public GMInterstitialAdListener h0;

    /* compiled from: TTInterAdInterstitialManager.java */
    /* loaded from: classes8.dex */
    public class a implements d.c {
        public a() {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d.c
        public void a() {
            c.this.d(new AdError(AdError.ERROR_CODE_SHOW_FAIL_NO_AD, AdError.getMessage(AdError.ERROR_CODE_SHOW_FAIL_NO_AD)));
        }
    }

    /* compiled from: TTInterAdInterstitialManager.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdError f10821a;

        public b(AdError adError) {
            this.f10821a = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.h0 != null) {
                c.this.h0.onInterstitialShowFail(this.f10821a);
            }
        }
    }

    public c(Context context, String str) {
        super(context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(AdError adError) {
        ThreadHelper.runOnUiThread(new b(adError));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void B() {
        super.B();
        this.h0 = null;
        this.g0 = null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void O() {
        GMInterstitialAdLoadCallback gMInterstitialAdLoadCallback = this.g0;
        if (gMInterstitialAdLoadCallback != null) {
            gMInterstitialAdLoadCallback.onInterstitialLoad();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void P() {
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void b(AdError adError) {
        GMInterstitialAdLoadCallback gMInterstitialAdLoadCallback = this.g0;
        if (gMInterstitialAdLoadCallback != null) {
            gMInterstitialAdLoadCallback.onInterstitialLoadFail(adError);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
    public void onAdLeftApplication() {
        GMInterstitialAdListener gMInterstitialAdListener = this.h0;
        if (gMInterstitialAdListener != null) {
            gMInterstitialAdListener.onAdLeftApplication();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
    public void onAdOpened() {
        GMInterstitialAdListener gMInterstitialAdListener = this.h0;
        if (gMInterstitialAdListener != null) {
            gMInterstitialAdListener.onAdOpened();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
    public void onInterstitialAdClick() {
        GMInterstitialAdListener gMInterstitialAdListener = this.h0;
        if (gMInterstitialAdListener != null) {
            gMInterstitialAdListener.onInterstitialAdClick();
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
    public void onInterstitialClosed() {
        GMInterstitialAdListener gMInterstitialAdListener = this.h0;
        if (gMInterstitialAdListener != null) {
            gMInterstitialAdListener.onInterstitialClosed();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
    public void onInterstitialShow() {
        GMInterstitialAdListener gMInterstitialAdListener = this.h0;
        if (gMInterstitialAdListener != null) {
            gMInterstitialAdListener.onInterstitialShow();
        }
        m b2 = m.b();
        b2.a(this.f + "");
        if (this.N != null) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_SHOW_LISTEN) + "adSlotId：" + this.N.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(this.N.getAdNetworkPlatformId()));
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.k.b().a(this.f, this.N.getAdNetworkSlotId());
        }
        e0();
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(this.N, this.h, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.b(this.f, this.N);
    }

    @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
    public void onInterstitialShowFail(AdError adError) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, adError, 1, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
        d(adError);
    }

    public void a(AdSlot adSlot, GMAdSlotInterstitial gMAdSlotInterstitial, GMInterstitialAdLoadCallback gMInterstitialAdLoadCallback) {
        if (adSlot != null && adSlot.isV2Request()) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a("mediation_v2_interstitial");
        }
        if (d0()) {
            AdSlot shallowCopy = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.b.getShallowCopy(adSlot);
            this.h = shallowCopy;
            if (shallowCopy != null) {
                shallowCopy.setAdType(2);
                this.h.setAdCount(1);
            }
            this.g0 = gMInterstitialAdLoadCallback;
            this.I = this;
            this.w = gMAdSlotInterstitial;
            S();
        }
    }

    public void a(Activity activity) {
        a(activity, new a());
    }

    public void a(GMInterstitialAdListener gMInterstitialAdListener) {
        this.h0 = gMInterstitialAdListener;
    }
}
