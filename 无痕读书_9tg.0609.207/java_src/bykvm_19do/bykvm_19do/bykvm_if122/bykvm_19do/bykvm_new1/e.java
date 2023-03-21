package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationManagerCompat;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.f0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l0;
import com.apk.Cgoto;
import com.apk.eg;
import com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter;
import com.bytedance.msdk.adapter.config.IGMInitAdnResult;
import com.bytedance.msdk.adapter.listener.ITTAdatperCallback;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.GMAdEcpmInfo;
import com.bytedance.msdk.api.error.AdBreakError;
import com.bytedance.msdk.api.error.AdFreqError;
import com.bytedance.msdk.api.error.AdPacingError;
import com.bytedance.msdk.api.v2.GMNetworkPlatformConst;
import com.bytedance.msdk.api.v2.GMNetworkRequestInfo;
import com.bytedance.msdk.api.v2.ad.custom.base.GMCustomBaseAdapter;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomAdConfig;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBase;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: TTAdHeaderBidingRequestCore.java */
/* loaded from: classes8.dex */
public abstract class e extends bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.c implements TTAbsAdLoaderAdapter.AdapterLoaderListener {
    public long C;
    public long D;
    public long E;
    public long F;
    public bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c G;
    public Context H;
    public ITTAdatperCallback I;
    public ITTAdatperCallback J;
    public TTBaseAd N;
    public GMNetworkRequestInfo S;
    public boolean W;
    public int Z;
    public TTBaseAd a0;
    public volatile boolean K = false;
    public volatile boolean L = false;
    public volatile boolean M = false;
    public final Map<String, TTAbsAdLoaderAdapter> O = new HashMap();
    public int P = NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
    public int Q = NotificationManagerCompat.IMPORTANCE_UNSPECIFIED;
    public final AtomicBoolean R = new AtomicBoolean(false);
    public ConcurrentHashMap<String, AdLoadInfo> T = new ConcurrentHashMap<>();
    public long U = 0;
    public long V = 0;
    public final Map<Integer, List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i>> X = new HashMap();
    public boolean Y = false;
    public final Comparator<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> b0 = new g(this);
    public final Comparator<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> c0 = new h(this);

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f10924a;

        public a(String str) {
            this.f10924a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.b(this.f10924a);
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdError f10925a;

        public b(AdError adError) {
            this.f10925a = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.a(this.f10925a);
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ List f10926a;
        public final /* synthetic */ AdError b;

        public c(List list, AdError adError) {
            this.f10926a = list;
            this.b = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.a(this.f10926a, this.b);
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.P();
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e$e  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class RunnableC0046e implements Runnable {

        /* compiled from: TTAdHeaderBidingRequestCore.java */
        /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e$e$a */
        /* loaded from: classes8.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.P();
            }
        }

        public RunnableC0046e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!e.this.f10918a.get() || e.this.c.get()) {
                return;
            }
            e.this.c.set(true);
            AdSlot adSlot = e.this.h;
            if ((adSlot != null && adSlot.getAdType() == 7) || e.this.h.getAdType() == 8) {
                Logger.w("TTMediationSDK", TTLogUtil.getTagSecondLevel(e.this.f) + "m-sdk----设置 cacheTimeout 已到时间【" + bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().d(e.this.h.getAdUnitId()) + "】，给外部invokeAdVideoCache ...");
            }
            if (e.this.t()) {
                return;
            }
            e.this.f0();
            ThreadHelper.runOnUiThread(new a());
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.P();
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class g implements Comparator<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> {
        public g(e eVar) {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar2) {
            int p;
            int p2;
            if (iVar.p() == iVar2.p()) {
                p = iVar.y();
                p2 = iVar2.y();
            } else {
                p = iVar.p();
                p2 = iVar2.p();
            }
            return p - p2;
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class h implements Comparator<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> {
        public h(e eVar) {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar2) {
            return (iVar.i() > iVar2.i() ? 1 : (iVar.i() == iVar2.i() ? 0 : -1)) >= 0 ? -1 : 1;
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class i extends Handler {
        public i(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e.this.a(message);
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class j extends Handler {
        public j(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e.this.a(message);
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f10933a;
        public final /* synthetic */ StackTraceElement[] b;

        public k(boolean z, StackTraceElement[] stackTraceElementArr) {
            this.f10933a = z;
            this.b = stackTraceElementArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            List<Integer> list;
            Map<Integer, List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i>> map;
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c cVar;
            e.this.U = SystemClock.elapsedRealtime();
            e.this.j0();
            if (!bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.d.f()) {
                Cgoto.m1009package(e.this.f, new StringBuilder(), "MSDK未进行初始化！！！", "TTMediationSDK");
                e.this.e(1);
                e.this.a(new AdBreakError(1, AdError.getMessage(1)), (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
            } else if (e.this.M) {
                Logger.e("TTMediationSDK", "调用过销毁方法_destroy()！！！");
                e.this.e(AdError.ERROR_CODE_DESTROY);
                e.this.a(new AdBreakError(AdError.ERROR_CODE_DESTROY, AdError.getMessage(AdError.ERROR_CODE_DESTROY)), (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
            } else {
                e eVar = e.this;
                if (eVar.H == null) {
                    Logger.e("TTMediationSDK", "Context为null！！！");
                    e.this.e(AdError.ERROR_CODE_CONTEXT_ERROR);
                    e.this.a(new AdBreakError(AdError.ERROR_CODE_CONTEXT_ERROR, AdError.getMessage(AdError.ERROR_CODE_CONTEXT_ERROR)), (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
                } else if (eVar.h == null) {
                    Cgoto.m1009package(e.this.f, new StringBuilder(), "AdSlot can't be null！！", "TTMediationSDK");
                    e.this.e(AdError.ERROR_CODE_ADSLOT_CONFIG_ERROR);
                    e.this.a(new AdBreakError(AdError.ERROR_CODE_ADSLOT_CONFIG_ERROR, AdError.getMessage(AdError.ERROR_CODE_ADSLOT_CONFIG_ERROR)), (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
                } else if (eVar.g == null) {
                    Cgoto.m1009package(e.this.f, new StringBuilder(), "msdk threadHandler can't be null！！", "TTMediationSDK");
                    e.this.e(AdError.ERROR_CODE_MSDK_THREAD_HANDLER);
                    e.this.a(new AdBreakError(AdError.ERROR_CODE_MSDK_THREAD_HANDLER, AdError.getMessage(AdError.ERROR_CODE_MSDK_THREAD_HANDLER)), (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
                } else {
                    if (eVar.d == null && (cVar = eVar.G) != null) {
                        eVar.d = cVar.c(eVar.f);
                        e.this.W();
                        e.this.j0();
                    }
                    e eVar2 = e.this;
                    eVar2.K = true;
                    eVar2.Y();
                    if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.a.b().a()) {
                        Cgoto.m1009package(e.this.f, new StringBuilder(), "请求过于频繁，触发了熔断机制", "TTMediationSDK");
                        e.this.e(AdError.ERROR_CODE_REQUEST_CIRCUIT_BREAKER);
                        e.this.a(new AdBreakError(AdError.ERROR_CODE_REQUEST_CIRCUIT_BREAKER, AdError.getMessage(AdError.ERROR_CODE_REQUEST_CIRCUIT_BREAKER)), (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
                        return;
                    }
                    String a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_this102.a.a(e.this.h.getTestSlotId());
                    if (!TextUtils.isEmpty(a2)) {
                        e.this.z();
                        e eVar3 = e.this;
                        eVar3.d = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_this102.a.a(eVar3.d, a2);
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar2 = e.this.d;
                        int x = cVar2 != null ? cVar2.x() : 0;
                        e.this.W();
                        Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(e.this.f) + "测试工具加载广告........totalWaterFallCount: " + x + "  ,rit_id:" + e.this.f + " ,slot_id:" + a2);
                    }
                    e.this.Z();
                    if (e.this.h.getAdType() == 3 && TextUtils.equals(l0.a(), "com.header.app.untext") && e.this.h.isForceLoadBottom()) {
                        Logger.e("TTMediationSDK", "强制开启开屏兜底...............");
                        e.this.T();
                        return;
                    }
                    e eVar4 = e.this;
                    if (eVar4.d == null) {
                        if (eVar4.h.getAdType() == 3 && !bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().v() && e.this.S != null) {
                            Logger.e("TTMediationSDK", "执行开启开屏兜底...............");
                            e.this.T();
                            return;
                        }
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c cVar3 = e.this.G;
                        if (cVar3 != null && cVar3.d() != null && e.this.G.d().size() != 0) {
                            StringBuilder sb = new StringBuilder();
                            Cgoto.m999finally(e.this.f, sb, "settings config.......注意，AdUnitId = ");
                            sb.append(e.this.h.getAdUnitId());
                            sb.append(" 的配置信息为 null ！！");
                            Logger.e("TTMediationSDK", sb.toString());
                            e.this.e(AdError.ERROR_CODE_REQUEST_BUT_CONFIG_ERROR);
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(e.this.h, 2);
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            Cgoto.m999finally(e.this.f, sb2, "settings config.......没有settings config配置信息,AdUnitId = ");
                            sb2.append(e.this.h.getAdUnitId());
                            Logger.e("TTMediationSDK", sb2.toString());
                            e.this.e(AdError.ERROR_CODE_REQUEST_BUT_CONFIG_ERROR);
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(e.this.h, 1);
                        }
                        e eVar5 = e.this;
                        eVar5.a(eVar5.f, eVar5.R);
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.e();
                        return;
                    }
                    eVar4.t = eVar4.h.getAdCount();
                    e eVar6 = e.this;
                    eVar6.e = eVar6.d.z();
                    e eVar7 = e.this;
                    eVar7.n = new ArrayList(eVar7.d.i());
                    if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().f(e.this.f) && (list = e.this.n) != null && list.size() != 0 && (map = e.this.e) != null && map.size() != 0) {
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m b = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m.b();
                        if (!b.b(e.this.f + "")) {
                            Logger.d("TMe", "广告位 请求触发次数拦截............");
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m b2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m.b();
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.g h = b2.h(e.this.f + "");
                            Pair<String, String> f = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m.b().f(e.this.f);
                            if (h == null || f == null) {
                                return;
                            }
                            AdFreqError adFreqError = new AdFreqError(AdError.ERROR_CODE_EXCEED_FREQCTL, AdError.getMessage(AdError.ERROR_CODE_EXCEED_FREQCTL), (String) f.second, (String) f.first);
                            e.this.e(adFreqError.code);
                            e.this.a(adFreqError, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
                            return;
                        }
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m b3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m.b();
                        if (!b3.c(e.this.f + "") && !e.this.t()) {
                            Logger.d("TMe", "广告位 请求触发时间间隔拦截............");
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m b4 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m.b();
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.i i = b4.i(e.this.f + "");
                            if (i != null) {
                                String message = AdError.getMessage(AdError.ERROR_CODE_EXCEED_PACING);
                                AdPacingError adPacingError = new AdPacingError(AdError.ERROR_CODE_EXCEED_PACING, message, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b.m.b().g(e.this.f) + "", i.j());
                                e.this.e(adPacingError.code);
                                e.this.a(adPacingError, (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
                                return;
                            }
                            return;
                        }
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.b.a(e.this.n);
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b d = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d();
                        e eVar8 = e.this;
                        if (d.a(eVar8.f, eVar8.e()) == 2) {
                            boolean z = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().d(e.this.f) == null;
                            if (!e.this.t() && !z && e.this.R()) {
                                e eVar9 = e.this;
                                eVar9.Y = true;
                                eVar9.N();
                                return;
                            }
                            if (!e.this.t() && !z) {
                                e.this.h.setPrimeRitReqType(3);
                            }
                            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b d2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d();
                            e eVar10 = e.this;
                            d2.a(eVar10.f, eVar10.h);
                        }
                        e.this.e(0);
                        e.this.a(this.f10933a, this.b);
                        e eVar11 = e.this;
                        eVar11.s.a(eVar11.n);
                        e eVar12 = e.this;
                        eVar12.s.e(eVar12.d.x());
                        e eVar13 = e.this;
                        Handler handler = eVar13.g;
                        if (handler != null) {
                            handler.sendEmptyMessageDelayed(2, eVar13.E);
                        }
                        if (e.this.d.H()) {
                            e eVar14 = e.this;
                            eVar14.l = 0;
                            eVar14.s.b(true);
                            e.this.i0();
                        } else {
                            e.this.X();
                        }
                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f()).d();
                        return;
                    }
                    StringBuilder sb3 = new StringBuilder();
                    Cgoto.m999finally(e.this.f, sb3, "settings config.......注意，AdUnitId = ");
                    sb3.append(e.this.h.getAdUnitId());
                    sb3.append("  没有对应的waterfall配置信息");
                    Logger.e("TTMediationSDK", sb3.toString());
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(e.this.h, 3);
                    e.this.e(AdError.ERROR_CODE_REQUEST_BUT_CONFIG_ERROR);
                    e eVar15 = e.this;
                    eVar15.a(eVar15.f, eVar15.R);
                }
            }
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ GMCustomBaseAdapter f10934a;
        public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i b;
        public final /* synthetic */ int c;
        public final /* synthetic */ int d;
        public final /* synthetic */ long e;
        public final /* synthetic */ int f;

        public l(GMCustomBaseAdapter gMCustomBaseAdapter, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, int i, int i2, long j, int i3) {
            this.f10934a = gMCustomBaseAdapter;
            this.b = iVar;
            this.c = i;
            this.d = i2;
            this.e = j;
            this.f = i3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f10934a.loadInner(e.this.H, e.this.h, e.this.w, this.b, e.this.a(this.c, this.d, this.b, this.e), e.this.v, this.f, e.this);
            } catch (Exception e) {
                e eVar = e.this;
                TTBaseAd tTBaseAd = eVar.N;
                AdSlot adSlot = eVar.h;
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar = this.b;
                StringBuilder m1016super = Cgoto.m1016super("自定义Adapter 加载广告内部错误 ");
                m1016super.append(e.getClass().getName());
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a("", tTBaseAd, adSlot, iVar, new AdError(AdError.ERROR_CODE_CUSTOM_LOAD, m1016super.toString()));
                e.printStackTrace();
            }
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f10935a;
        public final /* synthetic */ String b;

        public m(String str, String str2) {
            this.f10935a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.a(this.f10935a, this.b);
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class n implements IGMInitAdnResult {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f10936a;
        public final /* synthetic */ String b;

        public n(String str, String str2) {
            this.f10936a = str;
            this.b = str2;
        }

        @Override // com.bytedance.msdk.adapter.config.IGMInitAdnResult
        public void fail(@NonNull AdError adError) {
        }

        @Override // com.bytedance.msdk.adapter.config.IGMInitAdnResult
        public void success() {
            e.this.a(this.f10936a, this.b);
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class o implements Runnable {
        public o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (e.this.g != null) {
                    e.this.g.removeCallbacksAndMessages(null);
                }
                if (e.this.q != null) {
                    e.this.q.clear();
                }
                if (e.this.o != null) {
                    e.this.o.clear();
                }
                if (e.this.p != null) {
                    e.this.p.clear();
                }
                if (e.this.N != null) {
                    e.this.N.onDestroy();
                }
                if (e.this.O != null) {
                    for (Map.Entry entry : e.this.O.entrySet()) {
                        if (entry != null) {
                            TTAbsAdLoaderAdapter tTAbsAdLoaderAdapter = (TTAbsAdLoaderAdapter) entry.getValue();
                            tTAbsAdLoaderAdapter.setAdapterListener(null);
                            tTAbsAdLoaderAdapter.destroy();
                        }
                    }
                    e.this.O.clear();
                }
                e.this.s.h();
            } catch (Throwable th) {
                if (Logger.isDebug()) {
                    th.printStackTrace();
                }
            }
            e eVar = e.this;
            eVar.I = null;
            eVar.J = null;
            eVar.G = null;
            eVar.e = null;
            eVar.H = null;
            eVar.S = null;
            eVar.M = true;
            if (eVar.K) {
                e.this.a(new AdBreakError(AdError.ERROR_CODE_DESTROY, AdError.getMessage(AdError.ERROR_CODE_DESTROY)), (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
            }
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class p implements Runnable {
        public p() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.O();
        }
    }

    /* compiled from: TTAdHeaderBidingRequestCore.java */
    /* loaded from: classes8.dex */
    public class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdError f10939a;

        public q(AdError adError) {
            this.f10939a = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.b(this.f10939a);
        }
    }

    public e(Context context, String str) {
        Map<Integer, List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i>> z;
        this.H = context;
        this.f = str;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c f2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f();
        this.G = f2;
        if (f2 != null) {
            a(f2.m());
            d(this.G.o());
            this.d = this.G.c(this.f);
            W();
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar != null && (z = cVar.z()) != null) {
            for (Map.Entry<Integer, List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i>> entry : z.entrySet()) {
                List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> value = entry.getValue();
                if (value != null && value.size() > 0 && value.get(0).f() == 100) {
                    this.X.put(entry.getKey(), entry.getValue());
                }
            }
        }
        Looper mSDKThreadLooper = ThreadHelper.getMSDKThreadLooper();
        if (mSDKThreadLooper != null) {
            this.g = new i(mSDKThreadLooper);
            return;
        }
        ThreadHelper.initMSDKThread();
        this.g = new j(ThreadHelper.getMSDKThreadLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> a(int i2, int i3, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, long j2) {
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.a(iVar, this.h, this.r, this.S, i2, i3, !t(), j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        Handler handler;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.a(str2, str, -4, -4);
        if (this.C != 0 && (handler = this.g) != null) {
            handler.removeMessages(3);
            this.g.sendEmptyMessageDelayed(3, this.C);
        }
        a(a2, -1);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f()).d();
    }

    private boolean a(int i2, int i3, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, int i4, long j2) {
        TTAbsAdLoaderAdapter c2 = c(iVar);
        if (c2 == null) {
            a(iVar, i2, i3);
            Cgoto.m1009package(this.f, new StringBuilder(), " 创建TTAbsAdLoaderAdapter失败", "TTMediationSDK");
            return false;
        } else if (this.H == null) {
            a(iVar, i2, i3);
            return false;
        } else {
            c2.setAdapterListener(this);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h hVar = this.v;
            if (hVar != null) {
                iVar.h(hVar.f10876a);
            }
            if (iVar.f() == 2 && iVar.x() != null) {
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(iVar, this.h, c2.getSdkVersion());
            }
            c2.loadAdInter(this.H, iVar, a(i2, i3, iVar, j2), this.h, this.v, i4, this.w);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(this.f, iVar.d(), iVar, i4);
            return true;
        }
    }

    private boolean a(Class<?> cls, Class<?> cls2, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar) {
        String b2;
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.c.a(cls, cls2)) {
            b2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.c.b(cls, cls2);
        } else {
            StringBuilder m1016super = Cgoto.m1016super("自定义ADN初始化对象失败  ---------  初始化类 ");
            m1016super.append(cls.getSimpleName());
            m1016super.append(" 需要继承自自定义ADN的广告对象基类 ");
            m1016super.append(cls2.getSimpleName());
            b2 = m1016super.toString();
        }
        if (TextUtils.isEmpty(b2)) {
            return true;
        }
        Logger.e("TTMediationSDK_SDK_Init", b2);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a("", this.N, this.h, iVar, new AdError(AdError.ERROR_CODE_CUSTOM_LOAD, b2));
        return false;
    }

    private boolean a(String str, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, int i2) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(this.f, str, iVar, i2);
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e> a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(str, this.h);
        if (a2 == null || a2.size() <= 0) {
            return false;
        }
        TTBaseAd tTBaseAd = a2.get(0).f10900a;
        AdSlot adSlot = this.h;
        int mediationRitReqType = tTBaseAd.getMediationRitReqType(adSlot != null ? adSlot.getLinkedId() : null);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.b(iVar, this.h, 3, mediationRitReqType);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(iVar, this.h, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(str), !t(), 1, i2, 3, mediationRitReqType, (AdError) null, -1L);
        ArrayList arrayList = new ArrayList();
        for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e eVar : a2) {
            eVar.f10900a.setMediationRitReqType(3);
            eVar.f10900a.setMediationRitReqTypeSrc(mediationRitReqType);
            a(eVar.f10900a, str);
            arrayList.add(eVar.f10900a);
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(a2.get(0).f10900a, 0, "adn cache命中", 0L, this.h, i2, arrayList.size(), 2, (String) null, -1L);
        onAdLoaded(arrayList, a2.get(0).b);
        return true;
    }

    private int a0() {
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> list;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        int i2 = 0;
        if (cVar == null) {
            return 0;
        }
        Map<Integer, List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i>> z = cVar.z();
        if (z != null && z.size() != 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(z.keySet());
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (this.s.c(num.intValue()) && (list = z.get(num)) != null) {
                    i2 += list.size();
                }
            }
        }
        return i2;
    }

    private TTBaseAd b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar) {
        if (iVar == null) {
            return null;
        }
        String d2 = iVar.d();
        String c2 = iVar.x() != null ? iVar.x().c() : null;
        if (TextUtils.isEmpty(d2)) {
            return null;
        }
        for (TTBaseAd tTBaseAd : this.q) {
            if (tTBaseAd != null && d2.equals(tTBaseAd.getAdNetworkSlotId())) {
                return tTBaseAd;
            }
        }
        for (TTBaseAd tTBaseAd2 : this.o) {
            if (tTBaseAd2 != null && d2.equals(tTBaseAd2.getAdNetworkSlotId())) {
                return tTBaseAd2;
            }
        }
        for (TTBaseAd tTBaseAd3 : this.p) {
            if (tTBaseAd3 != null) {
                if (!tTBaseAd3.isServerBiddingAd() || TextUtils.isEmpty(c2) || TextUtils.isEmpty(tTBaseAd3.getAid())) {
                    if (d2.equals(tTBaseAd3.getAdNetworkSlotId())) {
                        return tTBaseAd3;
                    }
                } else if (d2.equals(tTBaseAd3.getAdNetworkSlotId()) && c2.equals(tTBaseAd3.getAid())) {
                    return tTBaseAd3;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Not initialized variable reg: 16, insn: 0x010a: MOVE  (r4 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY]), block:B:35:0x010a */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x010e: MOVE  (r4 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY]), block:B:37:0x010e */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x0112: MOVE  (r4 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY]), block:B:39:0x0112 */
    private boolean b(int i2, int i3, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, int i4, long j2) {
        String str;
        GMCustomAdConfig className;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6 = null;
        String str7 = "";
        if (this.w == null) {
            Logger.e("TTMediationSDK_SDK_Init", "自定义Adapter 老API不支持自定义Adapter，请使用新的API");
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a("", this.N, this.h, iVar, new AdError(AdError.ERROR_CODE_CUSTOM_LOAD, "自定义Adapter 老API不支持自定义Adapter，请使用新的API"));
            return false;
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a aVar = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().c().get(iVar.e());
        if (aVar == null) {
            a(iVar, i2, i3);
            str5 = "自定义Adapter 配置为空";
        } else {
            Logger.i("TTMediationSDK_SDK_Init", "自定义Adapter 获取配置wfcBean = " + iVar);
            try {
                className = aVar.c().getClassName(iVar.t(), iVar.z());
            } catch (ClassNotFoundException e) {
                e = e;
                str6 = "TTMediationSDK_SDK_Init";
                str = "";
            }
            if (className != null) {
                Class<?> cls = Class.forName(className.getClassName());
                try {
                    if (a(cls, className.getClazz(), iVar)) {
                        try {
                            Object newInstance = cls.newInstance();
                            try {
                                if (newInstance instanceof GMCustomBaseAdapter) {
                                    GMCustomBaseAdapter gMCustomBaseAdapter = (GMCustomBaseAdapter) newInstance;
                                    Logger.i("TTMediationSDK_SDK_Init", "自定义Adapter 反射创建初始化对象为 " + gMCustomBaseAdapter);
                                    if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.a(iVar.e()) != null) {
                                        ThreadHelper.runOnThreadPool(new l(gMCustomBaseAdapter, iVar, i2, i3, j2, i4));
                                        return true;
                                    }
                                    Logger.e("TTMediationSDK_SDK_Init", "自定义Adapter 创建广告对象失败  ---------  没有初始化，不能加载广告，请检查初始化配置");
                                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a("", this.N, this.h, iVar, new AdError(AdError.ERROR_CODE_CUSTOM_LOAD, "自定义Adapter 创建广告对象失败  ---------  没有初始化，不能加载广告，请检查初始化配置"));
                                    str6 = "TTMediationSDK_SDK_Init";
                                    str = "";
                                } else {
                                    str6 = "TTMediationSDK_SDK_Init";
                                    String str8 = "自定义ADN 创建广告对象失败  ---------  对象类型错误  对象类型为 " + GMCustomBaseAdapter.class.getName();
                                    Logger.e(str6, str8);
                                    str = "";
                                    try {
                                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(str, this.N, this.h, iVar, new AdError(AdError.ERROR_CODE_CUSTOM_LOAD, str8));
                                    } catch (IllegalAccessException e2) {
                                        e = e2;
                                        e.printStackTrace();
                                        str7 = "自定义Adapter IllegalAccessException";
                                        Logger.e(str6, str7);
                                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(str, this.N, this.h, iVar, new AdError(AdError.ERROR_CODE_CUSTOM_LOAD, str7));
                                        a(iVar, i2, i3);
                                        return false;
                                    } catch (InstantiationException e3) {
                                        e = e3;
                                        e.printStackTrace();
                                        str7 = "自定义Adapter InstantiationException";
                                        Logger.e(str6, str7);
                                        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(str, this.N, this.h, iVar, new AdError(AdError.ERROR_CODE_CUSTOM_LOAD, str7));
                                        a(iVar, i2, i3);
                                        return false;
                                    }
                                }
                                a(iVar, i2, i3);
                                return true;
                            } catch (ClassNotFoundException e4) {
                                e = e4;
                                str = str4;
                                e.printStackTrace();
                                str7 = "自定义Adapter ClassNotFoundException";
                                Logger.e(str6, str7);
                                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(str, this.N, this.h, iVar, new AdError(AdError.ERROR_CODE_CUSTOM_LOAD, str7));
                                a(iVar, i2, i3);
                                return false;
                            } catch (IllegalAccessException e5) {
                                e = e5;
                                str = str3;
                            } catch (InstantiationException e6) {
                                e = e6;
                                str = str2;
                            }
                        } catch (IllegalAccessException e7) {
                            e = e7;
                            str6 = "TTMediationSDK_SDK_Init";
                            str = "";
                        } catch (InstantiationException e8) {
                            e = e8;
                            str6 = "TTMediationSDK_SDK_Init";
                            str = "";
                        }
                    } else {
                        str6 = "TTMediationSDK_SDK_Init";
                        str = "";
                    }
                } catch (ClassNotFoundException e9) {
                    e = e9;
                }
                Logger.e(str6, str7);
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(str, this.N, this.h, iVar, new AdError(AdError.ERROR_CODE_CUSTOM_LOAD, str7));
                a(iVar, i2, i3);
                return false;
            }
            str5 = "自定义Adapter 配置的className为空，无法反射创建自定义广告Adapter对象 ";
        }
        str6 = "TTMediationSDK_SDK_Init";
        str = "";
        str7 = str5;
        Logger.e(str6, str7);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(str, this.N, this.h, iVar, new AdError(AdError.ERROR_CODE_CUSTOM_LOAD, str7));
        a(iVar, i2, i3);
        return false;
    }

    private boolean b0() {
        List<TTBaseAd> list = this.q;
        if (list != null) {
            for (TTBaseAd tTBaseAd : list) {
                if (tTBaseAd.isCacheSuccess()) {
                    return true;
                }
            }
        }
        List<TTBaseAd> list2 = this.p;
        if (list2 != null) {
            for (TTBaseAd tTBaseAd2 : list2) {
                if (tTBaseAd2.isCacheSuccess()) {
                    return true;
                }
            }
        }
        List<TTBaseAd> list3 = this.o;
        if (list3 != null) {
            for (TTBaseAd tTBaseAd3 : list3) {
                if (tTBaseAd3.isCacheSuccess()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private TTAbsAdLoaderAdapter c(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar) {
        if (iVar != null) {
            return (TextUtils.equals("baidu", iVar.e()) && iVar.G()) ? a(this.h.getLinkedId(), this.f, iVar.d()) : bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.a(this.f, iVar);
        }
        Logger.i("TTMediationSDK", "wfcBean is null getTTAbsAdLoaderAdapter fail");
        return null;
    }

    private boolean c0() {
        return !t();
    }

    private void d(AdError adError) {
        this.W = true;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.h, adError, cVar != null ? cVar.B() : null, j());
    }

    private boolean d0() {
        return t() && h() == 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0102 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00a3 -> B:27:0x00a9). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0102 -> B:55:0x0104). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e0() {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e.e0():void");
    }

    private TTBaseAd f(List<TTBaseAd> list) {
        TTBaseAd tTBaseAd = null;
        if (list != null && list.size() != 0) {
            for (TTBaseAd tTBaseAd2 : list) {
                if (tTBaseAd == null || tTBaseAd2.getFillTime() < tTBaseAd.getFillTime()) {
                    tTBaseAd = tTBaseAd2;
                }
            }
        }
        return tTBaseAd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f0() {
        AdSlot adSlot = this.h;
        if ((adSlot == null || adSlot.getAdType() != 7) && this.h.getAdType() != 8) {
            return;
        }
        AdSlot adSlot2 = this.h;
        TTBaseAd tTBaseAd = this.N;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.V;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(adSlot2, tTBaseAd, elapsedRealtime, cVar != null ? cVar.B() : null);
    }

    private List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> g(List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> it = list.iterator();
        while (it.hasNext()) {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i next = it.next();
            if (next.F()) {
                it.remove();
                arrayList2.add(next);
            } else if (next.G() || next.E() || next.B()) {
                it.remove();
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i();
                iVar.a(next.d());
                iVar.c(next.f());
                iVar.b(next.e());
                iVar.a(next.c());
                iVar.g(next.q());
                iVar.g(next.p());
                iVar.j(next.y());
                iVar.i(next.t());
                iVar.e("" + next.i());
                iVar.f(next.j());
                iVar.i(next.A());
                iVar.h(next.u());
                iVar.a(next.x());
                TTBaseAd b2 = b(iVar);
                if (b2 != null) {
                    StringBuilder m1016super = Cgoto.m1016super("");
                    m1016super.append(b2.getBiddingCpmWithOutExchangeRate());
                    iVar.e(m1016super.toString());
                }
                arrayList.add(iVar);
            }
        }
        list.addAll(arrayList);
        Collections.sort(list, this.c0);
        Collections.sort(arrayList2, this.b0);
        list.addAll(0, arrayList2);
        return list;
    }

    private void g0() {
        if (this.g != null) {
            if (!b0()) {
                this.g.postDelayed(new RunnableC0046e(), bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().d(this.h.getAdUnitId()));
            } else if (!this.f10918a.get() || this.c.get()) {
            } else {
                this.c.set(true);
                AdSlot adSlot = this.h;
                if ((adSlot != null && adSlot.getAdType() == 7) || this.h.getAdType() == 8) {
                    Logger.w("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "从onAdLoaded给外部invokeAdVideoCache ...");
                }
                if (t()) {
                    return;
                }
                f0();
                ThreadHelper.runOnUiThread(new d());
            }
        }
    }

    private void h0() {
        Handler handler = this.g;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0() {
        this.y = System.currentTimeMillis();
        Map<Integer, List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i>> map = this.e;
        if (map == null) {
            c(new AdError(AdError.ERROR_CODE_NO_CONFIG, AdError.getMessage(AdError.ERROR_CODE_NO_CONFIG)));
            return;
        }
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> list = map.get(0);
        if (f0.a(list)) {
            c(new AdError(AdError.ERROR_CODE_NO_CONFIG, AdError.getMessage(AdError.ERROR_CODE_NO_CONFIG)));
            return;
        }
        e(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_goto109.a.c().a(this.B, this.H, this.h, list, this.d, this.h.getPrimeRitReqType(), !t()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0() {
        AdSlot adSlot = this.h;
        if (adSlot == null || this.d == null) {
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("network_ad_num_");
        m1016super.append(this.d.b());
        adSlot.setNetWorkNum(m1016super.toString());
        GMAdSlotBase gMAdSlotBase = this.w;
        if (gMAdSlotBase != null) {
            StringBuilder m1016super2 = Cgoto.m1016super("network_ad_num_");
            m1016super2.append(this.d.b());
            gMAdSlotBase.setNetWorkNum(m1016super2.toString());
        }
    }

    public void B() {
        ThreadHelper.runOnMSDKThread(new o());
    }

    public List<AdLoadInfo> C() {
        AdLoadInfo value;
        ArrayList arrayList = new ArrayList(this.T.size());
        for (Map.Entry<String, AdLoadInfo> entry : this.T.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null && !TextUtils.equals(AdLoadInfo.AD_LOADED, value.getErrMsg()) && !TextUtils.equals(AdLoadInfo.AD_LOADING, value.getErrMsg())) {
                arrayList.add(value);
            }
        }
        return arrayList;
    }

    public ConcurrentHashMap<String, AdLoadInfo> D() {
        return this.T;
    }

    public int E() {
        TTBaseAd tTBaseAd = this.N;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdNetworkPlatformId();
        }
        return -2;
    }

    public String F() {
        TTBaseAd tTBaseAd = this.N;
        if (tTBaseAd != null) {
            return tTBaseAd.getAdNetworkSlotId();
        }
        return null;
    }

    public Map<String, Object> G() {
        TTBaseAd tTBaseAd = this.N;
        return tTBaseAd != null ? tTBaseAd.getMediaExtraInfo() : new HashMap();
    }

    public String H() {
        if (this.N == null) {
            return null;
        }
        return (o() || !(this.N.isServerBiddingAd() || this.N.isClientBiddingAd() || this.N.isMultiBiddingAd())) ? this.N.getNetWorkPlatFormCpm() : GMNetworkPlatformConst.AD_NETWORK_NO_PERMISSION;
    }

    public int I() {
        return this.Z;
    }

    public GMAdEcpmInfo J() {
        TTBaseAd tTBaseAd = this.N;
        if (tTBaseAd == null) {
            return null;
        }
        return bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.o.a(tTBaseAd, true);
    }

    public List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> K() {
        boolean z;
        ArrayList arrayList = new ArrayList();
        if (this.M) {
            return arrayList;
        }
        List<Integer> list = this.n;
        int i2 = 0;
        if (list == null || list.size() <= 0) {
            z = false;
        } else {
            int i3 = 0;
            z = false;
            while (i2 < list.size()) {
                int intValue = list.get(i2).intValue();
                if (intValue == -100) {
                    i3 = 1;
                }
                if (intValue < -100) {
                    z = true;
                }
                if (this.e.get(Integer.valueOf(intValue)) != null) {
                    arrayList.addAll(this.e.get(Integer.valueOf(intValue)));
                }
                i2++;
            }
            i2 = i3;
        }
        if (i2 == 0 && n() && !f0.b(this.p)) {
            for (TTBaseAd tTBaseAd : this.p) {
                if (this.d != null && (tTBaseAd.isMultiBiddingAd() || tTBaseAd.isClientBiddingAd())) {
                    bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i a2 = this.d.a(tTBaseAd.getAdNetworkSlotId());
                    if (a2 != null) {
                        arrayList.add(a2);
                    }
                }
            }
        }
        if (!z) {
            List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> g2 = g();
            if (!f0.a(g2)) {
                arrayList.addAll(g2);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (((bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i) it.next()) == null) {
                it.remove();
            }
        }
        if (p() || n()) {
            return g(arrayList);
        }
        Collections.sort(arrayList, this.b0);
        return arrayList;
    }

    public void L() {
        Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "超过当前层最短加载时间.....");
        if (this.f10918a.get() || this.b.get()) {
            return;
        }
        if (r()) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "超过当前层最短加载时间....有P层广告回调成功出去....");
            q();
        }
        if (p() && !x()) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "超过当前层最短加载时间.....  当前有serverBidding广告，serverBidding请求还未发起或者还没有返回.......");
        } else if (s() && m()) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "超过当前层最短加载时间且满足client bidding限制条件....有广告回调成功出去....");
            q();
        }
    }

    public void M() {
        List<TTBaseAd> list;
        List<TTBaseAd> list2;
        this.s.a(true);
        V();
        if (this.f10918a.get() || this.b.get()) {
            return;
        }
        List<TTBaseAd> list3 = this.q;
        if ((list3 == null || list3.size() <= 0) && (((list = this.o) == null || list.size() <= 0) && ((list2 = this.p) == null || list2.size() <= 0))) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "总加载时间超时.......没有广告回调失败");
            a(new AdError(AdError.LOAD_AD_TIME_OUT_ERROR, AdError.getMessage(AdError.LOAD_AD_TIME_OUT_ERROR)), (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
            return;
        }
        Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "总加载时间超时.......有广告回调成功");
        q();
    }

    public void N() {
        AdSlot a2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a(this.f);
        if (a2 != null) {
            this.h.setLinkedId(a2.getLinkedId());
            this.h.setPrimeRitReqType(a2.getPrimeRitReqType());
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a(this.f, this.h);
        e(0);
        e((List<TTBaseAd>) null);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.c c2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().c(this.f);
        if (c2 != null) {
            this.v = c2.v;
            this.T = c2.D();
        }
        q();
    }

    public abstract void O();

    public abstract void P();

    public void Q() {
        AdSlot adSlot = this.h;
        if ((adSlot != null && adSlot.getAdType() == 7) || this.h.getAdType() == 8) {
            Logger.w("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "广告缓存成功！给外部回调：invokeAdVideoCacheOnMainUI........");
        }
        if (t()) {
            return;
        }
        f0();
        ThreadHelper.runOnUiThread(new f());
    }

    public boolean R() {
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e> e;
        StringBuilder sb = new StringBuilder();
        Cgoto.m999finally(this.f, sb, "mLoadSortList: ");
        sb.append(this.n);
        Logger.d("TTMediationSDK", sb.toString());
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a(this.f, this.h, cVar != null ? cVar.B() : null) && (e = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().e(this.f)) != null && e.size() > 0) {
            for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e eVar : e) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(eVar.f10900a);
                c(arrayList);
            }
            if (this.q.size() > 0 || this.p.size() > 0 || this.o.size() > 0) {
                Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "--==-- hit cache!!! -----");
                return true;
            }
        }
        Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "--==-- not hit cache!!! -----");
        return false;
    }

    public void S() {
        boolean s = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f().s();
        ThreadHelper.runOnMSDKThread(new k(s, s ? Thread.currentThread().getStackTrace() : null));
    }

    public void T() {
        if (this.S != null) {
            StringBuilder sb = new StringBuilder();
            Cgoto.m999finally(this.f, sb, "settings config.......AdUnitId = ");
            sb.append(this.f);
            sb.append("  开屏广告走了开发者自定义兜底方案   adnName:");
            sb.append(eg.m592do(this.S.getAdNetworkFlatFromId()));
            Logger.e("TTMediationSDK", sb.toString());
        }
        e(AdError.ERROR_CODE_CONFIG_ERROR);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.h, -4);
        e0();
    }

    public void U() {
        List<TTBaseAd> list;
        List<TTBaseAd> list2;
        if (this.s.b() != 0 || this.x.get()) {
            return;
        }
        this.g.removeMessages(5);
        if (p() && x()) {
            if (s()) {
                Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "SeverBidding广告成功返回...所有的ClientBidding都有返回结果且没有到达其层超时...当前广告池中广告数量满足要求...直接返回......");
                q();
            }
            if (this.s.g() || !this.s.f()) {
                return;
            }
            Cgoto.m1009package(this.f, new StringBuilder(), "所有广告都已经加载完成....... ", "TTMediationSDK");
            List<TTBaseAd> list3 = this.q;
            if ((list3 == null || list3.size() <= 0) && (((list = this.o) == null || list.size() <= 0) && ((list2 = this.p) == null || list2.size() <= 0))) {
                a(new AdError(AdError.ERROR_CODE_AD_LOAD_FAIL, AdError.getMessage(AdError.ERROR_CODE_AD_LOAD_FAIL)), (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
                return;
            }
            Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "SeverBidding广告返回且到达ClientBidding的等待时间，所有广告都有返回结果...直接返回......");
            q();
        }
    }

    public void V() {
        TTAbsAdLoaderAdapter value;
        for (Map.Entry<String, TTAbsAdLoaderAdapter> entry : this.O.entrySet()) {
            if (entry != null && (value = entry.getValue()) != null) {
                value.setTotalTimedOut(true);
            }
        }
    }

    public void W() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar != null) {
            cVar.e();
            this.C = this.d.j();
            this.D = this.d.h();
            this.E = this.d.w();
            this.F = this.d.l();
            this.j = this.d.E();
            this.i = this.d.F();
            this.k = this.d.k() == 0;
            this.d.m();
            this.Z = this.d.o();
            StringBuilder sb = new StringBuilder();
            Cgoto.m999finally(this.f, sb, "mRitConfig=");
            sb.append(this.d.toString());
            Logger.d("TTMediationSDK", sb.toString());
        }
    }

    public void X() {
        a(0, false);
    }

    public void Y() {
        this.N = null;
        this.R.set(false);
        this.u.set(false);
        this.p.clear();
        this.o.clear();
        this.q.clear();
        this.f10918a.set(false);
        this.b.set(false);
        this.c.set(false);
        Handler handler = this.g;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.h hVar = this.s;
        if (hVar != null) {
            hVar.h();
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.h hVar2 = this.v;
        if (hVar2 != null) {
            hVar2.f10876a = null;
        }
    }

    public void Z() {
        this.h.setIfTest(e());
        this.h.setTransparentParams(k());
        this.h.setAdUnitId(this.f);
        this.h.setAdloadSeq(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.a());
        this.h.setLinkedId(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.d());
        if (this.h.getReuestParam() != null) {
            this.h.getReuestParam().getExtraObject().put("tt_request_ad_type", Integer.valueOf(this.h.getAdStyleType()));
        }
        this.h.setReqType(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.b.d().a(this.f, e()));
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar != null) {
            this.h.setWaterfallId(cVar.D());
            this.h.setVersion(this.d.y());
            this.h.setSegmentId(this.d.s());
            this.h.setSegmentVersion(this.d.t());
            this.h.setmWaterfallExtra(this.d.C());
            this.h.setBidFloor(this.d.c());
            this.h.setParalleType(this.d.m());
            this.h.setReqParallelNum(this.d.o());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x0236, code lost:
        if (r12 != 5) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0238 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0243 A[PHI: r12 
      PHI: (r12v26 char) = (r12v27 char), (r12v28 char), (r12v28 char) binds: [B:87:0x0241, B:77:0x022e, B:100:0x0243] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0247 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0248 A[PHI: r0 
      PHI: (r0v61 char) = (r0v47 char), (r0v62 char) binds: [B:75:0x0209, B:77:0x022e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x027f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x0248 -> B:77:0x022e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x027f -> B:95:0x0281). Please submit an issue!!! */
    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e.a(int, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x014a, code lost:
        if (r1 > 30) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0158 A[PHI: r6 
      PHI: (r6v30 char) = (r6v24 char), (r6v29 char), (r6v51 char) binds: [B:61:0x0157, B:63:0x015a, B:37:0x00a2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0168 A[LOOP:0: B:51:0x0144->B:69:0x0168, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0148 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x014d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0153 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x013c -> B:51:0x0144). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x015a -> B:62:0x0158). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0163 -> B:63:0x015a). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.os.Message r6) {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e.a(android.os.Message):void");
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar) {
        if (iVar == null) {
            return;
        }
        this.s.a(iVar.d());
        this.s.a(iVar.p());
        if (iVar.E() || iVar.B()) {
            this.s.a();
            U();
        }
    }

    public void a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar, int i2, int i3) {
        if (iVar != null) {
            a(iVar);
            iVar.h(j());
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(iVar, this.h, i2, i3);
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.c
    public void a(AdError adError, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        if (adError == null) {
            adError = new AdError(AdError.ERROR_CODE_AD_LOAD_FAIL, AdError.getMessage(AdError.ERROR_CODE_AD_LOAD_FAIL));
        }
        h0();
        if (this.b.get() || this.f10918a.get()) {
            return;
        }
        this.b.set(true);
        d(adError);
        if (t()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Cgoto.m999finally(this.f, sb, "广告加载失败！给外部回调：invokeAdLoadFailCallbackOnMainUI...... error Code = ");
        sb.append(adError.code);
        sb.append(" error Message = ");
        sb.append(adError.message);
        Logger.e("TTMediationSDK", sb.toString());
        ThreadHelper.runOnUiThread(new q(adError));
    }

    public void a(TTBaseAd tTBaseAd, String str) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i c2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, str);
        if (tTBaseAd == null || c2 == null) {
            return;
        }
        tTBaseAd.setLoadSort(c2.p());
        tTBaseAd.setShowSort(c2.y());
        tTBaseAd.setExchangeRate(c2.j());
        tTBaseAd.setAdNetworkSlotType(c2.f());
        tTBaseAd.setCpm(c2.i());
    }

    public void a(String str, String str2, String str3, String str4, int i2, String str5) {
        AdLoadInfo adLoadInfo = this.T.get(str);
        if (adLoadInfo == null) {
            adLoadInfo = new AdLoadInfo();
        }
        adLoadInfo.setMediationRit(str).setAdnName(str2).setCustomAdnName(str3).setErrCode(i2).setErrMsg(str5).setAdType(str4);
        this.T.put(str, adLoadInfo);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0070 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0068 A[LOOP:0: B:10:0x0068->B:18:0x0068, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x006d -> B:10:0x0068). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r3, java.util.concurrent.atomic.AtomicBoolean r4) {
        /*
            r2 = this;
            boolean r4 = r2.t()
            if (r4 == 0) goto L7
            goto L6d
        L7:
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d r4 = new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d
            r4.<init>()
            r0 = -1
            r4.c(r0)
            r4.d(r0)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c r0 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f()
            boolean r0 = r0.e(r3)
            if (r0 != 0) goto L28
            com.bytedance.msdk.api.AdError r3 = new com.bytedance.msdk.api.AdError
            r0 = 44406(0xad76, float:6.2226E-41)
            java.lang.String r1 = "广告位ID不合法"
            r3.<init>(r0, r1)
            goto L58
        L28:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r2.f
            java.lang.String r1 = com.bytedance.msdk.adapter.util.TTLogUtil.getTagSecondLevel(r1)
            r0.append(r1)
            java.lang.String r1 = "settings config.......AdUnitId = "
            r0.append(r1)
            r0.append(r3)
            java.lang.String r3 = "  暂无config配置信息"
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            java.lang.String r0 = "TTMediationSDK"
            com.bytedance.msdk.adapter.util.Logger.e(r0, r3)
            com.bytedance.msdk.api.AdError r3 = new com.bytedance.msdk.api.AdError
            r0 = 40040(0x9c68, float:5.6108E-41)
            java.lang.String r1 = com.bytedance.msdk.api.AdError.getMessage(r0)
            r3.<init>(r0, r1)
        L58:
            r2.a(r3, r4)
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c r3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f()
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b r3 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.b.a(r3)
            r3.d()
            r3 = 64
        L68:
            switch(r3) {
                case 64: goto L70;
                case 65: goto L6d;
                case 66: goto L6c;
                default: goto L6b;
            }
        L6b:
            goto L68
        L6c:
            return
        L6d:
            r3 = 66
            goto L68
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e.a(java.lang.String, java.util.concurrent.atomic.AtomicBoolean):void");
    }

    public void a(List<TTBaseAd> list, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        if (list == null || list.size() <= 0) {
            return;
        }
        String adNetworkSlotId = list.get(0).getAdNetworkSlotId();
        if (list.get(0).canAdReuse() && bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().c(this.f, adNetworkSlotId, e())) {
            ArrayList arrayList = new ArrayList();
            for (TTBaseAd tTBaseAd : list) {
                if (tTBaseAd != null) {
                    arrayList.add(new bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e(tTBaseAd, dVar, 0L, this.h));
                }
            }
            if (arrayList.size() > 0) {
                TTBaseAd tTBaseAd2 = ((bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122.e) arrayList.get(0)).f10900a;
                StringBuilder m1016super = Cgoto.m1016super("--==-- 广告复用:广告缓存成功 -------");
                m1016super.append(tTBaseAd2.getAdNetWorkName());
                m1016super.append(", adType: ");
                m1016super.append(eg.m599if(tTBaseAd2.getAdType(), tTBaseAd2.getSubAdType()));
                m1016super.append(", adnSlotId: ");
                m1016super.append(tTBaseAd2.getAdNetworkSlotId());
                m1016super.append(", ad个数: ");
                m1016super.append(arrayList.size());
                Logger.d("TTMediationSDK", m1016super.toString());
                bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_19do.a.a().a(adNetworkSlotId, arrayList);
            }
        }
    }

    public boolean a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        if (dVar == null) {
            return false;
        }
        return dVar.i() || dVar.j() || dVar.m();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x020a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x020c A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x0206 -> B:39:0x020c). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x02a3 -> B:63:0x02a5). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i r21, int r22) {
        /*
            Method dump skipped, instructions count: 700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e.a(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i, int):boolean");
    }

    public int b(int i2) {
        List<Integer> list = this.n;
        if (list == null) {
            return -1;
        }
        return list.indexOf(Integer.valueOf(i2)) + 1;
    }

    public abstract void b(AdError adError);

    public void b(List<TTBaseAd> list, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
    }

    public final void b(List<TTBaseAd> list, AdError adError) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar == null || !cVar.H()) {
            return;
        }
        if (this.M) {
            list = null;
            adError = new AdError(AdError.ERROR_CODE_DESTROY, AdError.getMessage(AdError.ERROR_CODE_DESTROY));
        }
        if (t()) {
            return;
        }
        if (!f0.a(list)) {
            Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "单个广告加载完成！给外部回调：invokeSingleAdLoadCallbackUI......");
            for (TTBaseAd tTBaseAd : list) {
                Logger.i("TTMediationSDK", TTLogUtil.getTagThirdLevelByEvent(this.f, TTLogUtil.TAG_EVENT_FILL) + "AdNetWorkName[" + tTBaseAd.getAdNetWorkName() + "] AdUnitId[" + tTBaseAd.getAdNetworkSlotId() + "]  请求成功 (loadSort=" + tTBaseAd.getLoadSort() + ",showSort=" + tTBaseAd.getShowSort() + ")");
            }
        }
        if (adError != null) {
            StringBuilder sb = new StringBuilder();
            Cgoto.m999finally(this.f, sb, "单个广告加载失败！给外部回调：invokeSingleAdLoadCallbackUI...... errorCode:");
            sb.append(adError.code);
            sb.append("  errorMsg:");
            sb.append(adError.message);
            Logger.e("TTMediationSDK", sb.toString());
        }
        ThreadHelper.runOnUiThread(new c(list, adError));
    }

    public final void c(AdError adError) {
        ThreadHelper.runOnUiThread(new b(adError));
    }

    public void c(TTBaseAd tTBaseAd) {
        AdSlot adSlot = this.h;
        int mediationRitReqType = tTBaseAd.getMediationRitReqType(adSlot != null ? adSlot.getLinkedId() : null);
        tTBaseAd.setMediationRitReqType(3);
        tTBaseAd.setMediationRitReqTypeSrc(mediationRitReqType);
    }

    public void c(List<TTBaseAd> list) {
        if (f0.b(list)) {
            return;
        }
        if (this.s.g()) {
            b((List<TTBaseAd>) null, new AdError(AdError.SINGLE_AD_REQUEST_TIMEOUT, AdError.AD_LOAD_AD_TIME_OUT_ERROR_MSG));
        } else {
            b(list, (AdError) null);
        }
        TTBaseAd tTBaseAd = list.get(0);
        if (tTBaseAd.isPAd()) {
            this.q.addAll(list);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.a(this.q, (Comparator<TTBaseAd>) null);
            if (Logger.isDebug()) {
                for (TTBaseAd tTBaseAd2 : list) {
                    StringBuilder sb = new StringBuilder();
                    Cgoto.m999finally(this.f, sb, "广告加载成功...........返回了P层广告_当前P层广告缓存池数量：");
                    sb.append(this.q.size());
                    sb.append(",slotId：");
                    sb.append(tTBaseAd2.getAdNetworkSlotId());
                    sb.append(",广告类型：");
                    sb.append(tTBaseAd2.getAdNetWorkName());
                    sb.append(",loadSort=");
                    sb.append(tTBaseAd2.getLoadSort());
                    sb.append(",showSort=");
                    sb.append(tTBaseAd2.getShowSort());
                    sb.append(",CPM=");
                    sb.append(tTBaseAd2.getCpm());
                    Logger.d("TTMediationSDK", sb.toString());
                }
            }
        } else if (tTBaseAd.isServerBiddingAd()) {
            this.p.addAll(list);
            for (TTBaseAd tTBaseAd3 : list) {
                StringBuilder sb2 = new StringBuilder();
                Cgoto.m999finally(this.f, sb2, "广告加载成功...........返回了ServerBidding层广告_当前ServerBidding层广告缓存池数量：");
                sb2.append(this.p.size());
                sb2.append(",slotId：");
                sb2.append(tTBaseAd3.getAdNetworkSlotId());
                sb2.append(",广告类型：");
                sb2.append(tTBaseAd3.getAdNetWorkName());
                sb2.append(",loadSort=");
                sb2.append(tTBaseAd3.getLoadSort());
                sb2.append(",showSort=");
                sb2.append(tTBaseAd3.getShowSort());
                sb2.append(",CPM=");
                sb2.append(tTBaseAd3.getCpm());
                Logger.d("TTMediationSDK", sb2.toString());
            }
        } else if (tTBaseAd.isMultiBiddingAd() || tTBaseAd.isClientBiddingAd()) {
            this.p.addAll(list);
            String str = tTBaseAd.isMultiBiddingAd() ? "多阶底价" : "clientBidding";
            for (TTBaseAd tTBaseAd4 : list) {
                Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "广告加载成功...........返回了" + str + "层广告_当前" + str + "层广告缓存池数量：" + this.p.size() + ",slotId：" + tTBaseAd4.getAdNetworkSlotId() + ",广告类型：" + tTBaseAd4.getAdNetWorkName() + ",loadSort=" + tTBaseAd4.getLoadSort() + ",showSort=" + tTBaseAd4.getShowSort() + ",CPM=" + tTBaseAd4.getCpm());
            }
            this.s.a();
            U();
        } else {
            this.o.addAll(list);
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.a(this.o, (Comparator<TTBaseAd>) null);
            if (Logger.isDebug()) {
                for (TTBaseAd tTBaseAd5 : list) {
                    StringBuilder sb3 = new StringBuilder();
                    Cgoto.m999finally(this.f, sb3, "广告加载成功...........返回了普通层广告_当前普通广告缓存池数量：");
                    sb3.append(this.o.size());
                    sb3.append(",slotId：");
                    sb3.append(tTBaseAd5.getAdNetworkSlotId());
                    sb3.append(",广告类型：");
                    sb3.append(tTBaseAd5.getAdNetWorkName());
                    sb3.append(",loadSort=");
                    sb3.append(tTBaseAd5.getLoadSort());
                    sb3.append(",showSort=");
                    sb3.append(tTBaseAd5.getShowSort());
                    sb3.append(",CPM=");
                    sb3.append(tTBaseAd5.getCpm());
                    Logger.d("TTMediationSDK", sb3.toString());
                }
            }
        }
    }

    public boolean c(int i2) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar;
        List<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> list = this.e.get(Integer.valueOf(i2));
        if (list != null) {
            Iterator<bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i> it = list.iterator();
            while (it.hasNext()) {
                iVar = it.next();
                if (iVar != null && iVar.G() && TextUtils.equals(iVar.e(), "pangle")) {
                    break;
                }
            }
        }
        iVar = null;
        return iVar != null && iVar.s() == 3;
    }

    public HashMap<String, TTBaseAd> d(List<TTBaseAd> list) {
        HashMap<String, TTBaseAd> hashMap = new HashMap<>();
        if (list != null && list.size() > 0) {
            for (TTBaseAd tTBaseAd : list) {
                if (tTBaseAd != null) {
                    hashMap.put(tTBaseAd.getAdNetworkSlotId(), tTBaseAd);
                }
            }
        }
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
        if (r12 != 'C') goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x013b, code lost:
        if (r12 != '\n') goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x013d, code lost:
        r12 = '\t';
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x013b -> B:77:0x013d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean d(int r12) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e.d(int):boolean");
    }

    public void e(int i2) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.h, cVar != null ? cVar.B() : null, !t(), j(), i2);
    }

    public final void e(String str) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.h, this.d.B());
        ThreadHelper.runOnUiThread(new a(str));
    }

    public void e(List<TTBaseAd> list) {
        if (this.a0 == null) {
            this.a0 = f(list);
        }
        if (this.u.get() || this.W) {
            return;
        }
        this.V = SystemClock.elapsedRealtime();
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(this.a0, this.h, this.d, this.V - this.U, j(), !t(), list != null ? list.size() : 0);
        this.u.set(true);
    }

    public void onAdFailed(AdError adError, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        List<TTBaseAd> list;
        List<TTBaseAd> list2;
        AdSlot adSlot;
        if (this.g == null || dVar == null) {
            return;
        }
        b((List<TTBaseAd>) null, adError);
        if (adError != null) {
            a(dVar.d(), dVar.c(), dVar.e(), eg.m599if(dVar.b(), dVar.h()), adError.thirdSdkErrorCode, adError.thirdSdkErrorMessage);
            Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "广告加载失败...........adnName:" + dVar.c() + " ,slotId:" + dVar.d() + ",slotType:" + dVar.a() + ",loadSort:" + dVar.f() + ",showSort:" + dVar.g() + " ，adError:" + adError.toString());
        }
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.a(adError, dVar);
        if (dVar.a() == 0 && a(dVar.d())) {
            return;
        }
        this.s.a(dVar.d());
        this.s.a(dVar.f());
        if (dVar.j() || dVar.i()) {
            this.s.a();
            U();
        }
        if (dVar.m() && s()) {
            if (this.q.size() >= i()) {
                Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "SeverBidding广告有返回结果时P层池中有广告直接返回......");
                q();
                return;
            }
            for (TTBaseAd tTBaseAd : this.o) {
                if (a(tTBaseAd) && m()) {
                    Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "SeverBidding广告有返回结果且满足ClientBidding等待时间时普通池中有广告直接返回......");
                    q();
                    return;
                }
            }
        }
        if (this.f10918a.get() || this.b.get()) {
            return;
        }
        List<TTBaseAd> list3 = this.q;
        if ((list3 == null || list3.size() <= 0) && (((list = this.o) == null || list.size() <= 0) && ((list2 = this.p) == null || list2.size() <= 0))) {
            if (!this.s.g() && this.s.f() && (adSlot = this.h) != null && !TextUtils.isEmpty(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_this102.a.a(adSlot.getTestSlotId()))) {
                a(adError, dVar);
                return;
            }
        } else if (!this.s.g() && this.s.f() && m()) {
            Logger.i("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "当前广告池中有广告且满足client bididing的返回条件...给出成功回调...");
            q();
            return;
        }
        if (!a(dVar) && this.s.b(dVar.f()) == 0) {
            int b2 = b(dVar.f());
            Logger.w("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "onAdFailed--》 加载下一层-nextIdx=" + b2);
            if (b2 < this.n.size() && !this.s.c(this.n.get(b2).intValue())) {
                if (dVar.l()) {
                    Handler handler = this.g;
                    if (handler != null) {
                        handler.removeMessages(4);
                    }
                } else {
                    Handler handler2 = this.g;
                    if (handler2 != null) {
                        handler2.removeMessages(1);
                    }
                }
            }
            a(b2, true);
        }
        if ((this.s.g() || this.s.f()) && m()) {
            Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "所有广告都加载失败....");
            a(new AdError(AdError.ERROR_CODE_AD_LOAD_FAIL, AdError.getMessage(AdError.ERROR_CODE_AD_LOAD_FAIL)), dVar);
        }
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.AdapterLoaderListener
    public void onAdLoaded(TTBaseAd tTBaseAd, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(tTBaseAd);
        onAdLoaded(arrayList, dVar);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:111:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0196 A[PHI: r9 r10 
      PHI: (r9v29 char) = (r9v28 char), (r9v30 char) binds: [B:52:0x0192, B:54:0x0198] A[DONT_GENERATE, DONT_INLINE]
      PHI: (r10v20 char) = (r10v19 char), (r10v21 char) binds: [B:52:0x0192, B:54:0x0198] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01aa A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0256 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x019c A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0196 -> B:54:0x0198). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x01a5 -> B:56:0x019c). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x01ad -> B:65:0x01af). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x0254 -> B:88:0x0256). Please submit an issue!!! */
    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.AdapterLoaderListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAdLoaded(java.util.List<com.bytedance.msdk.base.TTBaseAd> r9, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d r10) {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e.onAdLoaded(java.util.List, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d):void");
    }

    @Override // com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.AdapterLoaderListener
    public void onAdVideoCache() {
        if (this.g == null || this.b.get() || this.c.get() || !this.f10918a.get()) {
            return;
        }
        this.c.set(true);
        Q();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.c
    public void q() {
        ArrayList arrayList;
        ArrayList arrayList2;
        h0();
        if (this.f10918a.get() || this.b.get()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Cgoto.m999finally(this.f, sb, "广告加载成功！给外部回调：invokeAdLoadCallbackOnMainUI........P.size:");
        sb.append(this.q.size());
        sb.append("   bidding.size:");
        sb.append(this.p.size());
        sb.append("   normal.size:");
        sb.append(this.o.size());
        Logger.e("TTMediationSDK", sb.toString());
        this.f10918a.set(true);
        y();
        if ((d0() || (c0() && !this.Y)) && (p() || n())) {
            List<TTBaseAd> u = u();
            TTBaseAd tTBaseAd = u.size() > 0 ? u.get(0) : null;
            int i2 = i();
            if (i2 > 1) {
                arrayList2 = new ArrayList();
                for (int i3 = 1; i3 < i2; i3++) {
                    if (i3 < u.size()) {
                        arrayList2.add(u.get(i3));
                    }
                }
                if (u.size() > i2) {
                    arrayList = new ArrayList();
                    while (i2 < u.size()) {
                        TTBaseAd tTBaseAd2 = u.get(i2);
                        if (tTBaseAd2 != null && tTBaseAd2.isServerBiddingAd()) {
                            arrayList.add(tTBaseAd2);
                        }
                        i2++;
                    }
                } else {
                    arrayList = null;
                }
            } else {
                arrayList = null;
                arrayList2 = null;
            }
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(tTBaseAd, this.h, arrayList2, arrayList);
        }
        if (t()) {
            return;
        }
        int i4 = this.p.size() + (this.o.size() + this.q.size()) >= i() ? i() : this.p.size() + this.o.size() + this.q.size();
        AdSlot adSlot = this.h;
        TTBaseAd tTBaseAd3 = this.N;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.U;
        int a0 = a0();
        int b2 = b(this.P);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(adSlot, tTBaseAd3, elapsedRealtime, a0, b2, 0, cVar != null ? cVar.B() : null, i4);
        ThreadHelper.runOnUiThread(new p());
        g0();
    }
}
