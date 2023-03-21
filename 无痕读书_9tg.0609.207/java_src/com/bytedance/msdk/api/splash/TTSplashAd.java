package com.bytedance.msdk.api.splash;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.k;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.base.TTLoadBase;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.GMNetworkRequestInfo;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import com.bytedance.msdk.api.v2.ad.AdUtils;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes8.dex */
public class TTSplashAd implements TTLoadBase {

    /* renamed from: do  reason: not valid java name */
    public k f8990do;

    public TTSplashAd(Activity activity, String str) {
        this.f8990do = new k(activity, str);
    }

    public void destroy() {
        k kVar = this.f8990do;
        if (kVar != null) {
            kVar.B();
        }
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<AdLoadInfo> getAdLoadInfoList() {
        k kVar = this.f8990do;
        if (kVar != null) {
            return kVar.C();
        }
        return new ArrayList();
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public int getAdNetworkPlatformId() {
        k kVar = this.f8990do;
        if (kVar != null) {
            return kVar.E();
        }
        return -2;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    public String getAdNetworkRitId() {
        k kVar = this.f8990do;
        if (kVar != null) {
            return kVar.F();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getBestEcpm() {
        k kVar = this.f8990do;
        if (kVar != null) {
            return kVar.b();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getCacheList() {
        k kVar = this.f8990do;
        if (kVar != null) {
            return kVar.c();
        }
        return null;
    }

    public int[] getMinWindowSize() {
        k kVar = this.f8990do;
        if (kVar != null) {
            kVar.f0();
            return null;
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getMultiBiddingEcpm() {
        k kVar = this.f8990do;
        if (kVar != null) {
            return kVar.f();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    public String getPreEcpm() {
        k kVar = this.f8990do;
        if (kVar != null) {
            return kVar.H();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getShowEcpm() {
        k kVar = this.f8990do;
        if (kVar != null) {
            return kVar.J();
        }
        return null;
    }

    @Nullable
    public Bitmap getSplashBitMap() {
        k kVar = this.f8990do;
        if (kVar != null) {
            kVar.g0();
            return null;
        }
        return null;
    }

    public void loadAd(AdSlot adSlot, TTSplashAdLoadCallback tTSplashAdLoadCallback, int i) {
        loadAd(adSlot, null, tTSplashAdLoadCallback, i);
    }

    public void setMinWindowListener(TTSplashMinWindowListener tTSplashMinWindowListener) {
        k kVar = this.f8990do;
        if (kVar != null) {
            kVar.a(tTSplashMinWindowListener);
        }
    }

    public void setSplashCardListener(TTSplashCardListener tTSplashCardListener) {
        k kVar = this.f8990do;
        if (kVar != null) {
            kVar.a(tTSplashCardListener);
        }
    }

    public void setTTAdSplashListener(TTSplashAdListener tTSplashAdListener) {
        k kVar = this.f8990do;
        if (kVar != null) {
            kVar.a(tTSplashAdListener);
        }
    }

    public void showAd(final ViewGroup viewGroup) {
        if (this.f8990do != null) {
            ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.api.splash.TTSplashAd.2
                @Override // java.lang.Runnable
                public void run() {
                    k kVar = TTSplashAd.this.f8990do;
                    if (kVar != null) {
                        kVar.a(viewGroup);
                    }
                }
            });
        }
    }

    public boolean showWindowDirect(Rect rect, TTSplashAdListener tTSplashAdListener) {
        k kVar = this.f8990do;
        if (kVar != null) {
            return kVar.a(rect, tTSplashAdListener);
        }
        return false;
    }

    public void splashMinWindowAnimationFinish() {
        k kVar = this.f8990do;
        if (kVar != null) {
            kVar.j0();
        }
    }

    public void loadAd(final AdSlot adSlot, final GMNetworkRequestInfo gMNetworkRequestInfo, final TTSplashAdLoadCallback tTSplashAdLoadCallback, final int i) {
        if (gMNetworkRequestInfo != null && gMNetworkRequestInfo.getAdNetworkFlatFromId() == 1 && !TextUtils.isEmpty(gMNetworkRequestInfo.getAppId()) && !TextUtils.isEmpty(a.f()) && !gMNetworkRequestInfo.getAppId().equals(a.f())) {
            if (tTSplashAdLoadCallback != null) {
                tTSplashAdLoadCallback.onSplashAdLoadFail(new AdError(AdError.ERROR_CODE_PANGLE_APPID_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_PANGLE_APPID_NO_SAME)));
            }
        } else if (this.f8990do != null) {
            if (!bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().a(this.f8990do.l(), 3) && tTSplashAdLoadCallback != null) {
                tTSplashAdLoadCallback.onSplashAdLoadFail(new AdError(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME)));
            } else if (!bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().E()) {
                if (tTSplashAdLoadCallback != null) {
                    tTSplashAdLoadCallback.onSplashAdLoadFail(new AdError(AdError.ERROR_CODE_SPLASH_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_SPLASH_MODULE_UNABLE)));
                }
            } else if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().v()) {
                GMMediationAdSdk.registerConfigCallback(new GMSettingConfigCallback() { // from class: com.bytedance.msdk.api.splash.TTSplashAd.1
                    @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
                    public void configLoad() {
                        k kVar = TTSplashAd.this.f8990do;
                        AdSlot adSlot2 = adSlot;
                        kVar.a(adSlot2, AdUtils.getAdSlotSplash(adSlot2), gMNetworkRequestInfo, tTSplashAdLoadCallback, i);
                    }
                });
            } else {
                this.f8990do.a(adSlot, AdUtils.getAdSlotSplash(adSlot), gMNetworkRequestInfo, tTSplashAdLoadCallback, i);
            }
        }
    }

    @Deprecated
    public TTSplashAd(Activity activity, View view, String str) {
        this.f8990do = new k(activity, view, str);
    }
}
