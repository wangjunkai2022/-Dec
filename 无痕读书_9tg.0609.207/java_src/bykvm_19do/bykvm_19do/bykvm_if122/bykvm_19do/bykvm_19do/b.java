package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.q;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t;
import com.apk.Cgoto;
import com.apk.eg;
import com.bytedance.msdk.adapter.listener.ITTAdapterFullVideoAdListener;
import com.bytedance.msdk.adapter.listener.ITTAdapterInterstitialListener;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdListener;
import com.bytedance.msdk.api.v2.ad.interstitialFull.GMInterstitialFullAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitialFull;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.Map;
/* compiled from: TTInterAdInterstitialFullManager.java */
/* loaded from: classes8.dex */
public class b extends bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d {
    public GMInterstitialFullAdLoadCallback g0;
    public GMInterstitialFullAdListener h0;
    public ITTAdapterFullVideoAdListener i0;
    public ITTAdapterInterstitialListener j0;

    /* compiled from: TTInterAdInterstitialFullManager.java */
    /* loaded from: classes8.dex */
    public class a implements d.c {
        public a() {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d.c
        public void a() {
            b.this.d(new AdError(AdError.ERROR_CODE_SHOW_FAIL_NO_AD, AdError.getMessage(AdError.ERROR_CODE_SHOW_FAIL_NO_AD)));
        }
    }

    /* compiled from: TTInterAdInterstitialFullManager.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class RunnableC0035b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdError f10817a;

        public RunnableC0035b(AdError adError) {
            this.f10817a = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.h0 != null) {
                b.this.h0.onInterstitialFullShowFail(this.f10817a);
            }
        }
    }

    /* compiled from: TTInterAdInterstitialFullManager.java */
    /* loaded from: classes8.dex */
    public class c implements ITTAdapterFullVideoAdListener {
        public c() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
        public void onFullVideoAdClick() {
            String str;
            if (q.a()) {
                if (b.this.N != null && "pangle".equals(b.this.N.getAdNetWorkName())) {
                    if (!q.a(Thread.currentThread().getStackTrace())) {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, 5, 1, 0, Cgoto.m992const());
                        return;
                    } else if (q.b()) {
                        str = Cgoto.m992const();
                        if (!b.this.f0() && b.this.h0 != null) {
                            b.this.h0.onInterstitialFullClick();
                        }
                    }
                }
                str = null;
                if (!b.this.f0()) {
                    b.this.h0.onInterstitialFullClick();
                }
            } else {
                if (b.this.h0 != null) {
                    b.this.h0.onInterstitialFullClick();
                }
                str = null;
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, 0, t.a(b.this.N) ? Cgoto.m1021throws() : null, str);
        }

        @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
        public void onFullVideoAdClosed() {
            if (q.a()) {
                if (b.this.N != null && "pangle".equals(b.this.N.getAdNetWorkName())) {
                    if (q.a(Thread.currentThread().getStackTrace())) {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, 2, 0, 0, (String) null);
                    } else {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, 2, 1, 0, Cgoto.m992const());
                        return;
                    }
                }
                if (b.this.f0()) {
                    return;
                }
                b.this.h0();
                if (b.this.h0 != null) {
                    b.this.h0.onInterstitialFullClosed();
                    return;
                }
                return;
            }
            b.this.h0();
            if (b.this.h0 != null) {
                b.this.h0.onInterstitialFullClosed();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0116  */
        @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onFullVideoAdShow() {
            /*
                Method dump skipped, instructions count: 314
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.b.c.onFullVideoAdShow():void");
        }

        @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
        public void onFullVideoAdShowFail(@NonNull AdError adError) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, adError, 1, 0, t.a(b.this.N) ? Cgoto.m1021throws() : null);
            b.this.d(adError);
        }

        @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
        public void onRewardVerify(@NonNull RewardItem rewardItem) {
            if (b.this.h0 != null) {
                b.this.h0.onRewardVerify(rewardItem);
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
        public void onSkippedVideo() {
            if (q.a()) {
                if (b.this.N != null && "pangle".equals(b.this.N.getAdNetWorkName())) {
                    if (q.a(Thread.currentThread().getStackTrace())) {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, 3, 0, 0, (String) null);
                    } else {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, 3, 1, 0, Cgoto.m992const());
                        return;
                    }
                }
                if (b.this.f0()) {
                    return;
                }
                b.this.h0();
                if (b.this.h0 != null) {
                    b.this.h0.onSkippedVideo();
                    return;
                }
                return;
            }
            b.this.h0();
            if (b.this.h0 != null) {
                b.this.h0.onSkippedVideo();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
        public void onVideoComplete() {
            if (q.a()) {
                if (b.this.N != null && "pangle".equals(b.this.N.getAdNetWorkName())) {
                    if (q.a(Thread.currentThread().getStackTrace())) {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, 1, 0, 0, (String) null);
                    } else {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, 1, 1, 0, Cgoto.m992const());
                        return;
                    }
                }
                if (b.this.f0()) {
                    return;
                }
                b.this.h0();
                if (b.this.h0 != null) {
                    b.this.h0.onVideoComplete();
                    return;
                }
                return;
            }
            b.this.h0();
            if (b.this.h0 != null) {
                b.this.h0.onVideoComplete();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
        public void onVideoError() {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, (AdError) null, 2, 0, t.a(b.this.N) ? Cgoto.m1021throws() : null);
            if (b.this.h0 != null) {
                b.this.h0.onVideoError();
            }
        }
    }

    /* compiled from: TTInterAdInterstitialFullManager.java */
    /* loaded from: classes8.dex */
    public class d implements ITTAdapterInterstitialListener {
        public d() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
        public void onAdLeftApplication() {
            if (b.this.h0 != null) {
                b.this.h0.onAdLeftApplication();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
        public void onAdOpened() {
            if (b.this.h0 != null) {
                b.this.h0.onAdOpened();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
        public void onInterstitialAdClick() {
            if (b.this.h0 != null) {
                b.this.h0.onInterstitialFullClick();
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, 0, t.a(b.this.N) ? Cgoto.m1021throws() : null);
        }

        @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
        public void onInterstitialClosed() {
            b.this.h0();
            if (b.this.h0 != null) {
                b.this.h0.onInterstitialFullClosed();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
        public void onInterstitialShow() {
            if (b.this.h0 != null) {
                b.this.h0.onInterstitialFullShow();
            }
            m b = m.b();
            b.a(b.this.f + "");
            if (b.this.N != null) {
                Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(b.this.f, TTLogUtil.TAG_EVENT_SHOW_LISTEN) + "adSlotId：" + b.this.N.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(b.this.N.getAdNetworkPlatformId()));
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.k.b().a(b.this.f, b.this.N.getAdNetworkSlotId());
            }
            b.this.e0();
            b bVar = b.this;
            bVar.d(bVar.N);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(b.this.N, b.this.h, 0, t.a(b.this.N) ? Cgoto.m1021throws() : null);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.b(b.this.f, b.this.N);
        }

        @Override // com.bytedance.msdk.api.v2.ad.interstitial.GMInterstitialAdListener
        public void onInterstitialShowFail(@NonNull AdError adError) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(b.this.N, b.this.h, adError, 1, 0, t.a(b.this.N) ? Cgoto.m1021throws() : null);
            b.this.d(adError);
        }
    }

    public b(Context context, String str) {
        super(context, str);
        this.i0 = new c();
        this.j0 = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(AdError adError) {
        ThreadHelper.runOnUiThread(new RunnableC0035b(adError));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void B() {
        super.B();
        this.h0 = null;
        this.g0 = null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void O() {
        GMInterstitialFullAdLoadCallback gMInterstitialFullAdLoadCallback = this.g0;
        if (gMInterstitialFullAdLoadCallback != null) {
            gMInterstitialFullAdLoadCallback.onInterstitialFullAdLoad();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void P() {
        GMInterstitialFullAdLoadCallback gMInterstitialFullAdLoadCallback = this.g0;
        if (gMInterstitialFullAdLoadCallback != null) {
            gMInterstitialFullAdLoadCallback.onInterstitialFullCached();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void b(AdError adError) {
        GMInterstitialFullAdLoadCallback gMInterstitialFullAdLoadCallback = this.g0;
        if (gMInterstitialFullAdLoadCallback != null) {
            gMInterstitialFullAdLoadCallback.onInterstitialFullLoadFail(adError);
        }
    }

    public void a(AdSlot adSlot, GMAdSlotInterstitialFull gMAdSlotInterstitialFull, GMInterstitialFullAdLoadCallback gMInterstitialFullAdLoadCallback) {
        if (d0()) {
            AdSlot shallowCopy = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.b.getShallowCopy(adSlot);
            this.h = shallowCopy;
            if (shallowCopy != null) {
                shallowCopy.setAdType(10);
                this.h.setAdCount(1);
            }
            this.g0 = gMInterstitialFullAdLoadCallback;
            this.I = this.i0;
            this.w = gMAdSlotInterstitialFull;
            S();
        }
    }

    public void a(Activity activity) {
        super.b(activity, null, new a());
    }

    public void a(GMInterstitialFullAdListener gMInterstitialFullAdListener) {
        this.h0 = gMInterstitialFullAdListener;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d
    public void a(TTBaseAd tTBaseAd, Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
        if (tTBaseAd != null) {
            if (tTBaseAd.getSubAdType() == 1) {
                this.I = this.j0;
            } else if (tTBaseAd.getSubAdType() == 2) {
                this.I = this.i0;
            }
        }
        super.a(tTBaseAd, activity, map);
    }
}
