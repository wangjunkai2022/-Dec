package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.v2.GMPreloadRequestInfo;
import com.bytedance.msdk.api.v2.ad.AdUtils;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: PreLoadManager.java */
/* loaded from: classes8.dex */
public class b extends bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.a {
    public static volatile b o;
    public final Map<String, Integer> c = new HashMap();
    public final Map<String, Long> d = new HashMap();
    public final Map<String, AdSlot> e = new HashMap();
    public final Map<String, Map<String, List<e>>> f = new HashMap();
    public final Map<String, Map<String, AdError>> g = new HashMap();
    public final Map<String, Boolean> h = new HashMap();
    public final Map<String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.c> i = new HashMap();
    public boolean j = false;
    public int k = 20;
    public List<String> l;
    public int m;
    public int n;

    /* compiled from: PreLoadManager.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f10895a;
        public final /* synthetic */ String b;
        public final /* synthetic */ int c;

        public a(Context context, String str, int i) {
            this.f10895a = context;
            this.b = str;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f10895a, this.b, 2, this.c);
        }
    }

    /* compiled from: PreLoadManager.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class RunnableC0042b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Context f10896a;
        public final /* synthetic */ String b;
        public final /* synthetic */ int c;

        public RunnableC0042b(Context context, String str, int i) {
            this.f10896a = context;
            this.b = str;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f10896a, this.b, 4, this.c);
        }
    }

    /* compiled from: PreLoadManager.java */
    /* loaded from: classes8.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ Activity f10897a;
        public final /* synthetic */ List b;
        public final /* synthetic */ int c;
        public final /* synthetic */ int d;

        public c(Activity activity, List list, int i, int i2) {
            this.f10897a = activity;
            this.b = list;
            this.c = i;
            this.d = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.j) {
                Logger.d("TTMediationSDK", "注意：预加载preload只能调用一次");
            } else if (this.f10897a == null) {
                Logger.d("TTMediationSDK", "预加载preload传入的activity不能是null");
            } else {
                List list = this.b;
                if (list != null && list.size() > 0) {
                    b.this.j = true;
                    b.this.m = this.c;
                    b.this.n = this.d;
                    b.this.l = new ArrayList();
                    for (GMPreloadRequestInfo gMPreloadRequestInfo : this.b) {
                        if (gMPreloadRequestInfo != null && gMPreloadRequestInfo.getPrimeRitList() != null) {
                            b.this.l.addAll(gMPreloadRequestInfo.getPrimeRitList());
                        }
                    }
                    int i = this.c;
                    int i2 = (i < 1 || i > 20) ? 2 : i;
                    int i3 = this.d;
                    int i4 = (i3 < 1 || i3 > 10) ? 2 : i3;
                    List a2 = b.this.a(this.b);
                    if (a2.size() > 0) {
                        new d(this.f10897a, a2, i2, i4).a();
                        return;
                    }
                    return;
                }
                Logger.d("TTMediationSDK", "预加载preload传入的requestInfos不能是null或者size为0");
            }
        }
    }

    /* compiled from: PreLoadManager.java */
    /* loaded from: classes8.dex */
    public class d {

        /* renamed from: a  reason: collision with root package name */
        public final Activity f10898a;
        public final int b;
        public final int c;
        public final List<GMPreloadRequestInfo> d;

        /* compiled from: PreLoadManager.java */
        /* loaded from: classes8.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.a();
            }
        }

        public d(Activity activity, List<GMPreloadRequestInfo> list, int i, int i2) {
            this.f10898a = activity;
            this.d = list;
            this.b = i;
            this.c = i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            GMPreloadRequestInfo remove;
            for (int i = 0; i < this.b; i++) {
                if (this.d.size() > 0 && (remove = this.d.remove(0)) != null) {
                    AdSlot convertGMAdSlotBase2AdSlot = AdUtils.convertGMAdSlotBase2AdSlot(remove.getGmAdSlot());
                    String str = remove.getPrimeRitList().get(0);
                    if (convertGMAdSlotBase2AdSlot == null) {
                        Logger.d("TTMediationSDK", "预加载preload传入的GMAdSlotBase为空，广告位：" + str);
                    } else if (convertGMAdSlotBase2AdSlot.getAdType() == 1) {
                        Logger.d("TTMediationSDK", "预加载preload传入的GMAdSlotBase为banner类型，不支持该类型预加载，广告位: " + str);
                    } else if (convertGMAdSlotBase2AdSlot.getAdType() == 2) {
                        Logger.d("TTMediationSDK", "预加载preload传入的GMAdSlotBase为插屏类型，不支持该类型预加载，广告位: " + str);
                    } else if (convertGMAdSlotBase2AdSlot.getAdType() == 9) {
                        Logger.d("TTMediationSDK", "预加载preload传入的GMAdSlotBase为Draw类型，不支持该类型预加载，广告位: " + str);
                    } else {
                        b.this.a(str, convertGMAdSlotBase2AdSlot);
                        b.this.a(this.f10898a, str, 5, 0);
                    }
                }
            }
            if (this.d.size() > 0) {
                ThreadHelper.postDelayOnMSDKThread(new a(), this.c * 1000);
            }
        }
    }

    private String a(List<i> list, String str, AdSlot adSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.c cVar) {
        List<e> list2;
        if (list.size() <= 0) {
            return null;
        }
        Map<String, List<e>> map = this.f.get(str);
        int i = 0;
        if (map != null && (list2 = map.get(list.get(0).d())) != null && list2.size() > 0 && list2.get(0) != null) {
            e eVar = list2.get(0);
            if (a(eVar, eVar.a(), adSlot, "聚合预请求") == -1) {
                StringBuilder sb = new StringBuilder();
                Cgoto.m999finally(str, sb, "--==-- 命中最优广告： ");
                sb.append(eVar.f10900a.getAdNetWorkName());
                sb.append(", loadSort: ");
                sb.append(eVar.f10900a.getLoadSort());
                sb.append(", showSort: ");
                sb.append(eVar.f10900a.getShowSort());
                Logger.d("TTMediationSDK", sb.toString());
                return null;
            }
        }
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.a> a2 = a(list, str, map, adSlot, cVar);
        if (a2.size() > 0) {
            StringBuilder sb2 = new StringBuilder("[");
            while (i < a2.size()) {
                sb2.append(a2.get(i).a());
                sb2.append(i == a2.size() + (-1) ? "]" : ",");
                i++;
            }
            try {
                String jSONArray = new JSONArray(sb2.toString()).toString();
                Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(str) + "adCannotUseInfo: " + jSONArray);
                return jSONArray;
            } catch (JSONException e) {
                Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(str) + "adCannotUseInfo json err: " + e.getMessage());
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<GMPreloadRequestInfo> a(List<GMPreloadRequestInfo> list) {
        ArrayList arrayList = new ArrayList();
        int i = this.k;
        HashSet hashSet = new HashSet();
        for (GMPreloadRequestInfo gMPreloadRequestInfo : list) {
            if (arrayList.size() >= i) {
                break;
            } else if (gMPreloadRequestInfo != null && gMPreloadRequestInfo.getPrimeRitList() != null) {
                for (String str : gMPreloadRequestInfo.getPrimeRitList()) {
                    if (arrayList.size() >= i) {
                        break;
                    } else if (!TextUtils.isEmpty(str) && !hashSet.contains(str)) {
                        hashSet.add(str);
                        ArrayList arrayList2 = new ArrayList(1);
                        arrayList2.add(str);
                        arrayList.add(new GMPreloadRequestInfo(gMPreloadRequestInfo.getGmAdSlot(), arrayList2));
                    }
                }
            }
        }
        return arrayList;
    }

    private List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.a> a(List<i> list, String str, Map<String, List<e>> map, AdSlot adSlot, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.c cVar) {
        int i;
        int i2;
        TTBaseAd tTBaseAd;
        List<e> list2;
        ArrayList arrayList = new ArrayList();
        int d0 = (cVar.h() == 2 && (cVar instanceof bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.d)) ? ((bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.d) cVar).d0() : 0;
        while (i < list.size() && i < d0) {
            String d2 = list.get(i).d();
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.a aVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.a();
            aVar.b(d2);
            aVar.e(list.get(i).y());
            aVar.c(list.get(i).p());
            e eVar = (map == null || (list2 = map.get(d2)) == null || list2.size() <= 0) ? null : list2.get(0);
            if (eVar == null || (tTBaseAd = eVar.f10900a) == null) {
                Map<String, AdError> map2 = this.g.get(str);
                AdError adError = map2 != null ? map2.get(d2) : null;
                if (adError != null) {
                    aVar.d(3);
                    aVar.a(adError.thirdSdkErrorCode);
                    aVar.a(adError.thirdSdkErrorMessage);
                    arrayList.add(aVar);
                } else {
                    i2 = 4;
                }
            } else {
                aVar.b(tTBaseAd.isHasShown() ? 1 : 0);
                i2 = a(eVar, this.e.get(str), adSlot, "预缓存");
                i = i2 == -1 ? i + 1 : 0;
            }
            aVar.d(i2);
            arrayList.add(aVar);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, int i, int i2) {
        int a2 = a(str, i2);
        if (a2 != 2) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(str) + "--==-- 配置未开启预加载缓存，req_type: " + a2);
        } else if (this.h.get(str) != null && this.h.get(str).booleanValue()) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(str) + "--==-- 已发起过预缓存，还未使用掉，此次不发起");
        } else {
            AdSlot shallowCopy = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.b.getShallowCopy(this.e.get(str));
            if (shallowCopy == null) {
                Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(str) + "--==-- 预缓存取消，adslot为null，rit：" + str);
                return;
            }
            Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(str) + "--==-- 预缓存开始请求, req_type: " + a2);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.d dVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.d(context, str);
            this.i.put(str, dVar);
            this.h.put(str, Boolean.TRUE);
            shallowCopy.setPrimeRitReqType(i);
            dVar.a(shallowCopy);
        }
    }

    private void b(String str, AdSlot adSlot) {
        Map<String, List<e>> map = this.f.get(str);
        if (map != null) {
            for (String str2 : map.keySet()) {
                List<e> list = map.get(str2);
                if (list != null && list.size() > 0 && list.get(0) != null) {
                    e eVar = list.get(0);
                    if (a(eVar, eVar.a(), adSlot, "聚合预缓存") != -1) {
                        map.put(str2, null);
                    }
                }
            }
        }
    }

    public static b d() {
        if (o == null) {
            synchronized (b.class) {
                if (o == null) {
                    o = new b();
                }
            }
        }
        return o;
    }

    public int a() {
        return this.m;
    }

    public int a(String str, int i) {
        Integer num;
        if (i == 2 || (num = this.c.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    public AdSlot a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.e.get(str);
    }

    public void a(int i) {
        this.k = i;
    }

    public void a(Activity activity, List<GMPreloadRequestInfo> list, int i, int i2) {
        ThreadHelper.runOnMSDKThread(new c(activity, list, i, i2));
    }

    public void a(Context context, String str, int i) {
        ThreadHelper.runOnMSDKThread(new a(context, str, i));
    }

    public void a(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.d.put(str, Long.valueOf(j));
    }

    public void a(String str, e eVar) {
        if (d(str) == null || d(str).longValue() == eVar.b()) {
            Map<String, List<e>> map = this.f.get(str);
            String adNetworkSlotId = eVar.f10900a.getAdNetworkSlotId();
            if (map == null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(eVar);
                HashMap hashMap = new HashMap();
                hashMap.put(adNetworkSlotId, arrayList);
                this.f.put(str, hashMap);
                return;
            }
            List<e> list = map.get(adNetworkSlotId);
            if (list != null) {
                list.add(eVar);
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(eVar);
            map.put(adNetworkSlotId, arrayList2);
        }
    }

    public void a(String str, AdSlot adSlot) {
        if (adSlot == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.e.put(str, adSlot);
    }

    public void a(String str, String str2, long j, AdError adError) {
        if (d(str) == null || d(str).longValue() == j) {
            Map<String, AdError> map = this.g.get(str);
            if (map == null) {
                map = new HashMap<>();
                this.g.put(str, map);
            }
            map.put(str2, adError);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:817)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:856)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:160)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:406)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:204)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:138)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00c8 -> B:28:0x00ca). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00ca -> B:30:0x00ce). Please submit an issue!!! */
    public boolean a(java.lang.String r9, com.bytedance.msdk.api.AdSlot r10, java.lang.String r11) {
        /*
            r8 = this;
            java.util.Map<java.lang.String, java.lang.Boolean> r0 = r8.h
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            r0.put(r9, r1)
            java.util.Map<java.lang.String, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.c> r0 = r8.i
            java.lang.Object r0 = r0.get(r9)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.c r0 = (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.c) r0
            r1 = 0
            if (r0 == 0) goto Ldd
            java.util.List r2 = r0.K()
            boolean r3 = com.bytedance.msdk.adapter.util.Logger.isDebug()
            if (r3 == 0) goto L72
            java.util.Iterator r3 = r2.iterator()
        L20:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L72
            java.lang.Object r4 = r3.next()
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i r4 = (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i) r4
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = com.bytedance.msdk.adapter.util.TTLogUtil.getTagSecondLevel(r9)
            r5.append(r6)
            java.lang.String r6 = "waterfall: "
            r5.append(r6)
            java.lang.String r6 = r4.e()
            r5.append(r6)
            java.lang.String r6 = ", loadSort: "
            r5.append(r6)
            int r6 = r4.p()
            r5.append(r6)
            java.lang.String r6 = ", showSort: "
            r5.append(r6)
            int r6 = r4.y()
            r5.append(r6)
            java.lang.String r6 = ", eCpm: "
            r5.append(r6)
            double r6 = r4.i()
            r5.append(r6)
            java.lang.String r4 = r5.toString()
            java.lang.String r5 = "TTMediationSDK"
            com.bytedance.msdk.adapter.util.Logger.d(r5, r4)
            goto L20
        L72:
            java.lang.String r3 = r8.a(r2, r9, r10, r0)
            r8.b(r9, r10)
            java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.util.List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e>>> r4 = r8.f
            java.lang.Object r4 = r4.get(r9)
            java.util.Map r4 = (java.util.Map) r4
            if (r4 == 0) goto Lae
            int r0 = r0.h()
            r5 = 2
            if (r0 != r5) goto Lae
            r0 = 0
        L8b:
            int r5 = r2.size()
            if (r0 >= r5) goto Lae
            java.lang.Object r5 = r2.get(r0)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i r5 = (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i) r5
            java.lang.String r5 = r5.d()
            java.lang.Object r5 = r4.get(r5)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto Lab
            int r5 = r5.size()
            if (r5 <= 0) goto Lab
            r1 = 1
            goto Lae
        Lab:
            int r0 = r0 + 1
            goto L8b
        Lae:
            if (r3 == 0) goto Lc8
            if (r1 == 0) goto Lc0
            java.util.Map<java.lang.String, com.bytedance.msdk.api.AdSlot> r10 = r8.e
            java.lang.Object r9 = r10.get(r9)
            com.bytedance.msdk.api.AdSlot r9 = (com.bytedance.msdk.api.AdSlot) r9
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(r9, r3, r11)
            r9 = 79
            goto Lce
        Lc0:
            r9 = 3
            r10.setPrimeRitReqType(r9)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(r10, r3, r11)
            goto Ldd
        Lc8:
            r9 = 86
        Lca:
            switch(r9) {
                case 85: goto Ldd;
                case 86: goto Ldd;
                case 87: goto Lce;
                default: goto Lcd;
            }
        Lcd:
            goto Lc8
        Lce:
            r10 = 70
        Ld0:
            switch(r10) {
                case 70: goto Ld8;
                case 71: goto Ld4;
                case 72: goto Lca;
                default: goto Ld3;
            }
        Ld3:
            goto Lce
        Ld4:
            switch(r9) {
                case 32: goto Ldd;
                case 33: goto Ld8;
                case 34: goto Ld8;
                default: goto Ld7;
            }
        Ld7:
            goto Lca
        Ld8:
            r10 = 72
            r9 = 85
            goto Ld0
        Ldd:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.a(java.lang.String, com.bytedance.msdk.api.AdSlot, java.lang.String):boolean");
    }

    public List<String> b() {
        return this.l;
    }

    public Map<String, List<e>> b(String str) {
        return this.f.get(str);
    }

    public void b(Context context, String str, int i) {
        ThreadHelper.runOnMSDKThread(new RunnableC0042b(context, str, i));
    }

    public void b(String str, int i) {
        this.c.put(str, Integer.valueOf(i));
    }

    public int c() {
        return this.n;
    }

    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.c c(String str) {
        return this.i.get(str);
    }

    public Long d(String str) {
        return this.d.get(str);
    }

    public List<e> e(String str) {
        ArrayList arrayList = new ArrayList();
        Map<String, List<e>> map = this.f.get(str);
        if (map != null) {
            for (String str2 : map.keySet()) {
                List<e> list = map.get(str2);
                if (list != null && list.size() > 0) {
                    arrayList.addAll(list);
                }
            }
        }
        if (map != null) {
            map.clear();
        }
        Map<String, AdError> map2 = this.g.get(str);
        if (map2 != null) {
            map2.clear();
        }
        return arrayList;
    }
}
