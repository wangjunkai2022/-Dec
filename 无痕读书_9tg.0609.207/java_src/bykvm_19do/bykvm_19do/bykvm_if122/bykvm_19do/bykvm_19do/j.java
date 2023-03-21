package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.q;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.listener.ITTAdapterRewardedAdListener;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.TTVideoOptionUtil;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener;
import com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.Map;
/* compiled from: TTInterRewardVideoAdManager.java */
/* loaded from: classes8.dex */
public class j extends bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d implements ITTAdapterRewardedAdListener {
    public GMRewardedAdLoadCallback g0;
    public GMRewardedAdListener h0;
    public GMRewardedAdListener i0;
    public final bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a j0;
    public final bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a k0;
    public GMRewardedAdListener l0;

    /* compiled from: TTInterRewardVideoAdManager.java */
    /* loaded from: classes8.dex */
    public class a implements GMRewardedAdListener {

        /* compiled from: TTInterRewardVideoAdManager.java */
        /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.j$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public class C0037a implements a.i {

            /* compiled from: TTInterRewardVideoAdManager.java */
            /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.j$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes8.dex */
            public class RunnableC0038a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                public final /* synthetic */ RewardItem f10841a;

                public RunnableC0038a(RewardItem rewardItem) {
                    this.f10841a = rewardItem;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (j.this.i0 != null) {
                        j.this.i0.onRewardVerify(this.f10841a);
                        j.this.a(this.f10841a, 1);
                    }
                }
            }

            public C0037a() {
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a.i
            public void onRewardVerify(RewardItem rewardItem) {
                ThreadHelper.runOnUiThread(new RunnableC0038a(rewardItem));
            }
        }

        public a() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
        public void onRewardClick() {
            String str;
            if (q.a()) {
                if (j.this.N != null && "pangle".equals(j.this.N.getAdNetWorkName())) {
                    if (!q.b(Thread.currentThread().getStackTrace())) {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, 5, 1, 1, Cgoto.m992const());
                        return;
                    } else if (q.d()) {
                        str = Cgoto.m992const();
                        if (!j.this.f0() && j.this.i0 != null) {
                            j.this.i0.onRewardClick();
                        }
                    }
                }
                str = null;
                if (!j.this.f0()) {
                    j.this.i0.onRewardClick();
                }
            } else {
                if (j.this.i0 != null) {
                    j.this.i0.onRewardClick();
                }
                str = null;
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, 1, t.a(j.this.N) ? Cgoto.m1021throws() : null, str);
        }

        @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
        public void onRewardVerify(@NonNull RewardItem rewardItem) {
            if (q.a()) {
                if (j.this.N != null && "pangle".equals(j.this.N.getAdNetWorkName())) {
                    if (!q.b(Thread.currentThread().getStackTrace())) {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, 4, 1, 1, Cgoto.m992const());
                        return;
                    }
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, 4, 0, 1, q.f() ? Cgoto.m992const() : null);
                }
                if (j.this.f0()) {
                    return;
                }
                if (j.this.k0.b()) {
                    j.this.k0.d();
                } else if (j.this.i0 != null) {
                    j.this.i0.onRewardVerify(rewardItem);
                    j.this.a((RewardItem) null, 1);
                }
            } else if (j.this.k0.b()) {
                j.this.k0.d();
            } else if (j.this.i0 != null) {
                j.this.i0.onRewardVerify(rewardItem);
                j.this.a((RewardItem) null, 1);
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
        public void onRewardedAdClosed() {
            if (q.a()) {
                if (j.this.N != null && "pangle".equals(j.this.N.getAdNetWorkName())) {
                    if (q.b(Thread.currentThread().getStackTrace())) {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, 2, 0, 1, (String) null);
                    } else {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, 2, 1, 1, Cgoto.m992const());
                        return;
                    }
                }
                if (j.this.f0() || j.this.i0 == null) {
                    return;
                }
                j.this.i0.onRewardedAdClosed();
            } else if (j.this.i0 != null) {
                j.this.i0.onRewardedAdClosed();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0071  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0137  */
        @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onRewardedAdShow() {
            /*
                Method dump skipped, instructions count: 331
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.j.a.onRewardedAdShow():void");
        }

        @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
        public void onRewardedAdShowFail(@NonNull AdError adError) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, adError, 1, 1, t.a(j.this.N) ? Cgoto.m1021throws() : null);
            j.this.e(adError);
        }

        @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
        public void onSkippedVideo() {
            if (j.this.k0.b()) {
                j.this.k0.c();
            }
            if (q.a()) {
                if (j.this.N != null && "pangle".equals(j.this.N.getAdNetWorkName())) {
                    if (q.b(Thread.currentThread().getStackTrace())) {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, 3, 0, 1, (String) null);
                    } else {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, 3, 1, 1, Cgoto.m992const());
                        return;
                    }
                }
                if (j.this.f0() || j.this.i0 == null) {
                    return;
                }
                j.this.i0.onSkippedVideo();
            } else if (j.this.i0 != null) {
                j.this.i0.onSkippedVideo();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
        public void onVideoComplete() {
            if (j.this.k0.b()) {
                j.this.k0.e();
            }
            if (q.a()) {
                if (j.this.N != null && "pangle".equals(j.this.N.getAdNetWorkName())) {
                    if (q.b(Thread.currentThread().getStackTrace())) {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, 1, 0, 1, (String) null);
                    } else {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, 1, 1, 1, Cgoto.m992const());
                        return;
                    }
                }
                if (j.this.f0() || j.this.i0 == null) {
                    return;
                }
                j.this.i0.onVideoComplete();
            } else if (j.this.i0 != null) {
                j.this.i0.onVideoComplete();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
        public void onVideoError() {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(j.this.N, j.this.h, (AdError) null, 2, 1, t.a(j.this.N) ? Cgoto.m1021throws() : null);
            if (j.this.i0 != null) {
                j.this.i0.onVideoError();
            }
        }
    }

    /* compiled from: TTInterRewardVideoAdManager.java */
    /* loaded from: classes8.dex */
    public class b implements d.c {
        public b() {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.d.c
        public void a() {
            j.this.d(new AdError(AdError.ERROR_CODE_SHOW_FAIL_NO_AD, AdError.getMessage(AdError.ERROR_CODE_SHOW_FAIL_NO_AD)));
        }
    }

    /* compiled from: TTInterRewardVideoAdManager.java */
    /* loaded from: classes8.dex */
    public class c implements a.i {

        /* compiled from: TTInterRewardVideoAdManager.java */
        /* loaded from: classes8.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ RewardItem f10844a;

            public a(RewardItem rewardItem) {
                this.f10844a = rewardItem;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (j.this.h0 != null) {
                    j.this.h0.onRewardVerify(this.f10844a);
                    j.this.a(this.f10844a, 0);
                }
            }
        }

        public c() {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a.i
        public void onRewardVerify(RewardItem rewardItem) {
            ThreadHelper.runOnUiThread(new a(rewardItem));
        }
    }

    /* compiled from: TTInterRewardVideoAdManager.java */
    /* loaded from: classes8.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdError f10845a;

        public d(AdError adError) {
            this.f10845a = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (j.this.h0 != null) {
                j.this.h0.onRewardedAdShowFail(this.f10845a);
            }
        }
    }

    /* compiled from: TTInterRewardVideoAdManager.java */
    /* loaded from: classes8.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdError f10846a;

        public e(AdError adError) {
            this.f10846a = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (j.this.i0 != null) {
                j.this.i0.onRewardedAdShowFail(this.f10846a);
            }
        }
    }

    public j(Context context, String str) {
        super(context, str);
        this.j0 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a(this.f);
        this.k0 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a(this.f);
        this.l0 = new a();
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onRewardClick() {
        String str;
        GMRewardedAdListener gMRewardedAdListener;
        if (q.a()) {
            TTBaseAd tTBaseAd = this.N;
            if (tTBaseAd != null && "pangle".equals(tTBaseAd.getAdNetWorkName())) {
                if (!q.b(Thread.currentThread().getStackTrace())) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 5, 1, 0, Cgoto.m992const());
                    return;
                } else if (q.d()) {
                    str = Cgoto.m992const();
                    if (!f0() && (gMRewardedAdListener = this.h0) != null) {
                        gMRewardedAdListener.onRewardClick();
                    }
                }
            }
            str = null;
            if (!f0()) {
                gMRewardedAdListener.onRewardClick();
            }
        } else {
            GMRewardedAdListener gMRewardedAdListener2 = this.h0;
            if (gMRewardedAdListener2 != null) {
                gMRewardedAdListener2.onRewardClick();
            }
            str = null;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 0, t.a(this.N) ? Cgoto.m1021throws() : null, str);
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onRewardVerify(RewardItem rewardItem) {
        if (q.a()) {
            TTBaseAd tTBaseAd = this.N;
            if (tTBaseAd != null && "pangle".equals(tTBaseAd.getAdNetWorkName())) {
                if (!q.b(Thread.currentThread().getStackTrace())) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 4, 1, 0, Cgoto.m992const());
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 4, 0, 0, q.f() ? Cgoto.m992const() : null);
            }
            if (f0()) {
                return;
            }
            if (this.j0.b()) {
                this.j0.d();
                return;
            }
            GMRewardedAdListener gMRewardedAdListener = this.h0;
            if (gMRewardedAdListener != null) {
                gMRewardedAdListener.onRewardVerify(rewardItem);
                a((RewardItem) null, 0);
            }
        } else if (this.j0.b()) {
            this.j0.d();
        } else {
            GMRewardedAdListener gMRewardedAdListener2 = this.h0;
            if (gMRewardedAdListener2 != null) {
                gMRewardedAdListener2.onRewardVerify(rewardItem);
                a((RewardItem) null, 0);
            }
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onRewardedAdClosed() {
        if (q.a()) {
            TTBaseAd tTBaseAd = this.N;
            if (tTBaseAd != null && "pangle".equals(tTBaseAd.getAdNetWorkName())) {
                if (!q.b(Thread.currentThread().getStackTrace())) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 2, 1, 0, Cgoto.m992const());
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 2, 0, 0, (String) null);
            }
            if (f0()) {
                return;
            }
            h0();
            GMRewardedAdListener gMRewardedAdListener = this.h0;
            if (gMRewardedAdListener != null) {
                gMRewardedAdListener.onRewardedAdClosed();
                return;
            }
            return;
        }
        h0();
        GMRewardedAdListener gMRewardedAdListener2 = this.h0;
        if (gMRewardedAdListener2 != null) {
            gMRewardedAdListener2.onRewardedAdClosed();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00eb  */
    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onRewardedAdShow() {
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
            boolean r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.q.b(r0)
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
            boolean r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.q.e()
            if (r0 == 0) goto L52
            java.lang.String r0 = com.apk.Cgoto.m992const()
            goto L53
        L52:
            r0 = r1
        L53:
            com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener r2 = r7.h0
            if (r2 == 0) goto L5a
            r2.onRewardedAdShow()
        L5a:
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a r2 = r7.j0
            boolean r2 = r2.b()
            if (r2 == 0) goto L75
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a r2 = r7.j0
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.j$c r3 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.j$c
            r3.<init>()
            r2.a(r3)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a r2 = r7.j0
            com.bytedance.msdk.api.AdSlot r3 = r7.h
            com.bytedance.msdk.base.TTBaseAd r4 = r7.N
            r2.a(r3, r4)
        L75:
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
            if (r2 == 0) goto Ldb
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
        Ldb:
            r7.e0()
            com.bytedance.msdk.base.TTBaseAd r2 = r7.N
            r7.d(r2)
            com.bytedance.msdk.base.TTBaseAd r2 = r7.N
            boolean r2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t.a(r2)
            if (r2 == 0) goto Lef
            java.lang.String r1 = com.apk.Cgoto.m1021throws()
        Lef:
            com.bytedance.msdk.base.TTBaseAd r2 = r7.N
            com.bytedance.msdk.api.AdSlot r3 = r7.h
            r4 = 0
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(r2, r3, r4, r1, r0)
            java.lang.String r0 = r7.f
            com.bytedance.msdk.base.TTBaseAd r1 = r7.N
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.b(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.j.onRewardedAdShow():void");
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onRewardedAdShowFail(AdError adError) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, adError, 1, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
        d(adError);
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onSkippedVideo() {
        if (q.a()) {
            TTBaseAd tTBaseAd = this.N;
            if (tTBaseAd != null && "pangle".equals(tTBaseAd.getAdNetWorkName())) {
                if (!q.b(Thread.currentThread().getStackTrace())) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 3, 1, 0, Cgoto.m992const());
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 3, 0, 0, (String) null);
            }
            if (f0()) {
                return;
            }
            h0();
            if (this.j0.b()) {
                this.j0.c();
            }
            GMRewardedAdListener gMRewardedAdListener = this.h0;
            if (gMRewardedAdListener != null) {
                gMRewardedAdListener.onSkippedVideo();
                return;
            }
            return;
        }
        h0();
        if (this.j0.b()) {
            this.j0.c();
        }
        GMRewardedAdListener gMRewardedAdListener2 = this.h0;
        if (gMRewardedAdListener2 != null) {
            gMRewardedAdListener2.onSkippedVideo();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onVideoComplete() {
        if (this.j0.b()) {
            this.j0.e();
        }
        if (q.a()) {
            TTBaseAd tTBaseAd = this.N;
            if (tTBaseAd != null && "pangle".equals(tTBaseAd.getAdNetWorkName())) {
                if (!q.b(Thread.currentThread().getStackTrace())) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 1, 1, 0, Cgoto.m992const());
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, 1, 0, 0, (String) null);
            }
            if (f0()) {
                return;
            }
            h0();
            GMRewardedAdListener gMRewardedAdListener = this.h0;
            if (gMRewardedAdListener != null) {
                gMRewardedAdListener.onVideoComplete();
                return;
            }
            return;
        }
        h0();
        GMRewardedAdListener gMRewardedAdListener2 = this.h0;
        if (gMRewardedAdListener2 != null) {
            gMRewardedAdListener2.onVideoComplete();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.reward.GMRewardedAdListener
    public void onVideoError() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, (AdError) null, 2, 0, t.a(this.N) ? Cgoto.m1021throws() : null);
        GMRewardedAdListener gMRewardedAdListener = this.h0;
        if (gMRewardedAdListener != null) {
            gMRewardedAdListener.onVideoError();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(AdError adError) {
        ThreadHelper.runOnUiThread(new d(adError));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(AdError adError) {
        ThreadHelper.runOnUiThread(new e(adError));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void B() {
        super.B();
        this.j0.a();
        this.k0.a();
        this.g0 = null;
        this.h0 = null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void O() {
        GMRewardedAdLoadCallback gMRewardedAdLoadCallback = this.g0;
        if (gMRewardedAdLoadCallback != null) {
            gMRewardedAdLoadCallback.onRewardVideoAdLoad();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void P() {
        GMRewardedAdLoadCallback gMRewardedAdLoadCallback = this.g0;
        if (gMRewardedAdLoadCallback != null) {
            gMRewardedAdLoadCallback.onRewardVideoCached();
        }
    }

    public void b(GMRewardedAdListener gMRewardedAdListener) {
        this.i0 = gMRewardedAdListener;
    }

    public void a(AdSlot adSlot, GMAdSlotRewardVideo gMAdSlotRewardVideo, @NonNull GMRewardedAdLoadCallback gMRewardedAdLoadCallback) {
        if (adSlot != null && adSlot.isV2Request()) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a("mediation_v2_reward");
        }
        if (d0()) {
            this.g0 = gMRewardedAdLoadCallback;
            AdSlot shallowCopy = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.b.getShallowCopy(adSlot);
            this.h = shallowCopy;
            if (shallowCopy != null) {
                shallowCopy.setAdType(7);
                this.h.setAdCount(1);
                TTVideoOptionUtil.setRewardTTVideoOptionIfNeed(this.h);
            }
            this.I = this;
            this.J = this.l0;
            this.w = gMAdSlotRewardVideo;
            S();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void b(AdError adError) {
        GMRewardedAdLoadCallback gMRewardedAdLoadCallback = this.g0;
        if (gMRewardedAdLoadCallback != null) {
            gMRewardedAdLoadCallback.onRewardVideoLoadFail(adError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RewardItem rewardItem, int i) {
        String str;
        int i2;
        int i3;
        Map<String, Object> customData;
        String m1021throws = t.a(this.N) ? Cgoto.m1021throws() : null;
        if (rewardItem == null || (customData = rewardItem.getCustomData()) == null) {
            str = "";
            i2 = 0;
            i3 = 0;
        } else {
            Integer num = (Integer) customData.get(RewardItem.KEY_REASON);
            int intValue = num != null ? num.intValue() : 0;
            Integer num2 = (Integer) customData.get(RewardItem.KEY_ERROR_CODE);
            int intValue2 = num2 != null ? num2.intValue() : 0;
            str = (String) customData.get(RewardItem.KEY_ERROR_MSG);
            i3 = intValue2;
            i2 = intValue;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.N, this.h, i, m1021throws, i2, i3, str);
    }

    @MainThread
    public void a(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
        super.a(activity, map, new b());
        if (this.h0 == null) {
            Logger.d("TTMediationSDK", "注意：未设置GMRewardedAdListener，将收不到广告播放/点击/关闭等回调信息");
        }
    }

    public void a(GMRewardedAdListener gMRewardedAdListener) {
        this.h0 = gMRewardedAdListener;
    }
}
