package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_try19.a;
import com.apk.Cgoto;
import com.apk.eg;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.TTVideoOptionUtil;
import com.bytedance.msdk.api.v2.ad.draw.GMDrawAd;
import com.bytedance.msdk.api.v2.ad.draw.GMDrawAdLoadCallback;
import com.bytedance.msdk.api.v2.slot.GMAdSlotDraw;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* compiled from: TTInterDrawAdManager.java */
/* loaded from: classes8.dex */
public class f extends e {
    public GMDrawAdLoadCallback f0;

    /* compiled from: TTInterDrawAdManager.java */
    /* loaded from: classes8.dex */
    public class a implements a.c {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ List f10827a;

        public a(List list) {
            this.f10827a = list;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_try19.a.c
        public void a() {
            f.this.L = true;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_try19.a.c
        public void a(GMDrawAd gMDrawAd) {
            int i = 0;
            while (i < this.f10827a.size() && gMDrawAd != this.f10827a.get(i)) {
                i++;
            }
            f.this.a(gMDrawAd, i);
        }
    }

    public f(Context context, String str) {
        super(context, str);
    }

    private List<GMDrawAd> a(List<TTBaseAd> list, int i) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<TTBaseAd> it = list.iterator();
        while (it.hasNext() && arrayList2.size() < i) {
            TTBaseAd next = it.next();
            arrayList.add(next);
            if (Logger.isDebug()) {
                Logger.e("TTMediationSDK", "");
                Logger.e("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_SHOW) + "返回给开发者最终广告：slotId=" + next.getAdNetworkSlotId() + ",slotType:" + next.getAdNetworkSlotType() + ",cpm=" + next.getCpm() + ",广告类型：" + eg.m592do(next.getAdNetworkPlatformId()) + ",ImageMode=" + next.getImageMode() + ",showSort=" + next.getShowSort() + ",isExpressAd=" + next.isExpressAd());
            }
            arrayList2.add(new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_try19.a(next, this.h, new a(arrayList2)));
            it.remove();
        }
        a(arrayList);
        return arrayList2;
    }

    private void a(String str, List<TTBaseAd> list) {
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e> a2;
        TTBaseAd tTBaseAd;
        if (b(str, list) || bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(str, this.h, false) != 3 || (a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(str, this.h)) == null || a2.size() <= 0) {
            return;
        }
        for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e eVar : a2) {
            if (eVar != null && (tTBaseAd = eVar.f10900a) != null && !tTBaseAd.isHasShown() && eVar.f10900a.isReady(this.f)) {
                list.add(eVar.f10900a);
                c(eVar.f10900a);
            }
        }
    }

    private boolean b(String str, List<TTBaseAd> list) {
        if (list == null || list.size() <= 0) {
            return false;
        }
        for (TTBaseAd tTBaseAd : list) {
            if (tTBaseAd != null && TextUtils.equals(str, tTBaseAd.getAdNetworkSlotId())) {
                return true;
            }
        }
        return false;
    }

    private void e0() {
        List<TTBaseAd> list;
        try {
            List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> K = K();
            if (K == null || K.size() <= 0) {
                return;
            }
            for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar : K) {
                if (iVar != null) {
                    String d = iVar.d();
                    if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, d, e())) {
                        if (iVar.f() == 100) {
                            list = this.q;
                        } else if (iVar.f() == 0) {
                            list = this.o;
                        }
                        a(d, list);
                    }
                }
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.a(this.q, (Comparator<TTBaseAd>) null);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.a(this.o, (Comparator<TTBaseAd>) null);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.a(this.p, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.c());
            Logger.d("TMe", "--==-- sorted ok");
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void f(List<TTBaseAd> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.addAll(list);
        list.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TTBaseAd tTBaseAd = (TTBaseAd) it.next();
            if (tTBaseAd != null && !tTBaseAd.isHasShown() && tTBaseAd.isReady(l())) {
                list.add(tTBaseAd);
            }
        }
    }

    private List<GMDrawAd> f0() {
        AdSlot adSlot = this.h;
        if (adSlot == null) {
            return null;
        }
        int adCount = adSlot.getAdCount();
        f(this.q);
        f(this.p);
        f(this.o);
        e0();
        return a(u(), adCount);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void B() {
        super.B();
        this.f0 = null;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void O() {
        List<GMDrawAd> f0;
        if (this.f0 == null || (f0 = f0()) == null || f0.size() <= 0) {
            return;
        }
        if (Logger.isDebug()) {
            StringBuilder m1016super = Cgoto.m1016super("返回给外部开发者的广告数量：sumList.size=");
            m1016super.append(f0.size());
            Logger.e("TTMediationSDK", m1016super.toString());
        }
        for (GMDrawAd gMDrawAd : f0) {
            if (gMDrawAd != null) {
                if (gMDrawAd instanceof bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_try19.a) {
                    ((bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_try19.a) gMDrawAd).a(true);
                }
                if (gMDrawAd.canAdReuse() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, gMDrawAd.getAdNetworkRitId(), e())) {
                    a(gMDrawAd.getTTBaseAd(), gMDrawAd.getAdNetworkRitId());
                }
            }
        }
        this.f0.onAdLoadSuccess(f0);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void P() {
    }

    public void a(AdSlot adSlot, GMAdSlotDraw gMAdSlotDraw, GMDrawAdLoadCallback gMDrawAdLoadCallback) {
        int i;
        AdSlot adSlot2;
        if (d0()) {
            AdSlot shallowCopy = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.b.getShallowCopy(adSlot);
            this.h = shallowCopy;
            if (shallowCopy != null) {
                shallowCopy.setAdType(9);
                if (this.h.getAdCount() <= 0) {
                    adSlot2 = this.h;
                    i = 1;
                } else {
                    i = 3;
                    if (this.h.getAdCount() > 3) {
                        adSlot2 = this.h;
                    }
                    TTVideoOptionUtil.setFeedTTVideoOptionIfNeed(this.h);
                }
                adSlot2.setAdCount(i);
                TTVideoOptionUtil.setFeedTTVideoOptionIfNeed(this.h);
            }
            this.f0 = gMDrawAdLoadCallback;
            this.w = gMAdSlotDraw;
            S();
        }
    }

    public void a(GMDrawAd gMDrawAd, int i) {
        TTBaseAd tTBaseAd = gMDrawAd.getTTBaseAd();
        if (tTBaseAd != null && tTBaseAd.canAdReuse() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, gMDrawAd.getAdNetworkRitId(), e())) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(gMDrawAd.getAdNetworkRitId(), this.h, this.r, i == 0, this.S, this.v, this.H, this.w);
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void b(AdError adError) {
        GMDrawAdLoadCallback gMDrawAdLoadCallback = this.f0;
        if (gMDrawAdLoadCallback != null) {
            gMDrawAdLoadCallback.onAdLoadFail(adError);
        }
    }
}
