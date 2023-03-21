package com.apk;

import android.app.Activity;
import android.os.CountDownTimer;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.MainThread;
import com.apk.n60;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTSplashAd;
import com.google.android.material.badge.BadgeDrawable;
import com.swl.gg.sdk.R$id;
import com.swl.gg.sdk.R$layout;

/* compiled from: CsjProviderSplash.java */
/* loaded from: classes7.dex */
public class l50 extends f70 {

    /* renamed from: case  reason: not valid java name */
    public CountDownTimer f2749case;

    /* renamed from: else  reason: not valid java name */
    public View f2750else;

    /* renamed from: try  reason: not valid java name */
    public ViewGroup f2751try;

    /* compiled from: CsjProviderSplash.java */
    /* renamed from: com.apk.l50$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements TTAdNative.SplashAdListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f2753do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ boolean f2754for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ a70 f2755if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ Activity f2756new;

        /* renamed from: try  reason: not valid java name */
        public final /* synthetic */ ViewGroup f2757try;

        /* compiled from: CsjProviderSplash.java */
        /* renamed from: com.apk.l50$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes7.dex */
        public class C0069do implements TTSplashAd.AdInteractionListener {
            public C0069do() {
            }

            @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
            public void onAdClicked(View view, int i) {
                Cdo cdo = Cdo.this;
                l50 l50Var = l50.this;
                if (l50Var.f1242for) {
                    return;
                }
                l50Var.m546class(cdo.f2753do, cdo.f2755if);
            }

            @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
            public void onAdShow(View view, int i) {
                Cdo cdo = Cdo.this;
                l50 l50Var = l50.this;
                if (l50Var.f1242for) {
                    return;
                }
                l50Var.m576throws(cdo.f2753do, cdo.f2755if);
            }

            @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
            public void onAdSkip() {
                Cdo cdo = Cdo.this;
                l50 l50Var = l50.this;
                if (l50Var.f1242for) {
                    return;
                }
                l50Var.m562native(cdo.f2753do, cdo.f2755if);
            }

            @Override // com.bytedance.sdk.openadsdk.TTSplashAd.AdInteractionListener
            public void onAdTimeOver() {
                Cdo cdo = Cdo.this;
                l50 l50Var = l50.this;
                if (l50Var.f1242for) {
                    return;
                }
                l50Var.m562native(cdo.f2753do, cdo.f2755if);
            }
        }

        public Cdo(String str, a70 a70Var, boolean z, Activity activity, ViewGroup viewGroup) {
            this.f2753do = str;
            this.f2755if = a70Var;
            this.f2754for = z;
            this.f2756new = activity;
            this.f2757try = viewGroup;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener, com.bytedance.sdk.openadsdk.common.CommonListener
        @MainThread
        public void onError(int i, String str) {
            l50 l50Var = l50.this;
            if (l50Var.f1242for) {
                return;
            }
            l50Var.f();
            l50.this.m578try(i, str, this.f2753do, this.f2755if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener
        @MainThread
        public void onSplashAdLoad(TTSplashAd tTSplashAd) {
            l50 l50Var = l50.this;
            if (l50Var.f1242for) {
                return;
            }
            if (tTSplashAd == null) {
                l50Var.f();
                l50.this.m578try(83006, "请求成功，但是返回的广告为null", this.f2753do, this.f2755if);
                return;
            }
            tTSplashAd.setSplashInteractionListener(new C0069do());
            l50.this.f();
            l50.this.m564package(this.f2753do, this.f2755if);
            if (this.f2754for) {
                l50 l50Var2 = l50.this;
                ViewGroup viewGroup = l50Var2.f2751try;
                if (viewGroup != null) {
                    viewGroup.removeAllViews();
                    l50.this.f2751try.addView(tTSplashAd.getSplashView());
                    l50.k(l50.this, this.f2756new, tTSplashAd, this.f2757try, this.f2753do, this.f2755if);
                    return;
                }
                l50Var2.f2750else = tTSplashAd.getSplashView();
                return;
            }
            l50.this.f2751try.removeAllViews();
            l50.this.f2751try.addView(tTSplashAd.getSplashView());
            l50.k(l50.this, this.f2756new, tTSplashAd, this.f2757try, this.f2753do, this.f2755if);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative.SplashAdListener
        @MainThread
        public void onTimeout() {
            l50 l50Var = l50.this;
            if (l50Var.f1242for) {
                return;
            }
            l50Var.f();
            l50.this.m578try(83005, "csj onTimeout", this.f2753do, this.f2755if);
        }
    }

    public static void k(l50 l50Var, Activity activity, TTSplashAd tTSplashAd, ViewGroup viewGroup, String str, a70 a70Var) {
        if (l50Var != null) {
            o50 o50Var = new o50();
            View inflate = View.inflate(activity, R$layout.tr_ad_sdk_splash_skip_view, null);
            o50Var.f3361do = (TextView) inflate.findViewById(R$id.time);
            tTSplashAd.setNotAllowSdkCountdown();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = BadgeDrawable.TOP_END;
            layoutParams.topMargin = r70.m2248if(30.0f);
            layoutParams.rightMargin = r70.m2248if(20.0f);
            viewGroup.addView(inflate, layoutParams);
            inflate.setOnClickListener(new m50(l50Var, str, a70Var));
            CountDownTimer countDownTimer = l50Var.f2749case;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            o50Var.f3361do.setText(RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR);
            n50 n50Var = new n50(l50Var, 5000L, 1000L, o50Var, str, a70Var);
            l50Var.f2749case = n50Var;
            n50Var.start();
            return;
        }
        throw null;
    }

    public final void j(Activity activity, String str, String str2, ViewGroup viewGroup, a70 a70Var, boolean z) {
        this.f2751try = viewGroup;
        this.f2750else = null;
        h(str, 6000L, false, a70Var);
        m542abstract(str);
        AdSlot.Builder adLoadType = new AdSlot.Builder().setCodeId(str2).setAdCount(1).setAdLoadType(TTAdLoadType.LOAD);
        adLoadType.setImageAcceptedSize(n60.Cdo.f3194for, n60.Cdo.f3196new);
        k40.m1454new(activity).loadSplashAd(adLoadType.build(), new Cdo(str, a70Var, z, activity, viewGroup), n60.Cdo.f3195if);
    }
}
