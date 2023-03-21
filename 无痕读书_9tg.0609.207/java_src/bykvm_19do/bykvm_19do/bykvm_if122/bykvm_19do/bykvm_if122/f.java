package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.g;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.f0;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: TTServerBiddingCore.java */
/* loaded from: classes8.dex */
public class f implements d {

    /* compiled from: TTServerBiddingCore.java */
    /* loaded from: classes8.dex */
    public class a implements a.d {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ long f10907a;
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.b b;
        public final /* synthetic */ int[] c;
        public final /* synthetic */ d.a d;

        public a(long j, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.b bVar, int[] iArr, d.a aVar) {
            this.f10907a = j;
            this.b = bVar;
            this.c = iArr;
            this.d = aVar;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.d
        public void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.f fVar) {
            f fVar2 = f.this;
            long j = this.f10907a;
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.b bVar = this.b;
            fVar2.a(j, bVar.f10906a, bVar.d, this.c[0], fVar, this.d);
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.d
        public void a(AdError adError) {
            f.this.a(this.f10907a, this.c[0], adError, this.b.f10906a, this.d);
        }
    }

    /* compiled from: TTServerBiddingCore.java */
    /* loaded from: classes8.dex */
    public class b implements a.d {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ long f10908a;
        public final /* synthetic */ AdSlot b;
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c c;
        public final /* synthetic */ d.a d;

        public b(long j, AdSlot adSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar, d.a aVar) {
            this.f10908a = j;
            this.b = adSlot;
            this.c = cVar;
            this.d = aVar;
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.d
        public void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.f fVar) {
            f.this.a(this.f10908a, this.b, this.c, 4, fVar, this.d);
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.d
        public void a(AdError adError) {
            f.this.a(this.f10908a, 4, adError, this.b, this.d);
        }
    }

    private List<i> a(List<i> list, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar) {
        ArrayList arrayList = null;
        if (list != null && list.size() != 0 && cVar != null && cVar.A() != null && cVar.A().size() != 0) {
            arrayList = new ArrayList();
            for (i iVar : cVar.A()) {
                Iterator<i> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        i next = it.next();
                        if (iVar != null && next != null && iVar.f() == 0 && !TextUtils.isEmpty(iVar.d()) && iVar.d().equals(next.d())) {
                            arrayList.add(iVar);
                            break;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, int i, AdError adError, AdSlot adSlot, d.a aVar) {
        int i2 = (adError == null || adError.code != -1) ? 5 : 4;
        Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(adSlot.getAdUnitId()) + "server bidding网络请求响应失败......onFail  result:" + i2);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.a aVar2 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.a();
        aVar2.e = i2;
        aVar2.f = System.currentTimeMillis() - j;
        aVar2.g = adError;
        if (aVar != null) {
            aVar.a(aVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, AdSlot adSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar, int i, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.f fVar, d.a aVar) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.a aVar2;
        int i2;
        i a2;
        Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(adSlot.getAdUnitId()) + "server bidding网络请求响返回.............");
        long currentTimeMillis = System.currentTimeMillis() - j;
        if (cVar == null || fVar == null || f0.a(fVar.d())) {
            if (fVar == null || f0.a(fVar.c())) {
                r6 = i;
            }
            Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(adSlot.getAdUnitId()) + "server bidding网络请求响应失败......没有返回serverBiddingModel相关数据");
            aVar2 = null;
        } else {
            List<g> d = fVar.d();
            aVar2 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.a();
            aVar2.h = d.size();
            ArrayList arrayList = new ArrayList();
            StringBuilder m1016super = Cgoto.m1016super("winners : {");
            for (g gVar : d) {
                if (gVar != null && (a2 = cVar.a(gVar.h())) != null) {
                    i b2 = a2.b();
                    StringBuilder m1016super2 = Cgoto.m1016super(" [ AdnName:");
                    m1016super2.append(b2.e());
                    m1016super2.append(",slotId:");
                    m1016super2.append(b2.d());
                    m1016super2.append(",loadSort:");
                    m1016super2.append(b2.p());
                    m1016super2.append(",showSort:");
                    m1016super2.append(b2.y());
                    m1016super2.append("] ");
                    m1016super.append(m1016super2.toString());
                    b2.a(gVar);
                    arrayList.add(b2);
                }
            }
            m1016super.append("}");
            if (f0.a(arrayList)) {
                r6 = f0.a(fVar.c()) ? i : 2;
                Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(adSlot.getAdUnitId()) + "server bidding网络请求响应失败......：数据有返回，但没有返回winner数据......");
            } else {
                Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(adSlot.getAdUnitId()) + "server bidding网络请求响应成功......：" + m1016super.toString());
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                copyOnWriteArrayList.addAll(arrayList);
                List<i> a3 = a(fVar.c(), cVar);
                if (a3 == null || a3.size() <= 0) {
                    Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(adSlot.getAdUnitId()) + "server bidding网络请求响应成功......server bidding物料......");
                    i2 = 3;
                } else {
                    Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(adSlot.getAdUnitId()) + "server bidding网络请求响应成功......waterfall+server bidding物料......");
                    copyOnWriteArrayList.addAll(a3);
                    i2 = 1;
                }
                aVar2.f10905a = copyOnWriteArrayList;
                r6 = i2;
            }
        }
        if (fVar != null) {
            String b3 = fVar.b();
            if (!TextUtils.isEmpty(b3)) {
                if (aVar2 == null) {
                    aVar2 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.a();
                }
                aVar2.c = b3;
            }
            if (fVar.e()) {
                Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(adSlot.getAdUnitId()) + "server bidding发现config过期了，需要重新拉取配置......：");
                if (aVar2 == null) {
                    aVar2 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.a();
                }
                aVar2.b = true;
            }
            if (!f0.a(fVar.a())) {
                if (aVar2 == null) {
                    aVar2 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.a();
                }
                aVar2.d = fVar.a();
            }
        }
        if (aVar2 == null) {
            aVar2 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.a();
        }
        aVar2.e = r6;
        aVar2.f = currentTimeMillis;
        if (aVar != null) {
            aVar.a(aVar2);
        }
    }

    public void a(String str, long j, AdSlot adSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar, @NonNull d.a aVar) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.c().a(str, new b(j, adSlot, cVar, aVar));
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.d
    public void a(Map<String, TTAbsAdLoaderAdapter> map, Context context, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_if122.b bVar, @NonNull d.a aVar) {
        if (bVar != null && bVar.f10906a != null && bVar.d != null && !f0.a(bVar.b)) {
            String B = bVar.d.B();
            Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(bVar.f10906a.getAdUnitId()) + "开启server bidding网络请求......：");
            h.a(bVar.f10906a, B);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.c().a(map, context, bVar.f10906a, bVar.b, bVar.c, bVar.d, bVar.e, bVar.f, new a(System.currentTimeMillis(), bVar, new int[]{4}, aVar));
            return;
        }
        aVar.a(null);
        char c = '=';
        while (true) {
            char c2 = 'U';
            char c3 = ']';
            while (true) {
                switch (c2) {
                    case 'T':
                        return;
                    case 'U':
                        if (c3 < 27) {
                            break;
                        } else {
                            c2 = 'T';
                        }
                    case 'V':
                        break;
                    default:
                        c2 = 'T';
                }
                while (true) {
                    switch (c3) {
                        case '%':
                            while (true) {
                                switch (c) {
                                    case 25:
                                    case 26:
                                        break;
                                    case 27:
                                        break;
                                    default:
                                        c = 27;
                                }
                            }
                            break;
                        case '&':
                            break;
                        case '\'':
                            break;
                        default:
                            c3 = '\'';
                    }
                }
                c2 = 'T';
            }
        }
        if (c <= '=') {
        }
        while (true) {
        }
    }
}
