package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.q;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.listener.ITTAdapterFullVideoAdListener;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.TTVideoOptionUtil;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener;
import com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdSlotFullVideo;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.Map;

/* compiled from: TTInterFullVideoAdManager.java */
/* loaded from: classes8.dex */
public class g extends bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d implements ITTAdapterFullVideoAdListener {
    public GMFullVideoAdLoadCallback g0;
    public GMFullVideoAdListener h0;

    /* compiled from: TTInterFullVideoAdManager.java */
    /* loaded from: classes8.dex */
    public class a implements d.c {
        public a() {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d.c
        public void a() {
            g.this.d(new AdError(AdError.ERROR_CODE_SHOW_FAIL_NO_AD, AdError.getMessage(AdError.ERROR_CODE_SHOW_FAIL_NO_AD)));
        }
    }

    /* compiled from: TTInterFullVideoAdManager.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdError f10829a;

        public b(AdError adError) {
            this.f10829a = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.this.h0 != null) {
                g.this.h0.onFullVideoAdShowFail(this.f10829a);
            }
        }
    }

    public g(Context context, String str) {
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
        GMFullVideoAdLoadCallback gMFullVideoAdLoadCallback = this.g0;
        if (gMFullVideoAdLoadCallback != null) {
            gMFullVideoAdLoadCallback.onFullVideoAdLoad();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void P() {
        GMFullVideoAdLoadCallback gMFullVideoAdLoadCallback = this.g0;
        if (gMFullVideoAdLoadCallback != null) {
            gMFullVideoAdLoadCallback.onFullVideoCached();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void b(AdError adError) {
        GMFullVideoAdLoadCallback gMFullVideoAdLoadCallback = this.g0;
        if (gMFullVideoAdLoadCallback != null) {
            gMFullVideoAdLoadCallback.onFullVideoLoadFail(adError);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onFullVideoAdClick() {
        String str;
        GMFullVideoAdListener gMFullVideoAdListener;
        if (q.a()) {
            TTBaseAd tTBaseAd = this.N;
            if (tTBaseAd != null && "pangle".equals(tTBaseAd.getAdNetWorkName())) {
                if (!q.a(Thread.currentThread().getStackTrace())) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 5, 1, 0, Cgoto.m992const());
                    return;
                } else if (q.b()) {
                    str = Cgoto.m992const();
                    if (!f0() && (gMFullVideoAdListener = this.h0) != null) {
                        gMFullVideoAdListener.onFullVideoAdClick();
                    }
                }
            }
            str = null;
            if (!f0()) {
                gMFullVideoAdListener.onFullVideoAdClick();
            }
        } else {
            GMFullVideoAdListener gMFullVideoAdListener2 = this.h0;
            if (gMFullVideoAdListener2 != null) {
                gMFullVideoAdListener2.onFullVideoAdClick();
            }
            str = null;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 0, t.a(this.N) ? Cgoto.m1021throws() : null, str);
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onFullVideoAdClosed() {
        if (q.a()) {
            TTBaseAd tTBaseAd = this.N;
            if (tTBaseAd != null && "pangle".equals(tTBaseAd.getAdNetWorkName())) {
                if (!q.a(Thread.currentThread().getStackTrace())) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 2, 1, 0, Cgoto.m992const());
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 2, 0, 0, (String) null);
            }
            if (f0()) {
                return;
            }
            h0();
            GMFullVideoAdListener gMFullVideoAdListener = this.h0;
            if (gMFullVideoAdListener != null) {
                gMFullVideoAdListener.onFullVideoAdClosed();
                return;
            }
            return;
        }
        h0();
        GMFullVideoAdListener gMFullVideoAdListener2 = this.h0;
        if (gMFullVideoAdListener2 != null) {
            gMFullVideoAdListener2.onFullVideoAdClosed();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d0  */
    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onFullVideoAdShow() {
        /*
            r7 = this;
            boolean r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.q.a()
            r1 = 0
            if (r0 == 0) goto L52
            com.bytedance.msdk.base.TTBaseAd r0 = r7.N
            if (r0 == 0) goto L52
            java.lang.String r0 = r0.getAdNetWorkName()
            java.lang.String r2 = "pangle"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L52
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            java.lang.StackTraceElement[] r0 = r0.getStackTrace()
            boolean r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.q.a(r0)
            if (r0 != 0) goto L47
            r0 = 1
            r7.a(r0)
            com.bytedance.msdk.api.AdError r0 = new com.bytedance.msdk.api.AdError
            r1 = 40063(0x9c7f, float:5.614E-41)
            java.lang.String r2 = com.bytedance.msdk.api.AdError.getMessage(r1)
            r0.<init>(r1, r2)
            java.lang.String r6 = com.apk.Cgoto.m992const()
            com.bytedance.msdk.base.TTBaseAd r1 = r7.N
            com.bytedance.msdk.api.AdSlot r2 = r7.h
            r4 = 1
            r5 = 0
            r3 = r0
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(r1, r2, r3, r4, r5, r6)
            r7.d(r0)
            return
        L47:
            boolean r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.q.c()
            if (r0 == 0) goto L52
            java.lang.String r0 = com.apk.Cgoto.m992const()
            goto L53
        L52:
            r0 = r1
        L53:
            com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener r2 = r7.h0
            if (r2 == 0) goto L5a
            r2.onFullVideoAdShow()
        L5a:
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m.b()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = r7.f
            r3.append(r4)
            java.lang.String r4 = ""
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r2.a(r3)
            com.bytedance.msdk.base.TTBaseAd r2 = r7.N
            if (r2 == 0) goto Lc0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = r7.f
            java.lang.String r4 = "show_listen"
            java.lang.String r3 = com.bytedance.msdk.adapter.util.TTLogUtil.getTagThirdLevelByEvent(r3, r4)
            r2.append(r3)
            java.lang.String r3 = "adSlotId："
            r2.append(r3)
            com.bytedance.msdk.base.TTBaseAd r3 = r7.N
            java.lang.String r3 = r3.getAdNetworkSlotId()
            r2.append(r3)
            java.lang.String r3 = "，广告类型："
            r2.append(r3)
            com.bytedance.msdk.base.TTBaseAd r3 = r7.N
            int r3 = r3.getAdNetworkPlatformId()
            java.lang.String r3 = com.apk.eg.m592do(r3)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "TTMediationSDK"
            com.bytedance.msdk.adapter.util.Logger.d(r3, r2)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.k r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.k.b()
            java.lang.String r3 = r7.f
            com.bytedance.msdk.base.TTBaseAd r4 = r7.N
            java.lang.String r4 = r4.getAdNetworkSlotId()
            r2.a(r3, r4)
        Lc0:
            r7.e0()
            com.bytedance.msdk.base.TTBaseAd r2 = r7.N
            r7.d(r2)
            com.bytedance.msdk.base.TTBaseAd r2 = r7.N
            boolean r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t.a(r2)
            if (r2 == 0) goto Ld4
            java.lang.String r1 = com.apk.Cgoto.m1021throws()
        Ld4:
            com.bytedance.msdk.base.TTBaseAd r2 = r7.N
            com.bytedance.msdk.api.AdSlot r3 = r7.h
            r4 = 0
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(r2, r3, r4, r1, r0)
            java.lang.String r0 = r7.f
            com.bytedance.msdk.base.TTBaseAd r1 = r7.N
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.b(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.g.onFullVideoAdShow():void");
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onFullVideoAdShowFail(AdError adError) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, adError, 1, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
        d(adError);
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onRewardVerify(@NonNull RewardItem rewardItem) {
        GMFullVideoAdListener gMFullVideoAdListener = this.h0;
        if (gMFullVideoAdListener != null) {
            gMFullVideoAdListener.onRewardVerify(rewardItem);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onSkippedVideo() {
        if (q.a()) {
            TTBaseAd tTBaseAd = this.N;
            if (tTBaseAd != null && "pangle".equals(tTBaseAd.getAdNetWorkName())) {
                if (!q.a(Thread.currentThread().getStackTrace())) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 3, 1, 0, Cgoto.m992const());
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 3, 0, 0, (String) null);
            }
            if (f0()) {
                return;
            }
            h0();
            GMFullVideoAdListener gMFullVideoAdListener = this.h0;
            if (gMFullVideoAdListener != null) {
                gMFullVideoAdListener.onSkippedVideo();
                return;
            }
            return;
        }
        h0();
        GMFullVideoAdListener gMFullVideoAdListener2 = this.h0;
        if (gMFullVideoAdListener2 != null) {
            gMFullVideoAdListener2.onSkippedVideo();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onVideoComplete() {
        if (q.a()) {
            TTBaseAd tTBaseAd = this.N;
            if (tTBaseAd != null && "pangle".equals(tTBaseAd.getAdNetWorkName())) {
                if (!q.a(Thread.currentThread().getStackTrace())) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 1, 1, 0, Cgoto.m992const());
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 1, 0, 0, (String) null);
            }
            if (f0()) {
                return;
            }
            h0();
            GMFullVideoAdListener gMFullVideoAdListener = this.h0;
            if (gMFullVideoAdListener != null) {
                gMFullVideoAdListener.onVideoComplete();
                return;
            }
            return;
        }
        h0();
        GMFullVideoAdListener gMFullVideoAdListener2 = this.h0;
        if (gMFullVideoAdListener2 != null) {
            gMFullVideoAdListener2.onVideoComplete();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.fullvideo.GMFullVideoAdListener
    public void onVideoError() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, (AdError) null, 2, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
        GMFullVideoAdListener gMFullVideoAdListener = this.h0;
        if (gMFullVideoAdListener != null) {
            gMFullVideoAdListener.onVideoError();
        }
    }

    public void a(AdSlot adSlot, GMAdSlotFullVideo gMAdSlotFullVideo, @NonNull GMFullVideoAdLoadCallback gMFullVideoAdLoadCallback) {
        if (adSlot != null && adSlot.isV2Request()) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a("mediation_v2_full_video");
        }
        if (d0()) {
            this.g0 = gMFullVideoAdLoadCallback;
            AdSlot shallowCopy = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.b.getShallowCopy(adSlot);
            this.h = shallowCopy;
            if (shallowCopy != null) {
                shallowCopy.setAdType(8);
                this.h.setAdCount(1);
                TTVideoOptionUtil.setFullTTVideoOptionIfNeed(this.h);
            }
            this.I = this;
            this.w = gMAdSlotFullVideo;
            S();
        }
    }

    @MainThread
    public void a(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
        super.a(activity, map, new a());
        if (this.h0 == null) {
            Logger.d("TTMediationSDK", "注意：未设置GMFullVideoAdListener，将收不到广告播放/点击/关闭等回调信息");
        }
    }

    public void a(GMFullVideoAdListener gMFullVideoAdListener) {
        this.h0 = gMFullVideoAdListener;
    }
}
