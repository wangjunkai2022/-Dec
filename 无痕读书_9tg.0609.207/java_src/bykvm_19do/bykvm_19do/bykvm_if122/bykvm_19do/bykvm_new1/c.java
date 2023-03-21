package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.f0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.o;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.t;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: TTADBidingRequestCore.java */
/* loaded from: classes8.dex */
public abstract class c {
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c d;
    public Map<Integer, List<i>> e;
    public String f;
    public Handler g;
    public AdSlot h;
    public boolean i;
    public boolean j;
    public boolean k;
    public List<Integer> n;
    public int t;
    public GMAdSlotBase w;
    public long y;

    /* renamed from: a  reason: collision with root package name */
    public final AtomicBoolean f10918a = new AtomicBoolean(false);
    public final AtomicBoolean b = new AtomicBoolean(false);
    public final AtomicBoolean c = new AtomicBoolean(false);
    public int l = -1;
    public final List<i> m = new CopyOnWriteArrayList();
    public List<TTBaseAd> o = new CopyOnWriteArrayList();
    public List<TTBaseAd> p = new CopyOnWriteArrayList();
    public List<TTBaseAd> q = new CopyOnWriteArrayList();
    public Map<String, Object> r = new HashMap();
    public h s = new h();
    public AtomicBoolean u = new AtomicBoolean(false);
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h v = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h();
    public final AtomicBoolean x = new AtomicBoolean(false);
    public boolean z = false;
    public int A = 0;
    public Map<String, TTAbsAdLoaderAdapter> B = new ConcurrentHashMap();

    /* compiled from: TTADBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class a implements d.a {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdSlot f10919a;
        public final /* synthetic */ List b;

        public a(AdSlot adSlot, List list) {
            this.f10919a = adSlot;
            this.b = list;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.d.a
        public void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.a aVar) {
            c.this.a(this.f10919a, this.b, aVar);
        }
    }

    /* compiled from: TTADBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f10920a;

        /* compiled from: TTADBidingRequestCore.java */
        /* loaded from: classes8.dex */
        public class a implements d.a {
            public a() {
            }

            @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.d.a
            public void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.a aVar) {
                Map<Integer, List<i>> map = c.this.e;
                List<i> list = map != null ? map.get(0) : null;
                c cVar = c.this;
                cVar.a(cVar.h, list, aVar);
            }
        }

        public b(String str) {
            this.f10920a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.f fVar = (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.f) bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.e.a();
            String str = this.f10920a;
            c cVar = c.this;
            fVar.a(str, cVar.y, cVar.h, cVar.d, new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdSlot adSlot, List<i> list, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.a aVar) {
        List<TTBaseAd> list2;
        List<TTBaseAd> list3;
        AdError adError;
        StringBuilder sb;
        String str;
        List<TTBaseAd> list4;
        List<TTBaseAd> list5;
        if (this.v != null && aVar != null && !TextUtils.isEmpty(aVar.c)) {
            this.v.f10876a = aVar.c;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        String B = cVar != null ? cVar.B() : null;
        if (aVar != null) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(adSlot, aVar.e, aVar.f, B, aVar.c, this.s.g() ? 1 : 0, aVar.g, aVar.h);
        }
        if (aVar == null || f0.a(aVar.f10905a)) {
            this.l = 2;
            if (this.f10918a.get() || this.b.get()) {
                return;
            }
            Cgoto.m1009package(this.f, new StringBuilder(), "serverBidding响应失败了.......... ", "TTMediationSDK");
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    this.s.a((String) null);
                }
            }
            this.s.a(0, true);
            if (this.s.g() || !this.s.f()) {
                A();
            } else {
                Cgoto.m1009package(this.f, new StringBuilder(), "所有广告都已经加载完成....... ", "TTMediationSDK");
                List<TTBaseAd> list6 = this.q;
                if ((list6 == null || list6.size() <= 0) && (((list2 = this.o) == null || list2.size() <= 0) && ((list3 = this.p) == null || list3.size() <= 0))) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar2 = this.d;
                    if (cVar2 == null || !cVar2.H()) {
                        adError = new AdError(AdError.ERROR_CODE_AD_LOAD_FAIL, AdError.getMessage(AdError.ERROR_CODE_AD_LOAD_FAIL));
                        a(adError, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
                    } else {
                        a(new AdError(AdError.ERROR_COED_ADM_ERROR, AdError.getMessage(AdError.ERROR_COED_ADM_ERROR)), (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
                    }
                } else {
                    sb = new StringBuilder();
                    sb.append(TTLogUtil.getTagSecondLevel(this.f));
                    str = "exchange响应失败且所有的广告都已经加载完成，则给出成功回调.....";
                    sb.append(str);
                    Logger.e("TTMediationSDK", sb.toString());
                    q();
                }
            }
        } else {
            this.l = 1;
            if (this.f10918a.get() || this.b.get()) {
                return;
            }
            Handler handler = this.g;
            if (handler != null) {
                handler.removeMessages(4);
                this.g.removeMessages(1);
                this.g.removeMessages(3);
            }
            this.m.clear();
            List<i> list7 = aVar.f10905a;
            if (list7 != null) {
                this.m.addAll(list7);
            }
            a(this.m, this.d.I());
            if (f0.a(this.m)) {
                Cgoto.m1009package(this.f, new StringBuilder(), "serverBidding响应回来..........没有P层，且普通广告全都没有胜出.....直接返回", "TTMediationSDK");
                List<TTBaseAd> list8 = this.q;
                if ((list8 == null || list8.size() <= 0) && (((list4 = this.o) == null || list4.size() <= 0) && ((list5 = this.p) == null || list5.size() <= 0))) {
                    adError = new AdError(AdError.ERROR_CODE_AD_LOAD_FAIL, AdError.getMessage(AdError.ERROR_CODE_AD_LOAD_FAIL));
                    a(adError, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
                } else {
                    if (!this.j) {
                        sb = new StringBuilder();
                        sb.append(TTLogUtil.getTagSecondLevel(this.f));
                        str = "没有client bidding....直接给出成功回调.....";
                    } else if (m()) {
                        sb = new StringBuilder();
                        sb.append(TTLogUtil.getTagSecondLevel(this.f));
                        str = "存在client bidding且满足触发成功回调的条件，则给出成功回调.....";
                    }
                    sb.append(str);
                    Logger.e("TTMediationSDK", sb.toString());
                    q();
                }
            } else {
                Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "serverBidding响应回来..........开始从头开始请求waterFallConfig ");
                a();
            }
        }
        if (aVar == null || !aVar.b) {
            return;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f()).c().b();
    }

    private void c(TTBaseAd tTBaseAd) {
        AdSlot adSlot;
        if (tTBaseAd == null || (adSlot = this.h) == null || !adSlot.isBidNotify()) {
            return;
        }
        if (tTBaseAd.isMultiBiddingAd() || tTBaseAd.isClientBiddingAd() || tTBaseAd.isServerBiddingAd()) {
            tTBaseAd.bidWinNotify(null);
        }
    }

    public void A() {
        StringBuilder sb;
        String str;
        if (s()) {
            if (this.q.size() < i()) {
                for (TTBaseAd tTBaseAd : this.o) {
                    if (a(tTBaseAd) && m()) {
                        sb = new StringBuilder();
                        sb.append(TTLogUtil.getTagSecondLevel(this.f));
                        str = "抛出成功回调_普通层池中广告满足数量，且满足client bidding的返回条件，给出成功回调，直接返回......";
                    }
                }
                return;
            }
            sb = new StringBuilder();
            sb.append(TTLogUtil.getTagSecondLevel(this.f));
            str = "抛出成功回调_P层池中广告满足数量，直接返回......";
            sb.append(str);
            Logger.d("TTMediationSDK", sb.toString());
            q();
        }
    }

    public TTAbsAdLoaderAdapter a(String str, String str2, String str3) {
        return this.B.get(String.format("%1$s_%2$s_%3$s", str, str2, str3));
    }

    public void a() {
        a(0, false);
        A();
    }

    public void a(int i) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h hVar = this.v;
        if (hVar != null) {
            hVar.b = i;
        }
    }

    public abstract void a(int i, boolean z);

    public void a(Context context, AdSlot adSlot, List<i> list, boolean z) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.d a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.e.a();
        if (a2 != null) {
            this.l = 0;
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h hVar = this.v;
            if (hVar != null) {
                hVar.d = true;
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.b bVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.b();
            bVar.f10906a = adSlot;
            bVar.b = list;
            bVar.d = this.d;
            bVar.f = z;
            bVar.e = adSlot != null ? adSlot.getPrimeRitReqType() : 1;
            a2.a(this.B, context, bVar, new a(adSlot, list));
        }
    }

    public void a(AdError adError) {
    }

    public abstract void a(AdError adError, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar);

    public void a(TTBaseAd tTBaseAd, GMAdConstant.BiddingLossReason biddingLossReason) {
        AdSlot adSlot;
        if (tTBaseAd == null || (adSlot = this.h) == null || biddingLossReason == null || !adSlot.isBidNotify()) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("bidding_lose_reason", biddingLossReason);
        tTBaseAd.bidLoseNotify(hashMap);
    }

    public void a(List<TTBaseAd> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            c((TTBaseAd) it.next());
        }
        if (this.p.size() == 0) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(this.p);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            TTBaseAd tTBaseAd = (TTBaseAd) it2.next();
            boolean z = true;
            Iterator<TTBaseAd> it3 = list.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                TTBaseAd next = it3.next();
                if (next != null && tTBaseAd != null && !TextUtils.isEmpty(next.getAdNetworkSlotId()) && next.getAdNetworkSlotId().equals(tTBaseAd.getAdNetworkSlotId())) {
                    z = false;
                    break;
                }
            }
            if (z) {
                a(tTBaseAd, GMAdConstant.BiddingLossReason.LOW_PRICE);
            }
        }
    }

    public void a(List<TTBaseAd> list, AdError adError) {
    }

    public void a(List<i> list, boolean z) {
        if (list == null) {
            list = new ArrayList<>();
        }
        Map<Integer, List<i>> a2 = z ? bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.c.a(list) : bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.c.b(list);
        if (a2 == null) {
            a2 = new HashMap<>();
        }
        this.e = a2;
        ArrayList arrayList = new ArrayList();
        this.n = arrayList;
        arrayList.addAll(this.e.keySet());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.b.a(this.n);
        this.s.b(this.n);
        this.s.a(list, g(), d());
        b(list);
    }

    public void a(boolean z, StackTraceElement[] stackTraceElementArr) {
        if (z) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a((TTBaseAd) null, this.h, t.a(stackTraceElementArr), 3);
        }
    }

    public boolean a(TTBaseAd tTBaseAd) {
        Map<Integer, List<i>> map;
        if (tTBaseAd == null || TextUtils.isEmpty(tTBaseAd.getAdNetworkSlotId()) || !tTBaseAd.isNormalAd() || (map = this.e) == null) {
            return false;
        }
        List<i> list = map.get(Integer.valueOf(tTBaseAd.getLoadSort()));
        if (f0.a(list)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        Collections.sort(arrayList);
        return !f0.b(arrayList) && tTBaseAd.getAdNetworkSlotId().equals(((i) arrayList.get(0)).d());
    }

    public boolean a(String str) {
        if (!TextUtils.isEmpty(str) && p() && w()) {
            for (i iVar : this.m) {
                if (str.equals(iVar.d())) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public GMAdEcpmInfo b() {
        List<TTBaseAd> u;
        if (!bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().p() || (u = u()) == null || u.size() == 0) {
            return null;
        }
        return o.a(u.get(0), false);
    }

    public void b(TTBaseAd tTBaseAd) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().s()) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(tTBaseAd, this.h, t.a(Thread.currentThread().getStackTrace()), 2);
        }
    }

    public void b(String str) {
    }

    public void b(List<i> list) {
        StringBuilder sb;
        String str;
        String str2;
        if (list == null || list.size() == 0) {
            this.o.clear();
            sb = new StringBuilder();
            str = this.f;
            str2 = "没有胜出的普通广告，普通广告被全部过滤掉了 :";
        } else {
            for (TTBaseAd tTBaseAd : this.o) {
                boolean z = true;
                Iterator<i> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    i next = it.next();
                    if (tTBaseAd != null && next != null && tTBaseAd.getAdNetworkSlotId().equals(next.d())) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "已经响应的广告: " + tTBaseAd.getAdNetworkSlotId() + "  没有在severBidding的waterFall列表中，需要被移除掉");
                    this.o.remove(tTBaseAd);
                }
            }
            sb = new StringBuilder();
            str = this.f;
            str2 = "已经响应的广告被serverBidding过滤完还剩: ";
        }
        Cgoto.m999finally(str, sb, str2);
        sb.append(this.o.size());
        Logger.e("TTMediationSDK", sb.toString());
    }

    public List<GMAdEcpmInfo> c() {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().p()) {
            ArrayList arrayList = new ArrayList();
            for (TTBaseAd tTBaseAd : u()) {
                if (tTBaseAd != null) {
                    arrayList.add(o.a(tTBaseAd, false));
                }
            }
            return arrayList;
        }
        return null;
    }

    public void c(String str) {
        ThreadHelper.runOnMSDKThread(new b(str));
    }

    public List<i> d() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar == null || cVar.A() == null || this.d.A().size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (i iVar : this.d.A()) {
            if (iVar != null && (iVar.f() == 1 || iVar.f() == 3)) {
                arrayList.add(iVar);
            }
        }
        return arrayList;
    }

    public void d(String str) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h hVar = this.v;
        if (hVar != null) {
            hVar.c = str;
        }
    }

    public int e() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h hVar = this.v;
        if (hVar != null) {
            return hVar.b;
        }
        return 0;
    }

    public List<GMAdEcpmInfo> f() {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().p()) {
            ArrayList arrayList = new ArrayList();
            for (TTBaseAd tTBaseAd : this.p) {
                if (tTBaseAd != null) {
                    arrayList.add(o.a(tTBaseAd, false));
                }
            }
            return arrayList;
        }
        return null;
    }

    public List<i> g() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar == null || cVar.A() == null || this.d.A().size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (i iVar : this.d.A()) {
            if (iVar != null && iVar.f() == 100) {
                arrayList.add(iVar);
            }
        }
        return arrayList;
    }

    public int h() {
        return -1;
    }

    public int i() {
        AdSlot adSlot = this.h;
        if (adSlot == null) {
            return 1;
        }
        return adSlot.getAdCount();
    }

    public String j() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h hVar = this.v;
        if (hVar == null) {
            return null;
        }
        return hVar.f10876a;
    }

    public String k() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h hVar = this.v;
        if (hVar != null) {
            return hVar.c;
        }
        return null;
    }

    public String l() {
        return this.f;
    }

    public boolean m() {
        return !n() || this.x.get() || this.s.b() == 0;
    }

    public boolean n() {
        return this.j;
    }

    public boolean o() {
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().q();
    }

    public boolean p() {
        return this.i;
    }

    public abstract void q();

    public boolean r() {
        return this.q.size() >= i();
    }

    public boolean s() {
        return this.o.size() + this.q.size() >= i();
    }

    public boolean t() {
        return false;
    }

    public List<TTBaseAd> u() {
        ArrayList arrayList = new ArrayList();
        if (!f0.a(this.o)) {
            arrayList.addAll(this.o);
        }
        if (!f0.a(this.p)) {
            arrayList.addAll(this.p);
        }
        g.a(arrayList, g.c());
        if (!f0.a(this.q)) {
            arrayList.addAll(0, this.q);
        }
        return arrayList;
    }

    public boolean v() {
        return this.k;
    }

    public boolean w() {
        return this.l == 1;
    }

    public boolean x() {
        return this.l > 0;
    }

    public void y() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h hVar;
        if (!p() || (hVar = this.v) == null || TextUtils.isEmpty(hVar.f10876a)) {
            return;
        }
        for (TTBaseAd tTBaseAd : this.q) {
            tTBaseAd.putEventParam("server_bidding_extra", this.v.f10876a);
        }
        for (TTBaseAd tTBaseAd2 : this.p) {
            tTBaseAd2.putEventParam("server_bidding_extra", this.v.f10876a);
        }
        for (TTBaseAd tTBaseAd3 : this.o) {
            tTBaseAd3.putEventParam("server_bidding_extra", this.v.f10876a);
        }
    }

    public void z() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h hVar = this.v;
        if (hVar != null) {
            hVar.b = 2;
        }
    }
}
