package com.bytedance.msdk.api.v2.ad.splash;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.k;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.base.TTLoadBase;
import com.bytedance.msdk.api.v2.GMMediationAdSdk;
import com.bytedance.msdk.api.v2.GMNetworkRequestInfo;
import com.bytedance.msdk.api.v2.GMSettingConfigCallback;
import com.bytedance.msdk.api.v2.ad.GMBaseAd;
import com.bytedance.msdk.api.v2.slot.GMAdSlotSplash;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes8.dex */
public class GMSplashAd extends GMBaseAd implements TTLoadBase {

    /* renamed from: if  reason: not valid java name */
    public k f9240if;

    public GMSplashAd(Activity activity, String str) {
        this.f9240if = new k(activity, str);
    }

    public void destroy() {
        k kVar = this.f9240if;
        if (kVar != null) {
            kVar.B();
        }
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<AdLoadInfo> getAdLoadInfoList() {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.C();
        }
        return new ArrayList();
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Deprecated
    public int getAdNetworkPlatformId() {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.E();
        }
        return -2;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    @Deprecated
    public String getAdNetworkRitId() {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.F();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getBestEcpm() {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.b();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getCacheList() {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.c();
        }
        return null;
    }

    public Map<String, Object> getMediaExtraInfo() {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.G();
        }
        return new HashMap();
    }

    public int[] getMinWindowSize() {
        k kVar = this.f9240if;
        if (kVar != null) {
            kVar.f0();
            return null;
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public List<GMAdEcpmInfo> getMultiBiddingEcpm() {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.f();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    @Nullable
    @Deprecated
    public String getPreEcpm() {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.H();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.base.TTLoadBase
    public GMAdEcpmInfo getShowEcpm() {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.J();
        }
        return null;
    }

    @Nullable
    public Bitmap getSplashBitMap() {
        k kVar = this.f9240if;
        if (kVar != null) {
            kVar.g0();
            return null;
        }
        return null;
    }

    @VisibleForTesting
    public int getTimeOut() {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.h0();
        }
        return -1;
    }

    public boolean isReady() {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.i0();
        }
        return false;
    }

    public void loadAd(GMAdSlotSplash gMAdSlotSplash, GMSplashAdLoadCallback gMSplashAdLoadCallback) {
        loadAd(gMAdSlotSplash, null, gMSplashAdLoadCallback);
    }

    public void setAdSplashListener(GMSplashAdListener gMSplashAdListener) {
        k kVar = this.f9240if;
        if (kVar != null) {
            kVar.a(gMSplashAdListener);
        }
    }

    public void setMinWindowListener(GMSplashMinWindowListener gMSplashMinWindowListener) {
        k kVar = this.f9240if;
        if (kVar != null) {
            kVar.a(gMSplashMinWindowListener);
        }
    }

    public void setSplashCardListener(GMSplashCardListener gMSplashCardListener) {
        k kVar = this.f9240if;
        if (kVar != null) {
            kVar.a(gMSplashCardListener);
        }
    }

    public void showAd(final ViewGroup viewGroup) {
        k kVar = this.f9240if;
        if (kVar != null) {
            kVar.b((TTBaseAd) null);
            ThreadHelper.runOnUiThread(new Runnable() { // from class: com.bytedance.msdk.api.v2.ad.splash.GMSplashAd.2
                @Override // java.lang.Runnable
                public void run() {
                    k kVar2 = GMSplashAd.this.f9240if;
                    if (kVar2 != null) {
                        kVar2.a(viewGroup);
                    }
                }
            });
        }
    }

    public boolean showWindowDirect(Rect rect, GMSplashAdListener gMSplashAdListener) {
        k kVar = this.f9240if;
        if (kVar != null) {
            return kVar.a(rect, gMSplashAdListener);
        }
        return false;
    }

    public void splashMinWindowAnimationFinish() {
        k kVar = this.f9240if;
        if (kVar != null) {
            kVar.j0();
        }
    }

    public void loadAd(final GMAdSlotSplash gMAdSlotSplash, final GMNetworkRequestInfo gMNetworkRequestInfo, final GMSplashAdLoadCallback gMSplashAdLoadCallback) {
        if (gMAdSlotSplash != null) {
            m3587do(gMAdSlotSplash);
            this.f9079do.setImageAdSize(gMAdSlotSplash.getWidth(), gMAdSlotSplash.getHeight());
            this.f9079do.setUserID(gMAdSlotSplash.getUserID());
            this.f9079do.setSplashButtonType(gMAdSlotSplash.getSplashButtonType());
            this.f9079do.setForceLoadBottom(gMAdSlotSplash.isForceLoadBottom());
            this.f9079do.setSplashShakeButton(gMAdSlotSplash.getSplashShakeButton());
        }
        if (gMNetworkRequestInfo != null && gMNetworkRequestInfo.getAdNetworkFlatFromId() == 1 && !TextUtils.isEmpty(gMNetworkRequestInfo.getAppId()) && !TextUtils.isEmpty(a.f()) && !gMNetworkRequestInfo.getAppId().equals(a.f())) {
            if (gMSplashAdLoadCallback != null) {
                gMSplashAdLoadCallback.onSplashAdLoadFail(new AdError(AdError.ERROR_CODE_PANGLE_APPID_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_PANGLE_APPID_NO_SAME)));
            }
        } else if (this.f9240if != null) {
            if (!bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().a(this.f9240if.l(), 3) && gMSplashAdLoadCallback != null) {
                gMSplashAdLoadCallback.onSplashAdLoadFail(new AdError(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME, AdError.getMessage(AdError.ERROR_CODE_RIT_ADTYPE_NO_SAME)));
            } else if (!bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().E()) {
                if (gMSplashAdLoadCallback != null) {
                    gMSplashAdLoadCallback.onSplashAdLoadFail(new AdError(AdError.ERROR_CODE_SPLASH_MODULE_UNABLE, AdError.getMessage(AdError.ERROR_CODE_SPLASH_MODULE_UNABLE)));
                }
            } else {
                this.f9240if.k(gMAdSlotSplash.getTimeOut());
                if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().v()) {
                    GMMediationAdSdk.registerConfigCallback(new GMSettingConfigCallback() { // from class: com.bytedance.msdk.api.v2.ad.splash.GMSplashAd.1
                        @Override // com.bytedance.msdk.api.v2.GMSettingConfigCallback
                        public void configLoad() {
                            GMSplashAd gMSplashAd = GMSplashAd.this;
                            gMSplashAd.f9240if.a(gMSplashAd.getAdSlot(), gMAdSlotSplash, gMNetworkRequestInfo, gMSplashAdLoadCallback);
                        }
                    });
                } else {
                    this.f9240if.a(getAdSlot(), gMAdSlotSplash, gMNetworkRequestInfo, gMSplashAdLoadCallback);
                }
            }
        }
    }
}
