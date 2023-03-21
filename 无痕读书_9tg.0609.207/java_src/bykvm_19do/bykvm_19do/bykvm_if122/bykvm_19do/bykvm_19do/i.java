package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.apk.Cgoto;
import com.apk.ps;
import com.apk.qs;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener;
import com.bytedance.msdk.api.v2.ad.banner.GMBannerAdLoadCallback;
import com.bytedance.msdk.api.v2.ad.banner.GMNativeToBannerListener;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: TTInterRefreshableBannerAdManager.java */
/* loaded from: classes8.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public int f10832a;
    public final Activity b;
    public final String c;
    public AdSlot d;
    public GMAdSlotBase e;
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d f;
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d g;
    public ps h;
    public final Handler i;
    public final Handler j;
    public GMBannerAdListener k;
    public GMNativeToBannerListener l;
    public final View.OnAttachStateChangeListener m = new a();
    public final GMBannerAdListener n = new b();
    public final Runnable o = new c();

    /* compiled from: TTInterRefreshableBannerAdManager.java */
    /* loaded from: classes8.dex */
    public class a implements View.OnAttachStateChangeListener {
        public a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            if (i.this.f10832a == 0) {
                return;
            }
            i.this.s();
            i.this.t();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            i.this.r();
        }
    }

    /* compiled from: TTInterRefreshableBannerAdManager.java */
    /* loaded from: classes8.dex */
    public class b implements GMBannerAdListener {
        public b() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdClicked() {
            if (i.this.k != null) {
                i.this.k.onAdClicked();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdClosed() {
            i.this.r();
            if (i.this.k != null) {
                i.this.k.onAdClosed();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdLeftApplication() {
            if (i.this.k != null) {
                i.this.k.onAdLeftApplication();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdOpened() {
            if (i.this.k != null) {
                i.this.k.onAdOpened();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdShow() {
            if (i.this.k != null) {
                i.this.k.onAdShow();
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.banner.GMBannerAdListener
        public void onAdShowFail(AdError adError) {
            if (i.this.k != null) {
                i.this.k.onAdShowFail(adError);
            }
        }
    }

    /* compiled from: TTInterRefreshableBannerAdManager.java */
    /* loaded from: classes8.dex */
    public class c implements Runnable {

        /* compiled from: TTInterRefreshableBannerAdManager.java */
        /* loaded from: classes8.dex */
        public class a implements Runnable {

            /* compiled from: TTInterRefreshableBannerAdManager.java */
            /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.i$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes8.dex */
            public class RunnableC0036a implements Runnable {
                public RunnableC0036a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (i.this.f != null) {
                        i.this.f.B();
                    }
                    i iVar = i.this;
                    iVar.f = iVar.g;
                    i.this.s();
                }
            }

            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (i.this.f10832a == 0 || i.this.g == null) {
                    return;
                }
                View e0 = i.this.g.e0();
                if (e0 != null) {
                    if (i.this.h != null) {
                        ps psVar = i.this.h;
                        e0.setTranslationX(psVar.getWidth());
                        psVar.addView(e0);
                        ObjectAnimator.ofFloat(e0, "translationX", 0.0f).setDuration(250L).start();
                        if (psVar.getChildCount() > 1) {
                            ObjectAnimator duration = ObjectAnimator.ofFloat(psVar.getChildAt(0), "translationX", -psVar.getWidth()).setDuration(250L);
                            duration.addListener(new qs(psVar));
                            duration.start();
                        }
                    }
                    i.this.j.postDelayed(new RunnableC0036a(), 250L);
                } else {
                    if (i.this.g != null) {
                        i.this.g.B();
                    }
                    i.this.s();
                }
                i.this.t();
            }
        }

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.j.post(new a());
        }
    }

    /* compiled from: TTInterRefreshableBannerAdManager.java */
    /* loaded from: classes8.dex */
    public class d implements ps.Cif {
        public d() {
        }

        @Override // com.apk.ps.Cif
        public void a(boolean z) {
            if (z) {
                if (i.this.f10832a == 0) {
                    return;
                }
                i.this.t();
                return;
            }
            i.this.r();
        }
    }

    public i(Activity activity, String str) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c c2;
        this.f10832a = 0;
        this.b = activity;
        this.c = str;
        this.f = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d(activity, str);
        if (activity != null) {
            ps psVar = new ps(activity);
            this.h = psVar;
            psVar.addOnAttachStateChangeListener(this.m);
            this.h.setVisibilityChangeListener(new d());
        }
        this.i = new Handler(ThreadHelper.getMSDKThreadLooper());
        this.j = new Handler(Looper.getMainLooper());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c f = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f();
        if (f == null || (c2 = f.c(this.c)) == null) {
            return;
        }
        int n = c2.n();
        if (n >= 10000 && n <= 180000) {
            this.f10832a = n;
            StringBuilder m1016super = Cgoto.m1016super("---==-----banner轮播时间：");
            m1016super.append(this.f10832a);
            Logger.d("TMe", m1016super.toString());
            return;
        }
        Logger.d("TMe", "---==-----banner轮播时间下发不在10*1000～180*1000范围内：" + n + "，禁止banner轮播");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        this.i.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d(this.b, this.c);
        this.g = dVar;
        dVar.a(this.n);
        this.g.a(this.l);
        this.g.a(this.d, this.e, (GMBannerAdLoadCallback) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        this.i.removeCallbacksAndMessages(null);
        this.i.postDelayed(this.o, this.f10832a);
    }

    @NonNull
    public String j() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            return dVar.H();
        }
        return null;
    }

    public int k() {
        return this.f10832a;
    }

    public GMAdEcpmInfo l() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            return dVar.J();
        }
        return null;
    }

    public String m() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            return dVar.l();
        }
        return null;
    }

    @VisibleForTesting
    public boolean n() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            dVar.f0();
            return false;
        }
        return false;
    }

    public boolean o() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            return dVar.g0();
        }
        return false;
    }

    public void p() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            dVar.h0();
        }
    }

    public void q() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            dVar.i0();
        }
    }

    public List<AdLoadInfo> b() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            return dVar.C();
        }
        return new ArrayList();
    }

    public int c() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            return dVar.E();
        }
        return -2;
    }

    @NonNull
    public String d() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            return dVar.F();
        }
        return null;
    }

    @Nullable
    public View e() {
        ps psVar;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            dVar.b((TTBaseAd) null);
            View e0 = this.f.e0();
            if (e0 != null && (psVar = this.h) != null) {
                psVar.removeAllViews();
                ViewParent parent = e0.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(e0);
                }
                this.h.addView(e0);
                return this.h;
            }
        }
        return null;
    }

    public GMAdEcpmInfo f() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    public List<GMAdEcpmInfo> g() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public Map<String, Object> h() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            return dVar.G();
        }
        return new HashMap();
    }

    public List<GMAdEcpmInfo> i() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            return dVar.f();
        }
        return null;
    }

    public void a(AdSlot adSlot, GMAdSlotBase gMAdSlotBase, GMBannerAdLoadCallback gMBannerAdLoadCallback) {
        this.d = adSlot;
        this.e = gMAdSlotBase;
        this.f.a(adSlot, gMAdSlotBase, gMBannerAdLoadCallback);
    }

    public void a(GMBannerAdListener gMBannerAdListener) {
        this.k = gMBannerAdListener;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            dVar.a(this.n);
        }
    }

    public void a(GMNativeToBannerListener gMNativeToBannerListener) {
        this.l = gMNativeToBannerListener;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            dVar.a(gMNativeToBannerListener);
        }
    }

    public void a() {
        this.j.removeCallbacksAndMessages(null);
        r();
        ps psVar = this.h;
        if (psVar != null) {
            psVar.removeOnAttachStateChangeListener(this.m);
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            dVar.B();
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar2 = this.g;
        if (dVar2 != null) {
            dVar2.B();
        }
    }

    public void a(boolean z) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.d dVar = this.f;
        if (dVar != null) {
            dVar.a(z);
        }
    }
}
