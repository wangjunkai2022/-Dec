package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.k;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g;
import com.apk.Cgoto;
import com.apk.eg;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.error.AdFreqError;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.GMNetworkRequestInfo;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;

/* compiled from: AdCacheManager.java */
/* loaded from: classes8.dex */
public class a extends bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.a {
    public static volatile a j;
    public final String[] c = {"unity", "ks"};
    public final Map<String, Integer> d = new HashMap();
    public final Map<String, Integer> e = new HashMap();
    public final Map<String, CopyOnWriteArrayList<e>> f = new ConcurrentHashMap();
    public final Map<String, i> g = new HashMap();
    public final Map<String, String> h = new HashMap();
    public final Map<String, Integer> i = new HashMap();

    /* compiled from: AdCacheManager.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class RunnableC0041a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f10892a;
        public final /* synthetic */ AdSlot b;
        public final /* synthetic */ boolean c;
        public final /* synthetic */ Map d;
        public final /* synthetic */ Context e;
        public final /* synthetic */ GMNetworkRequestInfo f;
        public final /* synthetic */ h g;
        public final /* synthetic */ GMAdSlotBase h;

        public RunnableC0041a(String str, AdSlot adSlot, boolean z, Map map, Context context, GMNetworkRequestInfo gMNetworkRequestInfo, h hVar, GMAdSlotBase gMAdSlotBase) {
            this.f10892a = str;
            this.b = adSlot;
            this.c = z;
            this.d = map;
            this.e = context;
            this.f = gMNetworkRequestInfo;
            this.g = hVar;
            this.h = gMAdSlotBase;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            String str2;
            String str3;
            e eVar;
            List<e> list = (List) a.this.f.get(this.f10892a);
            ArrayList arrayList = new ArrayList();
            if (list != null && list.size() > 0) {
                for (e eVar2 : list) {
                    if (eVar2 != null && eVar2.f10900a.isHasShown()) {
                        list.remove(eVar2);
                        arrayList.add(eVar2);
                    }
                }
            }
            boolean z = false;
            if (Logger.isDebug()) {
                if (arrayList.size() <= 0 || (eVar = (e) arrayList.get(0)) == null) {
                    str = "";
                    str2 = str;
                } else {
                    str2 = eg.m599if(eVar.f10900a.getAdType(), eVar.f10900a.getSubAdType());
                    str = eVar.f10900a.getAdNetWorkName();
                }
                StringBuilder m1004import = Cgoto.m1004import("--==-- 广告复用:show时缓存移除 -----：", str, ", ", str2, ", ");
                m1004import.append(this.f10892a);
                if (arrayList.size() > 0) {
                    StringBuilder m1016super = Cgoto.m1016super(", size: ");
                    m1016super.append(arrayList.size());
                    str3 = m1016super.toString();
                } else {
                    str3 = "移除广告数为0";
                }
                m1004import.append(str3);
                Logger.d("TTMediationSDK", m1004import.toString());
            }
            AdSlot adSlot = this.b;
            String adUnitId = adSlot != null ? adSlot.getAdUnitId() : "";
            AdSlot adSlot2 = this.b;
            boolean z2 = adSlot2 == null || adSlot2.getAdType() == 1;
            if (!bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().a(adUnitId, this.f10892a) && this.c) {
                z = true;
            }
            if (z && !z2 && a.this.d(adUnitId, this.f10892a)) {
                a.this.a(this.f10892a, this.b, this.d, this.e, this.f, this.g, this.h);
                return;
            }
            StringBuilder m1016super2 = Cgoto.m1016super("--==-- 广告复用:show时预请求取消，因为：已发起waterfall预加载，或feed多广告，或未开启adn预加载，或是banner轮播 --: ");
            m1016super2.append(this.f10892a);
            Logger.d("TTMediationSDK", m1016super2.toString());
        }
    }

    private int b(String str, AdSlot adSlot, boolean z) {
        boolean z2;
        int i;
        CopyOnWriteArrayList<e> copyOnWriteArrayList = this.f.get(str);
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            String adUnitId = adSlot != null ? adSlot.getAdUnitId() : "";
            ArrayList arrayList = new ArrayList();
            e eVar = null;
            boolean z3 = false;
            for (e eVar2 : copyOnWriteArrayList) {
                GMAdConstant.AdIsReadyStatus isReadyStatus = eVar2.f10900a.isReadyStatus();
                if (isReadyStatus == GMAdConstant.AdIsReadyStatus.AD_IS_NOT_READY) {
                    z2 = a(adUnitId, eVar2.f10900a);
                } else {
                    z2 = isReadyStatus != GMAdConstant.AdIsReadyStatus.AD_IS_READY;
                }
                if (!z2) {
                    if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.a.a(eVar2.a(), adSlot, eVar2.f10900a)) {
                        StringBuilder m1016super = Cgoto.m1016super("--==-- 广告复用:复用成功：--------");
                        m1016super.append(eVar2.f10900a.getAdNetWorkName());
                        m1016super.append(", adSlotId: ");
                        m1016super.append(str);
                        Logger.d("TTMediationSDK", m1016super.toString());
                        z3 = true;
                    } else {
                        i = 6;
                        StringBuilder m1016super2 = Cgoto.m1016super("--==-- 广告复用:AdSlot不符合 -------: ");
                        m1016super2.append(eVar2.f10900a.getAdNetWorkName());
                        m1016super2.append(", adSlotId: ");
                        m1016super2.append(str);
                        Logger.d("TTMediationSDK", m1016super2.toString());
                    }
                } else {
                    copyOnWriteArrayList.remove(eVar2);
                    i = 5;
                    Logger.d("TTMediationSDK", "--==-- 广告复用:广告过期了 -------: " + eVar2.f10900a.getAdNetWorkName() + ", adSlotId: " + str);
                }
                if (eVar == null) {
                    eVar = eVar2;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.a aVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.a();
                aVar.c(eVar2.f10900a.getLoadSort());
                aVar.e(eVar2.f10900a.getShowSort());
                aVar.b(eVar2.f10900a.getAdNetworkSlotId());
                aVar.d(i);
                aVar.b(eVar2.f10900a.isHasShown() ? 1 : 0);
                arrayList.add(aVar);
            }
            if (z3) {
                return 3;
            }
            if (!z || eVar == null) {
                return 2;
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(adSlot, eVar.f10900a, a(arrayList));
            return 2;
        }
        Logger.d("TTMediationSDK", "--==-- 广告复用:当前没有广告缓存 -------adnSlotId: " + str);
        return 1;
    }

    public boolean c(String str, String str2, int i) {
        if (i == 2) {
            return false;
        }
        Map<String, Integer> map = this.d;
        Integer num = map.get(str + "_" + str2);
        return num != null && num.intValue() == 1;
    }

    public void d(String str, String str2, int i) {
        this.e.put(Cgoto.m996else(str, "_", str2), Integer.valueOf(i));
    }

    public void e(String str, String str2, int i) {
        this.d.put(Cgoto.m996else(str, "_", str2), Integer.valueOf(i));
    }

    public boolean d(String str, String str2) {
        Map<String, Integer> map = this.e;
        Integer num = map.get(str + "_" + str2);
        return num != null && num.intValue() == 1;
    }

    public void e(String str, String str2) {
        this.h.put(str, str2);
    }

    /* compiled from: AdCacheManager.java */
    /* loaded from: classes8.dex */
    public class b implements TTAbsAdLoaderAdapter.AdapterLoaderListener {

        /* renamed from: a  reason: collision with root package name */
        public AdSlot f10893a;

        public b(AdSlot adSlot) {
            this.f10893a = adSlot;
        }

        @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.AdapterLoaderListener
        public void onAdFailed(AdError adError, d dVar) {
            if (adError == null || dVar == null) {
                return;
            }
            StringBuilder m1016super = Cgoto.m1016super("--==-- 广告复用:show时预请求广告缓存失败 --- ");
            m1016super.append(dVar.c());
            m1016super.append(", ");
            m1016super.append(dVar.d());
            m1016super.append(", ");
            m1016super.append(eg.m599if(dVar.b(), dVar.h()));
            m1016super.append(", errCode: ");
            m1016super.append(adError.thirdSdkErrorCode);
            m1016super.append(",msg=");
            m1016super.append(adError.thirdSdkErrorMessage);
            Logger.d("TTMediationSDK", m1016super.toString());
        }

        @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.AdapterLoaderListener
        public void onAdLoaded(TTBaseAd tTBaseAd, d dVar) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(tTBaseAd);
            onAdLoaded(arrayList, dVar);
        }

        @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.AdapterLoaderListener
        public void onAdVideoCache() {
        }

        @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.AdapterLoaderListener
        public void onAdLoaded(List<TTBaseAd> list, d dVar) {
            if (list == null || list.size() <= 0) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (TTBaseAd tTBaseAd : list) {
                if (tTBaseAd != null) {
                    tTBaseAd.setFillTime(SystemClock.elapsedRealtime());
                    arrayList.add(new e(tTBaseAd, dVar, 0L, this.f10893a));
                }
            }
            if (arrayList.size() > 0) {
                TTBaseAd tTBaseAd2 = ((e) arrayList.get(0)).f10900a;
                StringBuilder m1016super = Cgoto.m1016super("--==-- 广告复用:show时预请求广告缓存成功 --- ");
                m1016super.append(tTBaseAd2.getAdNetWorkName());
                m1016super.append(", adType: ");
                m1016super.append(eg.m599if(tTBaseAd2.getAdType(), tTBaseAd2.getSubAdType()));
                m1016super.append(", adnSlotId: ");
                m1016super.append(tTBaseAd2.getAdNetworkSlotId());
                m1016super.append(", ad个数: ");
                m1016super.append(arrayList.size());
                Logger.d("TTMediationSDK", m1016super.toString());
                a.this.a(tTBaseAd2.getAdNetworkSlotId(), arrayList);
            }
        }
    }

    public static a a() {
        if (j == null) {
            synchronized (a.class) {
                if (j == null) {
                    j = new a();
                }
            }
        }
        return j;
    }

    public i c(String str, String str2) {
        Map<String, i> map = this.g;
        return map.get(str + "_" + str2);
    }

    public void a(String str, String str2, i iVar, int i) {
        if (iVar != null) {
            Map<String, i> map = this.g;
            map.put(str + "_" + str2, iVar);
        }
        this.i.put(str2, Integer.valueOf(i));
    }

    public String a(String str) {
        return this.h.get(str);
    }

    public void a(String str, AdSlot adSlot, Map<String, Object> map, boolean z, GMNetworkRequestInfo gMNetworkRequestInfo, h hVar, Context context, GMAdSlotBase gMAdSlotBase) {
        ThreadHelper.runOnMSDKThread(new RunnableC0041a(str, adSlot, z, map, context, gMNetworkRequestInfo, hVar, gMAdSlotBase));
    }

    public void a(String str, List<e> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        CopyOnWriteArrayList<e> copyOnWriteArrayList = this.f.get(str);
        if (copyOnWriteArrayList != null) {
            for (e eVar : list) {
                if (!a(copyOnWriteArrayList, eVar)) {
                    copyOnWriteArrayList.add(eVar);
                }
            }
            return;
        }
        this.f.put(str, new CopyOnWriteArrayList<>(list));
    }

    private boolean a(List<e> list, e eVar) {
        for (e eVar2 : list) {
            if (eVar2 != null && eVar != null && eVar2.f10900a == eVar.f10900a) {
                return true;
            }
        }
        return false;
    }

    public synchronized List<e> a(String str, AdSlot adSlot) {
        CopyOnWriteArrayList<e> copyOnWriteArrayList = this.f.get(str);
        if (copyOnWriteArrayList == null) {
            return null;
        }
        int adCount = adSlot != null ? adSlot.getAdCount() : 1;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; arrayList.size() < adCount && i < copyOnWriteArrayList.size(); i++) {
            if (!copyOnWriteArrayList.get(i).c() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.a.a(copyOnWriteArrayList.get(i).a(), adSlot, copyOnWriteArrayList.get(i).f10900a)) {
                arrayList.add(copyOnWriteArrayList.get(i));
            }
        }
        for (int i2 = 0; arrayList.size() < adCount && i2 < copyOnWriteArrayList.size(); i2++) {
            if (copyOnWriteArrayList.get(i2).c() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.a.a(copyOnWriteArrayList.get(i2).a(), adSlot, copyOnWriteArrayList.get(i2).f10900a)) {
                arrayList.add(copyOnWriteArrayList.get(i2));
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((e) it.next()).a(true);
        }
        return arrayList;
    }

    public synchronized int a(String str, AdSlot adSlot, boolean z) {
        if (b(adSlot != null ? adSlot.getAdUnitId() : "", str) == 0) {
            return b(str, adSlot, z);
        }
        CopyOnWriteArrayList<e> copyOnWriteArrayList = this.f.get(str);
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            e eVar = null;
            ArrayList arrayList = z ? new ArrayList() : null;
            boolean z2 = false;
            for (e eVar2 : copyOnWriteArrayList) {
                int a2 = a(eVar2, eVar2.a(), adSlot, "广告复用");
                if (a2 == -1) {
                    z2 = true;
                } else {
                    if (a2 != 6) {
                        copyOnWriteArrayList.remove(eVar2);
                    }
                    if (z) {
                        if (eVar == null) {
                            eVar = eVar2;
                        }
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.a aVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.a();
                        aVar.c(eVar2.f10900a.getLoadSort());
                        aVar.e(eVar2.f10900a.getShowSort());
                        aVar.b(eVar2.f10900a.getAdNetworkSlotId());
                        aVar.d(a2);
                        aVar.b(eVar2.f10900a.isHasShown() ? 1 : 0);
                        arrayList.add(aVar);
                    }
                }
            }
            if (z2) {
                return 3;
            }
            if (z && eVar != null) {
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(adSlot, eVar.f10900a, a(arrayList));
            }
            return 2;
        }
        Logger.d("TTMediationSDK", "--==-- 广告复用:当前没有广告缓存 -------adnSlotId: " + str);
        return 1;
    }

    private String a(List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.a> list) {
        if (list.size() > 0) {
            StringBuilder sb = new StringBuilder("[");
            for (int i = 0; i < list.size(); i++) {
                sb.append(list.get(i).a());
                if (i == list.size() - 1) {
                    sb.append("]");
                } else {
                    sb.append(",");
                }
            }
            try {
                return new JSONArray(sb.toString()).toString();
            } catch (JSONException e) {
                StringBuilder m1016super = Cgoto.m1016super("--==-- 广告复用：adCannotUseInfo json err: ");
                m1016super.append(e.getMessage());
                Logger.d("TTMediationSDK", m1016super.toString());
            }
        }
        return list.size() > 0 ? "json error" : "[]";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, AdSlot adSlot, Map<String, Object> map, Context context, GMNetworkRequestInfo gMNetworkRequestInfo, h hVar, GMAdSlotBase gMAdSlotBase) {
        String[] strArr;
        if (adSlot == null) {
            Logger.d("TTMediationSDK", "--==-- 广告复用:show时预请求取消，adSlot为空 -------: " + str);
        } else if (context == null) {
            Logger.d("TTMediationSDK", "--==-- 广告复用:show时预请求取消，context为null -------: " + str);
        } else {
            i c = c(adSlot.getAdUnitId(), str);
            String str2 = null;
            if (c != null) {
                try {
                    str2 = g.a(c.q(), g.c(c.e()), eg.m599if(c.t(), c.z()));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            if (!TextUtils.isEmpty(str2) && g.a(str2) && c != null) {
                for (String str3 : this.c) {
                    if (TextUtils.equals(str3, c.e())) {
                        Logger.d("TTMediationSDK", "--==-- 广告复用:show时预请求取消，" + str3 + "为单例模式 -------: " + str);
                        return;
                    }
                }
                int intValue = this.i.get(str) != null ? this.i.get(str).intValue() : -1;
                Logger.d("TTMediationSDK", "--==-- 广告复用:show时预请求开始 -------: " + str);
                TTAbsAdLoaderAdapter b2 = g.b(str2);
                if (b2 != null) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(c, adSlot, 4, 1);
                    if (!k.b().b(adSlot.getAdUnitId(), c.d())) {
                        Logger.d("TMe", "adn 代码位预请求触发次数拦截............");
                        Pair<String, String> d = k.b().d(adSlot.getAdUnitId(), c.d());
                        if (d != null) {
                            AdFreqError adFreqError = new AdFreqError(AdError.ERROR_CODE_ADN_EXCEED_FREQCTL, AdError.getMessage(AdError.ERROR_CODE_ADN_EXCEED_FREQCTL), (String) d.second, (String) d.first);
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(c, adSlot, a().a(c.d()), true, 2, intValue, 4, 1, (AdError) adFreqError, -1L);
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(adFreqError, adSlot, c, intValue, 4, 1, a().a(c.d()), 0L, null, null, null);
                            return;
                        }
                        return;
                    }
                    b2.setAdapterListener(new b(adSlot));
                    b2.loadAdInter(context, c, g.a(c, adSlot, map, gMNetworkRequestInfo, 4, 1, true, -1L), adSlot, hVar, intValue, gMAdSlotBase);
                    Logger.d("TTMediationSDK", "--==-- 广告复用:show时预请求已发完 -------: " + str);
                    return;
                }
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(c, adSlot, 4, 1);
                return;
            }
            Logger.d("TTMediationSDK", "--==-- 广告复用:show时预请求取消，className或wfcBean为空, className: " + str2 + ", wfcBean: " + c + ", adnSlotId: " + str);
        }
    }
}
