package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_char12;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.k;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.l;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.o;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t;
import com.apk.Cgoto;
import com.apk.eg;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.v2.GMAdDislike;
import com.bytedance.msdk.api.v2.GMDislikeCallback;
import com.bytedance.msdk.api.v2.GMNetworkPlatformConst;
import com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdAppInfo;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeCustomVideoReporter;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: TTNativeAdImpl.java */
/* loaded from: classes8.dex */
public class a implements GMNativeAd, GMVideoListener, GMAdAppDownloadListener {

    /* renamed from: a  reason: collision with root package name */
    public TTBaseAd f10878a;
    public AdSlot b;
    public GMNativeAdListener c;
    public c d;
    public GMVideoListener e;
    public boolean f = false;
    public GMAdAppDownloadListener g;

    /* compiled from: TTNativeAdImpl.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_char12.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0039a implements GMNativeExpressAdListener {
        public C0039a() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener
        public void onAdClick() {
            if (a.this.c != null) {
                a.this.c.onAdClick();
            }
            h.a(a.this.f10878a, a.this.b, 0, t.a(a.this.f10878a) ? Cgoto.m1021throws() : null);
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener
        public void onAdShow() {
            a.this.f = true;
            if (a.this.c != null) {
                a.this.c.onAdShow();
            }
            if (a.this.b != null && a.this.f10878a != null) {
                Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(a.this.b.getAdUnitId(), TTLogUtil.TAG_EVENT_SHOW_LISTEN) + "adSlotId：" + a.this.f10878a.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(a.this.f10878a.getAdNetworkPlatformId()));
                m b = m.b();
                StringBuilder sb = new StringBuilder();
                sb.append(a.this.b.getAdUnitId());
                sb.append("");
                b.a(sb.toString());
                m b2 = m.b();
                b2.j(a.this.b.getAdUnitId() + "");
                k b3 = k.b();
                b3.a(a.this.b.getAdUnitId() + "", a.this.f10878a.getAdNetworkSlotId());
                l b4 = l.b();
                b4.e(a.this.b.getAdUnitId() + "", a.this.f10878a.getAdNetworkSlotId());
            }
            a.this.d.a(a.this);
            h.b(a.this.f10878a, a.this.b, 0, t.a(a.this.f10878a) ? Cgoto.m1021throws() : null);
            g.b(a.this.b != null ? a.this.b.getAdUnitId() : "", a.this.f10878a);
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener
        public void onRenderFail(View view, String str, int i) {
            if (a.this.c instanceof GMNativeExpressAdListener) {
                ((GMNativeExpressAdListener) a.this.c).onRenderFail(view, str, i);
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeExpressAdListener
        public void onRenderSuccess(float f, float f2) {
            if (a.this.c instanceof GMNativeExpressAdListener) {
                ((GMNativeExpressAdListener) a.this.c).onRenderSuccess(f, f2);
            }
        }
    }

    /* compiled from: TTNativeAdImpl.java */
    /* loaded from: classes8.dex */
    public class b implements GMNativeAdListener {
        public b() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener
        public void onAdClick() {
            if (a.this.c != null) {
                a.this.c.onAdClick();
            }
            h.a(a.this.f10878a, a.this.b, 0, t.a(a.this.f10878a) ? Cgoto.m1021throws() : null);
        }

        @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdListener
        public void onAdShow() {
            a.this.f = true;
            if (a.this.c != null) {
                a.this.c.onAdShow();
            }
            if (a.this.b != null && a.this.f10878a != null) {
                Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(a.this.b.getAdUnitId(), TTLogUtil.TAG_EVENT_SHOW_LISTEN) + "adSlotId：" + a.this.f10878a.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(a.this.f10878a.getAdNetworkPlatformId()));
                m b = m.b();
                StringBuilder sb = new StringBuilder();
                sb.append(a.this.b.getAdUnitId());
                sb.append("");
                b.a(sb.toString());
                m b2 = m.b();
                b2.j(a.this.b.getAdUnitId() + "");
                k b3 = k.b();
                b3.a(a.this.b.getAdUnitId() + "", a.this.f10878a.getAdNetworkSlotId());
                l b4 = l.b();
                b4.e(a.this.b.getAdUnitId() + "", a.this.f10878a.getAdNetworkSlotId());
            }
            a.this.d.a(a.this);
            h.b(a.this.f10878a, a.this.b, 0, t.a(a.this.f10878a) ? Cgoto.m1021throws() : null);
            g.b(a.this.b != null ? a.this.b.getAdUnitId() : "", a.this.f10878a);
        }
    }

    /* compiled from: TTNativeAdImpl.java */
    /* loaded from: classes8.dex */
    public interface c {
        void a();

        void a(GMNativeAd gMNativeAd);
    }

    public a(TTBaseAd tTBaseAd, AdSlot adSlot, c cVar) {
        this.f10878a = tTBaseAd;
        this.b = adSlot;
        this.d = cVar;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public boolean canAdReuse() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.canAdReuse();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void cancelDownload() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            tTBaseAd.cancelDownload();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void destroy() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            try {
                tTBaseAd.onDestroy();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void dislikeClick(String str, Map<String, Object> map) {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            h.a(tTBaseAd, this.b, str);
            this.f10878a.dislikeClick(str, map);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public String getActionText() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getActionText();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public int getAdImageMode() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getImageMode();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    @Deprecated
    public View getAdLogoView() {
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public int getAdNetworkPlatformId() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdNetworkPlatformId();
        }
        return -2;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public String getAdNetworkPlatformName() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdNetWorkName();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public String getAdNetworkRitId() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdNetworkSlotId();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    @Nullable
    public GMAdEcpmInfo getBestEcpm() {
        if (this.f10878a != null && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().p()) {
            return o.a(this.f10878a, false);
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public String getDescription() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdDescription();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public GMAdDislike getDislikeDialog(Activity activity) {
        return getDislikeDialog(activity, null);
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public int getDownloadStatus() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getDownloadStatus();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public View getExpressView() {
        h.b(this.b, o.a(this.f10878a));
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null && tTBaseAd.isExpressAd()) {
            c cVar = this.d;
            if (cVar != null) {
                cVar.a();
            }
            h.b(this.f10878a, this.b);
            return this.f10878a.getAdView();
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(this.f10878a);
        h.a(arrayList, this.b);
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public Map<String, Object> getExtraMsg() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getExtraMsg();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    @Nullable
    public GMNativeCustomVideoReporter getGMNativeCustomVideoReporter() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getGMNativeCustomVideoReporter();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public String getIconUrl() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getIconUrl();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public int getImageHeight() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getImageHeight();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public List<String> getImageList() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getImages();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public String getImageUrl() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getImageUrl();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public int getImageWidth() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getImageWidth();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public int getInteractionType() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getInteractionType();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public Map<String, Object> getMediaExtraInfo() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getMediaExtraInfo();
        }
        return new HashMap();
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public GMNativeAdAppInfo getNativeAdAppInfo() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd == null || !tTBaseAd.hasAppInfo()) {
            return null;
        }
        GMNativeAdAppInfo gMNativeAdAppInfo = new GMNativeAdAppInfo();
        gMNativeAdAppInfo.setAppName(this.f10878a.getAppName());
        gMNativeAdAppInfo.setAuthorName(this.f10878a.getAuthorName());
        gMNativeAdAppInfo.setPackageSizeBytes(this.f10878a.getPackageSizeBytes());
        gMNativeAdAppInfo.setPermissionsUrl(this.f10878a.getPermissionsUrl());
        gMNativeAdAppInfo.setPrivacyAgreement(this.f10878a.getPrivacyAgreement());
        gMNativeAdAppInfo.setVersionName(this.f10878a.getVersionName());
        gMNativeAdAppInfo.setPermissionsMap(this.f10878a.getPermissionsMap());
        gMNativeAdAppInfo.setAppInfoExtra(this.f10878a.getAppInfoExtra());
        return gMNativeAdAppInfo;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public String getPackageName() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getPackageName();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public String getPreEcpm() {
        if (this.f10878a == null || !this.f) {
            return null;
        }
        return (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().q() || !(this.f10878a.isServerBiddingAd() || this.f10878a.isClientBiddingAd() || this.f10878a.isMultiBiddingAd())) ? this.f10878a.getNetWorkPlatFormCpm() : GMNetworkPlatformConst.AD_NETWORK_NO_PERMISSION;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public int getSdkNumType() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdNetworkPlatformId();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    @Nullable
    public GMAdEcpmInfo getShowEcpm() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd == null || !this.f) {
            return null;
        }
        return o.a(tTBaseAd, true);
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public String getSource() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getSource();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public double getStarRating() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getStarRating();
        }
        return 0.0d;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public TTBaseAd getTTBaseAd() {
        return this.f10878a;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public String getTitle() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdTitle();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public int getVideoHeight() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getVideoHeight();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public String getVideoUrl() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getVideoUrl();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public int getVideoWidth() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getVideoWidth();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public boolean hasDislike() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.hasDislike();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public boolean isExpressAd() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.isExpressAd();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public boolean isHasShown() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.isHasShown();
        }
        return true;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public boolean isReady() {
        AdSlot adSlot;
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f10878a);
        h.a(arrayList, (List<TTBaseAd>) null, (List<TTBaseAd>) null, this.b, o.a(this.f10878a));
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd == null || (adSlot = this.b) == null) {
            return false;
        }
        return tTBaseAd.isReady(adSlot.getAdUnitId());
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public boolean isServerBidding() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.isServerBiddingAd();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener
    public void onDownloadFailed(long j, long j2, String str, String str2) {
        GMAdAppDownloadListener gMAdAppDownloadListener = this.g;
        if (gMAdAppDownloadListener != null) {
            gMAdAppDownloadListener.onDownloadFailed(j, j2, str, str2);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener
    public void onDownloadFinished(long j, String str, String str2) {
        GMAdAppDownloadListener gMAdAppDownloadListener = this.g;
        if (gMAdAppDownloadListener != null) {
            gMAdAppDownloadListener.onDownloadFinished(j, str, str2);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener
    public void onDownloadPaused(long j, long j2, String str, String str2) {
        GMAdAppDownloadListener gMAdAppDownloadListener = this.g;
        if (gMAdAppDownloadListener != null) {
            gMAdAppDownloadListener.onDownloadPaused(j, j2, str, str2);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener
    public void onDownloadProgress(long j, long j2, int i, int i2) {
        GMAdAppDownloadListener gMAdAppDownloadListener = this.g;
        if (gMAdAppDownloadListener != null) {
            gMAdAppDownloadListener.onDownloadProgress(j, j2, i, i2);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener
    public void onDownloadStarted() {
        GMAdAppDownloadListener gMAdAppDownloadListener = this.g;
        if (gMAdAppDownloadListener != null) {
            gMAdAppDownloadListener.onDownloadStarted();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener
    public void onIdle() {
        GMAdAppDownloadListener gMAdAppDownloadListener = this.g;
        if (gMAdAppDownloadListener != null) {
            gMAdAppDownloadListener.onIdle();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.GMAdAppDownloadListener
    public void onInstalled(String str, String str2) {
        GMAdAppDownloadListener gMAdAppDownloadListener = this.g;
        if (gMAdAppDownloadListener != null) {
            gMAdAppDownloadListener.onInstalled(str, str2);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void onPause() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            tTBaseAd.onPause();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener
    public void onProgressUpdate(long j, long j2) {
        GMVideoListener gMVideoListener = this.e;
        if (gMVideoListener != null) {
            gMVideoListener.onProgressUpdate(j, j2);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener
    public void onVideoCompleted() {
        GMVideoListener gMVideoListener = this.e;
        if (gMVideoListener != null) {
            gMVideoListener.onVideoCompleted();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener
    public void onVideoError(AdError adError) {
        h.a(this.f10878a, this.b, (AdError) null, 2, 0, t.a(this.f10878a) ? Cgoto.m1021throws() : null);
        GMVideoListener gMVideoListener = this.e;
        if (gMVideoListener != null) {
            gMVideoListener.onVideoError(adError);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener
    public void onVideoPause() {
        GMVideoListener gMVideoListener = this.e;
        if (gMVideoListener != null) {
            gMVideoListener.onVideoPause();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener
    public void onVideoResume() {
        GMVideoListener gMVideoListener = this.e;
        if (gMVideoListener != null) {
            gMVideoListener.onVideoResume();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener
    public void onVideoStart() {
        GMVideoListener gMVideoListener = this.e;
        if (gMVideoListener != null) {
            gMVideoListener.onVideoStart();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void pauseAppDownload() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            tTBaseAd.pauseAppDownload();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void registerView(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, GMViewBinder gMViewBinder) {
        h.b(this.b, o.a(this.f10878a));
        if (this.f10878a != null) {
            a();
            this.f10878a.registerViewForInteraction(viewGroup, list, list2, gMViewBinder);
            c cVar = this.d;
            if (cVar != null) {
                cVar.a();
            }
            a(this.f10878a);
            h.b(this.f10878a, this.b);
            return;
        }
        h.a((List<TTBaseAd>) null, this.b);
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void render() {
        if (this.f10878a != null) {
            a();
            this.f10878a.render();
            a(this.f10878a);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void resume() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            tTBaseAd.onResume();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void resumeAppDownload() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            tTBaseAd.resumeAppDownload();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void setAppDownloadListener(GMAdAppDownloadListener gMAdAppDownloadListener) {
        this.g = gMAdAppDownloadListener;
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            tTBaseAd.setTTAdAppDownloadListener(this);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void setDislikeCallback(Activity activity, GMDislikeCallback gMDislikeCallback) {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            tTBaseAd.setDislikeCallback(activity, gMDislikeCallback);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void setNativeAdListener(GMNativeAdListener gMNativeAdListener) {
        this.c = gMNativeAdListener;
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void setUseCustomVideo(boolean z) {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            tTBaseAd.setUseCustomVideo(z);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void setVideoListener(GMVideoListener gMVideoListener) {
        this.e = gMVideoListener;
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            tTBaseAd.setTTVideoListener(this);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void unregisterView() {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            tTBaseAd.unregisterView();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public GMAdDislike getDislikeDialog(Activity activity, Map<String, Object> map) {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            return tTBaseAd.getDislikeDialog(activity, map);
        }
        return null;
    }

    public void a(boolean z) {
        TTBaseAd tTBaseAd = this.f10878a;
        if (tTBaseAd != null) {
            tTBaseAd.setHasShown(z);
        }
    }

    private void a() {
        if (this.f10878a.isExpressAd()) {
            this.f10878a.setTTNativeAdListener(new C0039a());
        } else {
            this.f10878a.setTTNativeAdListener(new b());
        }
    }

    public void a(TTBaseAd tTBaseAd) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().s()) {
            h.a(tTBaseAd, this.b, t.a(Thread.currentThread().getStackTrace()), 2);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void registerView(@NonNull Activity activity, @NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, GMViewBinder gMViewBinder) {
        h.b(this.b, o.a(this.f10878a));
        if (this.f10878a != null) {
            a();
            this.f10878a.registerViewForInteraction(activity, viewGroup, list, list2, null, gMViewBinder);
            c cVar = this.d;
            if (cVar != null) {
                cVar.a();
            }
            a(this.f10878a);
            h.b(this.f10878a, this.b);
            return;
        }
        h.a((List<TTBaseAd>) null, this.b);
    }

    @Override // com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAd
    public void registerView(@NonNull Activity activity, @NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable List<View> list3, GMViewBinder gMViewBinder) {
        h.b(this.b, o.a(this.f10878a));
        if (this.f10878a != null) {
            a();
            this.f10878a.registerViewForInteraction(activity, viewGroup, list, list2, list3, gMViewBinder);
            c cVar = this.d;
            if (cVar != null) {
                cVar.a();
            }
            a(this.f10878a);
            h.b(this.f10878a, this.b);
            return;
        }
        h.a((List<TTBaseAd>) null, this.b);
    }
}
