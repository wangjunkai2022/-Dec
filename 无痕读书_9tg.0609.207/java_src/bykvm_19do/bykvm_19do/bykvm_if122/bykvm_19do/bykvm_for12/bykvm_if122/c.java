package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_for12.bykvm_if122;

import android.content.Context;
import android.os.SystemClock;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.f;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.f0;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.v2.ad.AdUtils;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: PreLoadRequestCore.java */
/* loaded from: classes8.dex */
public class c extends f {
    public long f0;

    public c(Context context, String str) {
        super(context, str);
    }

    public static /* synthetic */ void a(c cVar, AdError adError, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        super.onAdFailed(adError, dVar);
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                default:
                                    c2 = '[';
                                case '[':
                                case '\\':
                                case ']':
                                    break;
                            }
                        }
                        c = '^';
                        c2 = 'K';
                    case '^':
                        if (c2 <= 4) {
                            break;
                        } else {
                            return;
                        }
                }
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void O() {
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 21:
                            return;
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        return;
                    default:
                        c2 = '[';
                }
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void P() {
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                            case 21:
                                return;
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    return;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 <= 4) {
                            break;
                        } else {
                            return;
                        }
                }
            }
        }
    }

    public void a(AdSlot adSlot) {
        this.f0 = SystemClock.currentThreadTimeMillis();
        b.d().a(this.f, this.f0);
        this.h = adSlot;
        this.w = AdUtils.covertAdSlot2GMAdSlotBase(adSlot);
        this.I = null;
        S();
        for (char c = 'I'; c != 'H'; c = 'H') {
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void b(AdError adError) {
        while (true) {
            char c = '^';
            char c2 = 'K';
            while (true) {
                if (c == '\\') {
                    switch (c2) {
                        case 21:
                            return;
                        case 22:
                        case 23:
                            c = ']';
                            c2 = ']';
                    }
                } else if (c != ']') {
                    c = ']';
                    c2 = ']';
                }
            }
            while (true) {
                switch (c2) {
                    case '[':
                        break;
                    case '\\':
                    case ']':
                        return;
                    default:
                        c2 = '[';
                }
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.c
    public void b(List<i> list) {
        TTBaseAd tTBaseAd;
        super.b(list);
        Map<String, List<e>> b = b.d().b(this.f);
        if (b == null || b.keySet() == null) {
            return;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(b.keySet());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            List<e> list2 = b.get((String) it.next());
            if (list2 != null && list2.size() > 0) {
                for (e eVar : list2) {
                    if (eVar != null && (tTBaseAd = eVar.f10900a) != null && tTBaseAd.isNormalAd()) {
                        copyOnWriteArrayList.add(eVar.f10900a);
                    }
                }
            }
        }
        if (copyOnWriteArrayList.size() == 0) {
            return;
        }
        if (f0.a(list)) {
            Cgoto.m1009package(this.f, new StringBuilder(), "处理预缓存逻辑......没有胜出的普通广告，普通广告被全部过滤掉了", "TTMediationSDK");
            return;
        }
        Iterator it2 = copyOnWriteArrayList.iterator();
        while (it2.hasNext()) {
            TTBaseAd tTBaseAd2 = (TTBaseAd) it2.next();
            boolean z = true;
            Iterator<i> it3 = list.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                i next = it3.next();
                if (tTBaseAd2 != null && next != null && tTBaseAd2.getAdNetworkSlotId().equals(next.d())) {
                    z = false;
                    break;
                }
            }
            if (!z) {
                Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "处理预缓存逻辑......已经响应的广告: " + tTBaseAd2.getAdNetworkSlotId() + "  没有在severBidding的waterFall列表中，需要被移除掉");
                copyOnWriteArrayList.remove(tTBaseAd2);
            }
        }
        Iterator it4 = copyOnWriteArrayList.iterator();
        while (it4.hasNext()) {
            TTBaseAd tTBaseAd3 = (TTBaseAd) it4.next();
            if (tTBaseAd3 != null) {
                b.remove(tTBaseAd3.getAdNetworkSlotId());
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void b(List<TTBaseAd> list, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        if (list == null) {
            return;
        }
        for (TTBaseAd tTBaseAd : list) {
            if (tTBaseAd != null) {
                b.d().a(this.f, new e(tTBaseAd, dVar, this.f0, this.h));
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.f, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.AdapterLoaderListener
    public void onAdFailed(AdError adError, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        a(this, adError, dVar);
        b.d().a(this.f, dVar.d(), this.f0, adError);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.c
    public boolean t() {
        while (true) {
            char c = ']';
            char c2 = ']';
            while (true) {
                switch (c) {
                    case '\\':
                        switch (c2) {
                            case 21:
                                return true;
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case ']':
                        while (true) {
                            switch (c2) {
                                case '[':
                                case ']':
                                    break;
                                case '\\':
                                    return true;
                                default:
                                    c2 = '[';
                            }
                        }
                        c = '^';
                        c2 = 'K';
                        break;
                    case '^':
                        if (c2 <= 4) {
                            break;
                        } else {
                            return true;
                        }
                }
            }
        }
    }
}
