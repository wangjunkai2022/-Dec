package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_try19;

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
import com.bytedance.msdk.api.v2.ad.draw.GMDrawAd;
import com.bytedance.msdk.api.v2.ad.draw.GMDrawAdListener;
import com.bytedance.msdk.api.v2.ad.draw.GMDrawExpressAdListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMNativeAdAppInfo;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMVideoListener;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: GMDrawAdImpl.java */
/* loaded from: classes8.dex */
public class a implements GMDrawAd, GMVideoListener {

    /* renamed from: a  reason: collision with root package name */
    public TTBaseAd f10942a;
    public AdSlot b;
    public GMDrawAdListener c;
    public c d;
    public GMVideoListener e;
    public boolean f = false;

    /* compiled from: GMDrawAdImpl.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_try19.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0047a implements GMDrawExpressAdListener {
        public C0047a() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAdListener
        public void onAdClick() {
            if (a.this.c != null) {
                a.this.c.onAdClick();
            }
            h.a(a.this.f10942a, a.this.b, 0, t.a(a.this.f10942a) ? Cgoto.m1021throws() : null);
        }

        @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAdListener
        public void onAdShow() {
            a.this.f = true;
            if (a.this.c != null) {
                a.this.c.onAdShow();
            }
            if (a.this.b != null && a.this.f10942a != null) {
                Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(a.this.b.getAdUnitId(), TTLogUtil.TAG_EVENT_SHOW_LISTEN) + "adSlotId：" + a.this.f10942a.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(a.this.f10942a.getAdNetworkPlatformId()));
                m b = m.b();
                StringBuilder sb = new StringBuilder();
                sb.append(a.this.b.getAdUnitId());
                sb.append("");
                b.a(sb.toString());
                m b2 = m.b();
                b2.j(a.this.b.getAdUnitId() + "");
                k b3 = k.b();
                b3.a(a.this.b.getAdUnitId() + "", a.this.f10942a.getAdNetworkSlotId());
                l b4 = l.b();
                b4.e(a.this.b.getAdUnitId() + "", a.this.f10942a.getAdNetworkSlotId());
            }
            a.this.d.a(a.this);
            h.b(a.this.f10942a, a.this.b, 0, t.a(a.this.f10942a) ? Cgoto.m1021throws() : null);
            g.b(a.this.b != null ? a.this.b.getAdUnitId() : "", a.this.f10942a);
        }

        @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawExpressAdListener
        public void onRenderFail(View view, String str, int i) {
            if (a.this.c instanceof GMDrawExpressAdListener) {
                ((GMDrawExpressAdListener) a.this.c).onRenderFail(view, str, i);
            }
        }

        @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawExpressAdListener
        public void onRenderSuccess(float f, float f2) {
            if (a.this.c instanceof GMDrawExpressAdListener) {
                ((GMDrawExpressAdListener) a.this.c).onRenderSuccess(f, f2);
            }
        }
    }

    /* compiled from: GMDrawAdImpl.java */
    /* loaded from: classes8.dex */
    public class b implements GMDrawAdListener {
        public b() {
        }

        @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAdListener
        public void onAdClick() {
            if (a.this.c != null) {
                a.this.c.onAdClick();
            }
            h.a(a.this.f10942a, a.this.b, 0, t.a(a.this.f10942a) ? Cgoto.m1021throws() : null);
        }

        @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAdListener
        public void onAdShow() {
            a.this.f = true;
            if (a.this.c != null) {
                a.this.c.onAdShow();
            }
            if (a.this.b != null && a.this.f10942a != null) {
                Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(a.this.b.getAdUnitId(), TTLogUtil.TAG_EVENT_SHOW_LISTEN) + "adSlotId：" + a.this.f10942a.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(a.this.f10942a.getAdNetworkPlatformId()));
                m b = m.b();
                StringBuilder sb = new StringBuilder();
                sb.append(a.this.b.getAdUnitId());
                sb.append("");
                b.a(sb.toString());
                m b2 = m.b();
                b2.j(a.this.b.getAdUnitId() + "");
                k b3 = k.b();
                b3.a(a.this.b.getAdUnitId() + "", a.this.f10942a.getAdNetworkSlotId());
                l b4 = l.b();
                b4.e(a.this.b.getAdUnitId() + "", a.this.f10942a.getAdNetworkSlotId());
            }
            a.this.d.a(a.this);
            h.b(a.this.f10942a, a.this.b, 0, t.a(a.this.f10942a) ? Cgoto.m1021throws() : null);
            g.b(a.this.b != null ? a.this.b.getAdUnitId() : "", a.this.f10942a);
        }
    }

    /* compiled from: GMDrawAdImpl.java */
    /* loaded from: classes8.dex */
    public interface c {
        void a();

        void a(GMDrawAd gMDrawAd);
    }

    public a(TTBaseAd tTBaseAd, AdSlot adSlot, c cVar) {
        this.f10942a = tTBaseAd;
        this.b = adSlot;
        this.d = cVar;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public boolean canAdReuse() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.canAdReuse();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public void destroy() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            try {
                tTBaseAd.onDestroy();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public String getActionText() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getActionText();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public int getAdImageMode() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getImageMode();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    @Deprecated
    public View getAdLogoView() {
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public int getAdNetworkPlatformId() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdNetworkPlatformId();
        }
        return -2;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public String getAdNetworkRitId() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdNetworkSlotId();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    @Nullable
    public GMAdEcpmInfo getBestEcpm() {
        if (this.f10942a != null && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().p()) {
            return o.a(this.f10942a, false);
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public String getDescription() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdDescription();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public GMAdDislike getDislikeDialog(Activity activity) {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getDislikeDialog(activity, null);
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public View getExpressView() {
        h.b(this.b, o.a(this.f10942a));
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null && tTBaseAd.isExpressAd()) {
            c cVar = this.d;
            if (cVar != null) {
                cVar.a();
            }
            h.b(this.f10942a, this.b);
            return this.f10942a.getAdView();
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(this.f10942a);
        h.a(arrayList, this.b);
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public String getIconUrl() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getIconUrl();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public int getImageHeight() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getImageHeight();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public List<String> getImageList() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getImages();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public String getImageUrl() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getImageUrl();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public int getImageWidth() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getImageWidth();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public int getInteractionType() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getInteractionType();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public Map<String, Object> getMediaExtraInfo() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getMediaExtraInfo();
        }
        return new HashMap();
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public GMNativeAdAppInfo getNativeAdAppInfo() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd == null || !tTBaseAd.hasAppInfo()) {
            return null;
        }
        GMNativeAdAppInfo gMNativeAdAppInfo = new GMNativeAdAppInfo();
        gMNativeAdAppInfo.setAppName(this.f10942a.getAppName());
        gMNativeAdAppInfo.setAuthorName(this.f10942a.getAuthorName());
        gMNativeAdAppInfo.setPackageSizeBytes(this.f10942a.getPackageSizeBytes());
        gMNativeAdAppInfo.setPermissionsUrl(this.f10942a.getPermissionsUrl());
        gMNativeAdAppInfo.setPrivacyAgreement(this.f10942a.getPrivacyAgreement());
        gMNativeAdAppInfo.setVersionName(this.f10942a.getVersionName());
        gMNativeAdAppInfo.setPermissionsMap(this.f10942a.getPermissionsMap());
        gMNativeAdAppInfo.setAppInfoExtra(this.f10942a.getAppInfoExtra());
        return gMNativeAdAppInfo;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public String getPackageName() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getPackageName();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public String getPreEcpm() {
        if (this.f10942a == null || !this.f) {
            return null;
        }
        return (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().q() || !(this.f10942a.isServerBiddingAd() || this.f10942a.isClientBiddingAd() || this.f10942a.isMultiBiddingAd())) ? this.f10942a.getNetWorkPlatFormCpm() : GMNetworkPlatformConst.AD_NETWORK_NO_PERMISSION;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public int getSdkNumType() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdNetworkPlatformId();
        }
        return -1;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    @Nullable
    public GMAdEcpmInfo getShowEcpm() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd == null || !this.f) {
            return null;
        }
        return o.a(tTBaseAd, true);
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public String getSource() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getSource();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public double getStarRating() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getStarRating();
        }
        return 0.0d;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public TTBaseAd getTTBaseAd() {
        return this.f10942a;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public String getTitle() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdTitle();
        }
        return null;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public int getVideoHeight() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getVideoHeight();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public int getVideoWidth() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.getVideoWidth();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public boolean hasDislike() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.hasDislike();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public boolean isExpressAd() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.isExpressAd();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public boolean isHasShown() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.isHasShown();
        }
        return true;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public boolean isReady() {
        AdSlot adSlot;
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f10942a);
        h.a(arrayList, (List<TTBaseAd>) null, (List<TTBaseAd>) null, this.b, o.a(this.f10942a));
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd == null || (adSlot = this.b) == null) {
            return false;
        }
        return tTBaseAd.isReady(adSlot.getAdUnitId());
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public boolean isServerBidding() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            return tTBaseAd.isServerBiddingAd();
        }
        return false;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public void onPause() {
        TTBaseAd tTBaseAd = this.f10942a;
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
        h.a(this.f10942a, this.b, (AdError) null, 2, 0, t.a(this.f10942a) ? Cgoto.m1021throws() : null);
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

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public void registerView(@NonNull Activity activity, @NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, GMViewBinder gMViewBinder) {
        h.b(this.b, o.a(this.f10942a));
        if (this.f10942a != null) {
            a();
            this.f10942a.registerViewForInteraction(activity, viewGroup, list, list2, null, gMViewBinder);
            c cVar = this.d;
            if (cVar != null) {
                cVar.a();
            }
            a(this.f10942a);
            h.b(this.f10942a, this.b);
            return;
        }
        h.a((List<TTBaseAd>) null, this.b);
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public void render() {
        if (this.f10942a != null) {
            a();
            this.f10942a.render();
            a(this.f10942a);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public void resume() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            tTBaseAd.onResume();
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public void setDislikeCallback(Activity activity, GMDislikeCallback gMDislikeCallback) {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            tTBaseAd.setDislikeCallback(activity, gMDislikeCallback);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public void setDrawAdListener(GMDrawAdListener gMDrawAdListener) {
        this.c = gMDrawAdListener;
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public void setVideoListener(GMVideoListener gMVideoListener) {
        this.e = gMVideoListener;
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            tTBaseAd.setTTVideoListener(this);
        }
    }

    @Override // com.bytedance.msdk.api.v2.ad.draw.GMDrawAd
    public void unregisterView() {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            tTBaseAd.unregisterView();
        }
    }

    public void a(boolean z) {
        TTBaseAd tTBaseAd = this.f10942a;
        if (tTBaseAd != null) {
            tTBaseAd.setHasShown(z);
        }
    }

    private void a() {
        if (this.f10942a.isExpressAd()) {
            this.f10942a.setGMDrawAdListener(new C0047a());
        } else {
            this.f10942a.setGMDrawAdListener(new b());
        }
    }

    public void a(TTBaseAd tTBaseAd) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().s()) {
            h.a(tTBaseAd, this.b, t.a(Thread.currentThread().getStackTrace()), 2);
        }
    }
}
