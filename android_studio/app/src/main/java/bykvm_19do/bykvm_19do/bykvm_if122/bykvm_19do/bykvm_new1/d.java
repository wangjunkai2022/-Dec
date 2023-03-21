package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1;

import android.app.Activity;
import android.content.Context;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.l;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.o;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.y;
import com.apk.eg;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.TTAdConstant;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomTTBaseAd;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: TTAdHeaderBidingManagerWrapper.java */
/* loaded from: classes8.dex */
public abstract class d extends bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.e {
    public boolean f0;

    /* compiled from: TTAdHeaderBidingManagerWrapper.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ TTBaseAd f10922a;

        public a(TTBaseAd tTBaseAd) {
            this.f10922a = tTBaseAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            TTBaseAd tTBaseAd = this.f10922a;
            if (tTBaseAd == null || !tTBaseAd.adnHasAdVideoCachedApi() || !this.f10922a.isCacheSuccess() || (d.this.N instanceof GMCustomTTBaseAd)) {
                return;
            }
            Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelById(d.this.f, this.f10922a.getAdNetworkSlotId()) + "在show时触发了预加载【" + this.f10922a.getAdNetWorkName() + "】, loadSort: " + this.f10922a.getLoadSort() + ", showSort: " + this.f10922a.getShowSort());
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b d = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d();
            d dVar = d.this;
            d.b(dVar.H, dVar.f, dVar.e());
        }
    }

    /* compiled from: TTAdHeaderBidingManagerWrapper.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ TTBaseAd f10923a;
        public final /* synthetic */ Activity b;
        public final /* synthetic */ Map c;

        public b(TTBaseAd tTBaseAd, Activity activity, Map map) {
            this.f10923a = tTBaseAd;
            this.b = activity;
            this.c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            TTBaseAd tTBaseAd = this.f10923a;
            if (tTBaseAd != null) {
                d.this.N = tTBaseAd;
                tTBaseAd.setHasShown(true);
                d dVar = d.this;
                dVar.N.setTTAdatperCallback(dVar.I);
                d dVar2 = d.this;
                dVar2.N.setTTAdatperRewardPlayAgainCallback(dVar2.J);
                if (d.this.N.canAdReuse()) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a();
                    d dVar3 = d.this;
                    if (a2.c(dVar3.f, dVar3.N.getAdNetworkSlotId(), d.this.e())) {
                        d dVar4 = d.this;
                        TTBaseAd tTBaseAd2 = dVar4.N;
                        dVar4.a(tTBaseAd2, tTBaseAd2.getAdNetworkSlotId());
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append(TTLogUtil.getTagThirdLevelByEvent(d.this.f, TTLogUtil.TAG_EVENT_SHOW));
                sb.append("展示的广告类型：");
                sb.append(eg.m592do(d.this.N.getAdNetworkPlatformId()));
                sb.append(",slotId：");
                sb.append(d.this.N.getAdNetworkSlotId());
                sb.append(",slotType:");
                sb.append(d.this.N.getAdNetworkSlotType());
                sb.append(",isReady()：");
                d dVar5 = d.this;
                sb.append(dVar5.N.isReady(dVar5.f));
                sb.append("，是否为缓存广告:");
                sb.append(d.this.N.isCacheSuccess());
                Logger.d("TTMediationSDK", sb.toString());
                d.this.N.showAd(this.b, this.c);
                m b = m.b();
                b.j(d.this.f + "");
                l b2 = l.b();
                d dVar6 = d.this;
                b2.e(dVar6.f, dVar6.N.getAdNetworkSlotId());
                d dVar7 = d.this;
                dVar7.L = true;
                if (dVar7.N != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(d.this.N);
                    d.this.a(arrayList);
                }
                d dVar8 = d.this;
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(dVar8.N, dVar8.h);
            }
        }
    }

    /* compiled from: TTAdHeaderBidingManagerWrapper.java */
    /* loaded from: classes8.dex */
    public interface c {
        void a();
    }

    public d(Context context, String str) {
        super(context, str);
        this.f0 = false;
    }

    private boolean a(List<i> list, List<TTBaseAd> list2, boolean z, Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e> a2;
        TTBaseAd tTBaseAd;
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e> a3;
        TTBaseAd tTBaseAd2;
        HashMap<String, TTBaseAd> d = d(list2);
        for (i iVar : list) {
            if (iVar != null) {
                String d2 = iVar.d();
                TTBaseAd tTBaseAd3 = d.get(d2);
                if (tTBaseAd3 != null) {
                    if (z) {
                        if (tTBaseAd3.isCacheSuccess()) {
                            Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelById(this.f, tTBaseAd3.getAdNetworkSlotId()) + "弱网情况下已缓存好的广告，广告类型：" + eg.m592do(tTBaseAd3.getAdNetworkPlatformId()) + ",isReady()：" + tTBaseAd3.isReady(this.f));
                            if (tTBaseAd3.isReady(this.f) && !tTBaseAd3.isHasShown()) {
                                a(tTBaseAd3, activity, map);
                                return true;
                            }
                        }
                    } else if (tTBaseAd3.isReady(this.f) && !tTBaseAd3.isHasShown()) {
                        a(tTBaseAd3, activity, map);
                        return true;
                    }
                }
                if (iVar.a() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, d2, e()) && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(d2, this.h, false) == 3 && (a3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(d2, this.h)) != null && a3.size() > 0 && (tTBaseAd2 = a3.get(0).f10900a) != null) {
                    if (z) {
                        if (tTBaseAd2.isCacheSuccess()) {
                            Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelById(this.f, tTBaseAd2.getAdNetworkSlotId()) + "弱网情况下已缓存好的广告，广告类型：" + eg.m592do(tTBaseAd2.getAdNetworkPlatformId()) + ",isReady()：" + tTBaseAd2.isReady(this.f));
                            if (tTBaseAd2.isReady(this.f) && !tTBaseAd2.isHasShown()) {
                                c(tTBaseAd2);
                                a(tTBaseAd2, activity, map);
                                return true;
                            }
                        } else {
                            continue;
                        }
                    } else if (tTBaseAd2.isReady(this.f) && !tTBaseAd2.isHasShown()) {
                        c(tTBaseAd2);
                        a(tTBaseAd2, activity, map);
                        return true;
                    }
                }
            }
        }
        if (z && this.N == null) {
            for (i iVar2 : list) {
                if (iVar2 != null) {
                    String d3 = iVar2.d();
                    TTBaseAd tTBaseAd4 = d.get(d3);
                    if (tTBaseAd4 != null && tTBaseAd4.isReady(this.f) && !tTBaseAd4.isHasShown()) {
                        Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelById(this.f, tTBaseAd4.getAdNetworkSlotId()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + eg.m592do(tTBaseAd4.getAdNetworkPlatformId()) + ",isReady()：" + tTBaseAd4.isReady(this.f));
                        a(tTBaseAd4, activity, map);
                        return true;
                    } else if (iVar2.a() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, d3, e()) && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(d3, this.h, false) == 3 && (a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(d3, this.h)) != null && a2.size() > 0 && (tTBaseAd = a2.get(0).f10900a) != null && tTBaseAd.isReady(this.f) && !tTBaseAd.isHasShown()) {
                        Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelById(this.f, tTBaseAd.getAdNetworkSlotId()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + eg.m592do(tTBaseAd.getAdNetworkPlatformId()) + ",isReady()：" + tTBaseAd.isReady(this.f));
                        c(tTBaseAd);
                        a(tTBaseAd, activity, map);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private boolean i0() {
        boolean e = y.e(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d());
        boolean f = y.f(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d());
        Logger.i("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "setting 下发是否为弱网执行：" + bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().G() + "，当前网络环境：2G-type=" + e + ",3G-type=" + f);
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().G() && (e || f);
    }

    public void a(Activity activity, c cVar) {
        List<i> list;
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e> a2;
        TTBaseAd tTBaseAd;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar2 = this.d;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(this.h, cVar2 != null ? cVar2.B() : null);
        if (this.L || this.b.get()) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a((List<TTBaseAd>) null, this.h);
            if (cVar != null) {
                cVar.a();
                return;
            }
            return;
        }
        List<TTBaseAd> u = u();
        try {
            list = K();
        } catch (Throwable th) {
            th.printStackTrace();
            list = null;
        }
        if (list != null && list.size() > 0) {
            HashMap<String, TTBaseAd> d = d(u);
            for (i iVar : list) {
                if (iVar != null) {
                    String d2 = iVar.d();
                    TTBaseAd tTBaseAd2 = d.get(d2);
                    if (tTBaseAd2 != null && tTBaseAd2.isReady(this.f) && !tTBaseAd2.isHasShown()) {
                        Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_SHOW) + "adSlotId：" + tTBaseAd2.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(tTBaseAd2.getAdNetworkPlatformId()) + ",isReady()：" + tTBaseAd2.isReady(this.f));
                        a(tTBaseAd2, activity, (Map<TTAdConstant.GroMoreExtraKey, Object>) null);
                        return;
                    } else if (iVar.a() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, d2, e()) && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(d2, this.h, false) == 3 && (a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(d2, this.h)) != null && a2.size() > 0 && (tTBaseAd = a2.get(0).f10900a) != null && tTBaseAd.isReady(this.f) && !tTBaseAd.isHasShown()) {
                        Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_SHOW) + "adSlotId：" + tTBaseAd.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(tTBaseAd.getAdNetworkPlatformId()) + ",isReady()：" + tTBaseAd.isReady(this.f));
                        c(tTBaseAd);
                        a(tTBaseAd, activity, (Map<TTAdConstant.GroMoreExtraKey, Object>) null);
                        return;
                    }
                }
            }
        }
        if (u != null && u.size() > 0) {
            for (TTBaseAd tTBaseAd3 : u) {
                if (tTBaseAd3 != null && tTBaseAd3.isReady(this.f) && !tTBaseAd3.isHasShown()) {
                    Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_SHOW) + "adSlotId：" + tTBaseAd3.getAdNetworkSlotId() + "，广告类型：" + eg.m592do(tTBaseAd3.getAdNetworkPlatformId()) + ",isReady()：" + tTBaseAd3.isReady(this.f));
                    a(tTBaseAd3, activity, (Map<TTAdConstant.GroMoreExtraKey, Object>) null);
                    return;
                }
            }
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(u, this.h);
        if (cVar != null) {
            cVar.a();
        }
    }

    public void a(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map, c cVar) {
        char c2;
        char c3;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar2 = this.d;
        List<i> list = null;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(this.h, cVar2 != null ? cVar2.B() : null);
        if (!this.L && !this.b.get()) {
            boolean i0 = i0();
            List<TTBaseAd> u = u();
            try {
                list = K();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            List<i> list2 = list;
            if (list2 == null || list2.size() <= 0 || !a(list2, u, i0, activity, map)) {
                if (u != null && u.size() > 0) {
                    for (TTBaseAd tTBaseAd : u) {
                        if (tTBaseAd != null) {
                            if (i0) {
                                if (tTBaseAd.isCacheSuccess()) {
                                    Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelById(this.f, tTBaseAd.getAdNetworkSlotId()) + "弱网情况下已缓存好的广告，广告类型：" + eg.m592do(tTBaseAd.getAdNetworkPlatformId()) + ",isReady()：" + tTBaseAd.isReady(this.f));
                                } else {
                                    continue;
                                }
                            }
                            if (tTBaseAd.isReady(this.f) && !tTBaseAd.isHasShown()) {
                                a(tTBaseAd, activity, map);
                                return;
                            }
                        }
                    }
                    if (i0 && this.N == null) {
                        for (TTBaseAd tTBaseAd2 : u) {
                            if (tTBaseAd2 != null && tTBaseAd2.isReady(this.f) && !tTBaseAd2.isHasShown()) {
                                Logger.d("TTMediationSDK", TTLogUtil.getTagThirdLevelById(this.f, tTBaseAd2.getAdNetworkSlotId()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + eg.m592do(tTBaseAd2.getAdNetworkPlatformId()) + ",isReady()：" + tTBaseAd2.isReady(this.f));
                                a(tTBaseAd2, activity, map);
                                return;
                            }
                        }
                    }
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(u, this.h);
                if (cVar != null) {
                    cVar.a();
                    return;
                }
                return;
            }
            return;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a((List<TTBaseAd>) null, this.h);
        if (cVar != null) {
            cVar.a();
            c2 = '\t';
            c3 = '/';
        } else {
            c2 = '\n';
            c3 = '7';
        }
        while (true) {
            switch (c2) {
                case '\b':
                case '\n':
                    return;
                case '\t':
                    switch (c3) {
                        case '-':
                        case '.':
                        case '/':
                        default:
                            return;
                    }
                default:
                    c2 = '\b';
            }
        }
    }

    public void a(TTBaseAd tTBaseAd, Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map) {
        ThreadHelper.runOnUiThread(new b(tTBaseAd, activity, map));
    }

    public void a(boolean z) {
        this.f0 = z;
    }

    public void b(Activity activity, Map<TTAdConstant.GroMoreExtraKey, Object> map, c cVar) {
        a(activity, map, cVar);
    }

    public void d(TTBaseAd tTBaseAd) {
        ThreadHelper.runOnUiThread(new a(tTBaseAd));
    }

    public void e0() {
        boolean z;
        boolean z2 = true;
        if (this.N.getAdType() == 10 || this.N.getAdType() == 8 || this.N.getAdType() == 7) {
            if (this.N.adnHasAdVideoCachedApi() && this.N.isCacheSuccess() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a(this.f, e()) != 0) {
                z2 = false;
            }
            z = this.N.getAdNetworkPlatformId() == 4 ? false : z2;
        } else {
            z = true;
        }
        if (this.N.canAdReuse() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, this.N.getAdNetworkSlotId(), e())) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(this.N.getAdNetworkSlotId(), this.h, this.r, z, this.S, this.v, this.H, this.w);
        }
    }

    public boolean f0() {
        return this.f0;
    }

    public boolean g0() {
        List<i> list;
        try {
            list = K();
        } catch (Throwable th) {
            th.printStackTrace();
            list = null;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        return o.a(this.q, this.p, this.o, this.h, this.L, this.b, this.f, e(), list, cVar != null ? cVar.B() : null);
    }

    public void h0() {
        TTBaseAd tTBaseAd = this.N;
        if (tTBaseAd == null || tTBaseAd.getAdNetworkPlatformId() == 4) {
            return;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a(this.H, this.f, e());
    }
}
