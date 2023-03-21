package com.apk;

import android.app.Activity;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.apk.n60;
import com.bytedance.msdk.adapter.gdt.GdtNetworkRequestInfo;
import com.bytedance.msdk.adapter.pangle.PangleNetworkRequestInfo;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.GMNetworkRequestInfo;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import com.bytedance.msdk.api.v2.ad.splash.GMSplashAd;
import com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener;
import com.bytedance.msdk.api.v2.ad.splash.GMSplashAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdSlotSplash;
import com.swl.gg.sdk.TrAdSdk;

/* compiled from: GmProviderSplash.java */
/* loaded from: classes7.dex */
public class z40 extends f70 {

    /* renamed from: break  reason: not valid java name */
    public GMSplashAd f6123break;

    /* renamed from: case  reason: not valid java name */
    public String f6124case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f6125catch;

    /* renamed from: class  reason: not valid java name */
    public boolean f6126class;

    /* renamed from: const  reason: not valid java name */
    public final GMSettingConfigCallback f6127const = new Cfor();

    /* renamed from: else  reason: not valid java name */
    public String f6128else;

    /* renamed from: goto  reason: not valid java name */
    public ViewGroup f6129goto;

    /* renamed from: this  reason: not valid java name */
    public a70 f6130this;

    /* renamed from: try  reason: not valid java name */
    public Activity f6131try;

    /* compiled from: GmProviderSplash.java */
    /* renamed from: com.apk.z40$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements GMSplashAdListener {
        public Cdo() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener
        public void onAdClicked() {
            z40 z40Var = z40.this;
            if (z40Var.f1242for) {
                return;
            }
            z40Var.m546class(z40Var.f6124case, z40Var.f6130this);
        }

        @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener
        public void onAdDismiss() {
            z40 z40Var = z40.this;
            if (z40Var.f1242for) {
                return;
            }
            z40Var.m562native(z40Var.f6124case, z40Var.f6130this);
        }

        @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener
        public void onAdShow() {
            z40 z40Var = z40.this;
            if (z40Var.f1242for) {
                return;
            }
            z40Var.m576throws(z40Var.f6124case, z40Var.f6130this);
        }

        @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener
        public void onAdShowFail(@NonNull AdError adError) {
            z40 z40Var = z40.this;
            if (z40Var.f1242for) {
                return;
            }
            z40Var.f();
            z40 z40Var2 = z40.this;
            z40Var2.m578try(adError.code, adError.message, z40Var2.f6124case, z40Var2.f6130this);
        }

        @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdListener
        public void onAdSkip() {
            z40 z40Var = z40.this;
            if (z40Var.f1242for) {
                return;
            }
            z40Var.m562native(z40Var.f6124case, z40Var.f6130this);
        }
    }

    /* compiled from: GmProviderSplash.java */
    /* renamed from: com.apk.z40$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cfor implements GMSettingConfigCallback {
        public Cfor() {
        }

        @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
        public void configLoad() {
            z40 z40Var = z40.this;
            if (z40Var.f1242for) {
                return;
            }
            z40Var.k();
            g50.m947try("AD_REQUEST_GROMORE_CONFIG_KEY", true);
        }
    }

    /* compiled from: GmProviderSplash.java */
    /* renamed from: com.apk.z40$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements GMSplashAdLoadCallback {
        public Cif() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdLoadCallback
        public void onAdLoadTimeout() {
            z40 z40Var = z40.this;
            if (z40Var.f1242for) {
                return;
            }
            z40Var.f();
            z40 z40Var2 = z40.this;
            z40Var2.m578try(83005, "csj onTimeout", z40Var2.f6124case, z40Var2.f6130this);
        }

        @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdLoadCallback
        public void onSplashAdLoadFail(@NonNull AdError adError) {
            z40 z40Var = z40.this;
            if (z40Var.f1242for) {
                return;
            }
            z40Var.f();
            z40 z40Var2 = z40.this;
            z40Var2.m578try(adError.code, adError.message, z40Var2.f6124case, z40Var2.f6130this);
        }

        @Override // com.bytedance.msdk.api.v2.ad.splash.GMSplashAdLoadCallback
        public void onSplashAdLoadSuccess() {
            z40 z40Var = z40.this;
            if (z40Var.f1242for) {
                return;
            }
            z40Var.f();
            z40 z40Var2 = z40.this;
            z40Var2.m564package(z40Var2.f6124case, z40Var2.f6130this);
            z40 z40Var3 = z40.this;
            if (z40Var3.f6125catch) {
                ViewGroup viewGroup = z40Var3.f6129goto;
                if (viewGroup != null) {
                    z40Var3.f6123break.showAd(viewGroup);
                    return;
                } else {
                    z40Var3.f6126class = true;
                    return;
                }
            }
            z40Var3.f6129goto.removeAllViews();
            z40 z40Var4 = z40.this;
            z40Var4.f6123break.showAd(z40Var4.f6129goto);
        }
    }

    public final void j(Activity activity, String str, String str2, ViewGroup viewGroup, a70 a70Var, boolean z) {
        this.f6131try = activity;
        this.f6124case = str;
        this.f6128else = str2;
        this.f6129goto = viewGroup;
        this.f6130this = a70Var;
        this.f6125catch = z;
        this.f6126class = false;
        h(str, 6000L, false, a70Var);
        if (!g50.m944for("AD_REQUEST_GROMORE_CONFIG_KEY", false) && !GMMediationAdSdk.configLoadSuccess()) {
            GMMediationAdSdk.registerConfigCallback(this.f6127const);
        } else {
            k();
        }
    }

    public final void k() {
        m542abstract(this.f6124case);
        GMAdSlotSplash.Builder downloadType = new GMAdSlotSplash.Builder().setSplashPreLoad(false).setTimeOut(n60.Cdo.f3195if).setSplashButtonType(1).setDownloadType(i());
        downloadType.setImageAdSize(n60.Cdo.f3194for, n60.Cdo.f3196new);
        GMNetworkRequestInfo gMNetworkRequestInfo = null;
        u60 trAdSdkLoader = TrAdSdk.getTrAdSdkLoader();
        if (trAdSdkLoader != null) {
            z zVar = (z) trAdSdkLoader;
            String m3125if = zVar.m3125if();
            String m2620do = tt.m2620do("SP_AD_GM_DD_OPEN_CSJ_ID_KEY", "");
            if (!TextUtils.isEmpty(m3125if) && !TextUtils.isEmpty(m2620do)) {
                gMNetworkRequestInfo = new PangleNetworkRequestInfo(m3125if, m2620do);
            } else {
                String m3124for = zVar.m3124for();
                String m2620do2 = tt.m2620do("SP_AD_GM_DD_OPEN_GDT_ID_KEY", "");
                if (!TextUtils.isEmpty(m3124for) && !TextUtils.isEmpty(m2620do2)) {
                    gMNetworkRequestInfo = new GdtNetworkRequestInfo(m3124for, m2620do2);
                }
            }
        }
        GMSplashAd gMSplashAd = new GMSplashAd(this.f6131try, this.f6128else);
        this.f6123break = gMSplashAd;
        gMSplashAd.setAdSplashListener(new Cdo());
        this.f6123break.loadAd(downloadType.build(), gMNetworkRequestInfo, new Cif());
    }
}
