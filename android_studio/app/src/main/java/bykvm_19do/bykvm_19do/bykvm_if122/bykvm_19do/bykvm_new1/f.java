package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.f0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.u;
import com.apk.Cgoto;
import com.apk.eg;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdLoadInfo;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.base.TTBaseAd;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: TTAdHeaderSpeedRequestCore.java */
/* loaded from: classes8.dex */
public abstract class f extends e {
    public Map<Integer, Integer> d0;
    public boolean e0;

    public f(Context context, String str) {
        super(context, str);
        this.d0 = new HashMap();
        this.e0 = false;
    }

    private void d0() {
        if (s()) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "抛出成功回调_广告池中广告满足数量直接返回......");
            if (m()) {
                Logger.i("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "当前广告池中有广告且满足client bididing的返回条件...给出成功回调...");
                q();
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.c
    public void A() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar == null || !cVar.I()) {
            super.A();
        } else {
            d0();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void X() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar == null || !cVar.I()) {
            super.X();
            return;
        }
        a0();
        c0();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.c
    public void a() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar == null || !cVar.I()) {
            super.a();
            return;
        }
        this.e0 = false;
        c0();
        A();
    }

    public void a(int i, int i2, boolean z) {
        int i3;
        if (i2 < -100) {
            b(i, z);
            return;
        }
        if (i2 == -100) {
            i3 = i + 1;
        } else if (i2 == 0) {
            for (int i4 = 0; i4 < I(); i4++) {
                int i5 = i + i4 + 1;
                if (i5 < this.n.size()) {
                    a(i5, z);
                }
            }
            return;
        } else {
            i3 = i(i);
            if (i3 <= -1) {
                return;
            }
        }
        a(i3, z);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.c
    public void a(int i, boolean z) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar == null || !cVar.I()) {
            super.a(i, z);
        } else {
            c(i, z);
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void a(Message message) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar == null || !cVar.I()) {
            super.a(message);
            return;
        }
        b(message);
        while (true) {
            char c = 'J';
            char c2 = '7';
            while (true) {
                switch (c) {
                    case 'H':
                        break;
                    case 'I':
                        switch (c2) {
                            case '^':
                                break;
                            case '_':
                            case '`':
                                return;
                            default:
                                if (c2 != '8' || c2 == '9') {
                                    return;
                                }
                                break;
                        }
                        c = 'I';
                        c2 = '`';
                        break;
                    case 'J':
                        if (c2 != '8') {
                            return;
                        }
                        return;
                    default:
                        c = 'H';
                }
            }
        }
    }

    public void a0() {
        for (int i = 0; i < this.n.size(); i++) {
            this.d0.put(this.n.get(i), 0);
        }
    }

    public void b(int i, boolean z) {
        int j = j(i);
        if (j > -1) {
            a(j, z);
        } else if (b0() && !this.e0) {
            this.e0 = true;
            int h = h(i);
            if (h > 0) {
                if (this.n.get(h).intValue() <= 0) {
                    if (this.n.get(h).intValue() != 0 && v()) {
                        return;
                    }
                    a(h, z);
                    return;
                }
                for (int i2 = 0; i2 < I(); i2++) {
                    int i3 = h + i2;
                    if (i3 < this.n.size()) {
                        a(i3, z);
                    }
                }
            }
        }
    }

    public void b(Message message) {
        StringBuilder sb;
        List<TTBaseAd> list;
        int i;
        List<TTBaseAd> list2;
        List<TTBaseAd> list3;
        int i2 = message.what;
        if (i2 == 1) {
            if (message.arg1 == 10003) {
                int intValue = ((Integer) message.obj).intValue();
                this.d0.put(Integer.valueOf(intValue), 4);
                if (p() && !x()) {
                    StringBuilder sb2 = new StringBuilder();
                    Cgoto.m999finally(this.f, sb2, "当前层超时....server Bidding 的请求还没有返回，继续执行下一层普通层(不一定执行)....mTTCommonAdPoolList.size()=");
                    sb2.append(this.o.size());
                    Logger.w("TTMediationSDK", sb2.toString());
                    int f = f(intValue);
                    if (f <= -1 || (i = i(f)) <= -1) {
                        return;
                    }
                } else if (s()) {
                    StringBuilder sb3 = new StringBuilder();
                    Cgoto.m999finally(this.f, sb3, "当前层超时....广告池已有广告不执行下层....mTTCommonAdPoolList.size()=");
                    sb3.append(this.o.size());
                    Logger.w("TTMediationSDK", sb3.toString());
                    if (!m()) {
                        return;
                    }
                    sb = new StringBuilder();
                    Cgoto.m999finally(this.f, sb, "当前层超时....广告池已有广告不执行下层且满足client bidding的返回条件....mTTCommonAdPoolList.size()=");
                    list = this.o;
                } else {
                    StringBuilder sb4 = new StringBuilder();
                    Cgoto.m999finally(this.f, sb4, "当前层超时....普通广告池没广告尝试执行下层(不一定执行)....mTTCommonAdPoolList.size()=");
                    sb4.append(this.o.size());
                    Logger.w("TTMediationSDK", sb4.toString());
                    int f2 = f(intValue);
                    if (f2 <= -1 || (i = i(f2)) <= -1) {
                        return;
                    }
                }
                a(i, false);
                return;
            }
            return;
        } else if (i2 == 2) {
            M();
            return;
        } else if (i2 == 3) {
            L();
            return;
        } else if (i2 != 4) {
            if (i2 != 5) {
                return;
            }
            this.x.set(true);
            if (p() && x()) {
                if (s()) {
                    Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "SeverBidding广告成功返回且到达ClientBidding的等待时间，广告池中的广告数量满足...直接返回......");
                    q();
                }
                if (this.s.g() || !this.s.f()) {
                    return;
                }
                Cgoto.m1009package(this.f, new StringBuilder(), "所有广告都已经加载完成....... ", "TTMediationSDK");
                List<TTBaseAd> list4 = this.q;
                if ((list4 == null || list4.size() <= 0) && (((list2 = this.o) == null || list2.size() <= 0) && ((list3 = this.p) == null || list3.size() <= 0))) {
                    a(new AdError(AdError.ERROR_CODE_AD_LOAD_FAIL, AdError.getMessage(AdError.ERROR_CODE_AD_LOAD_FAIL)), (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d) null);
                    return;
                }
                Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "SeverBidding广告返回且到达ClientBidding的等待时间，所有广告都有返回结果...直接返回......");
                q();
            }
            return;
        } else {
            int intValue2 = ((Integer) message.obj).intValue();
            if (this.d0.get(Integer.valueOf(intValue2)) != null && this.d0.get(Integer.valueOf(intValue2)).intValue() == 1) {
                this.d0.put(Integer.valueOf(intValue2), 4);
            }
            if (!r()) {
                StringBuilder sb5 = new StringBuilder();
                Cgoto.m999finally(this.f, sb5, "当前层超时....P层广告池没广告或者数量不达标,尝试执行下层(不一定执行)....mTTPAdPoolList.size()=");
                sb5.append(this.q.size());
                Logger.w("TTMediationSDK", sb5.toString());
                int f3 = f(intValue2);
                if (f3 > -1) {
                    b(f3, false);
                    return;
                }
                return;
            }
            sb = new StringBuilder();
            Cgoto.m999finally(this.f, sb, "当前层超时....广告池已有P层类型广告不执行下层....mTTPAdPoolList.size()=");
            list = this.q;
        }
        sb.append(list.size());
        Logger.w("TTMediationSDK", sb.toString());
        q();
    }

    public void b(AdError adError, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        List<TTBaseAd> list;
        List<TTBaseAd> list2;
        AdSlot adSlot;
        int i;
        if (this.g == null || dVar == null) {
            return;
        }
        b((List<TTBaseAd>) null, adError);
        if (adError != null) {
            a(dVar.d(), dVar.c(), dVar.e(), eg.m599if(dVar.b(), dVar.h()), adError.thirdSdkErrorCode, adError.thirdSdkErrorMessage);
            Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "广告加载失败...........adnName:" + dVar.c() + " ,slotId:" + dVar.d() + ",slotType:" + dVar.a() + ",loadSort:" + dVar.f() + ",showSort:" + dVar.g() + " ，adError:" + adError.toString());
        }
        if (dVar.a() == 0 && a(dVar.d())) {
            return;
        }
        this.s.a(dVar.d());
        this.s.a(dVar.f());
        if (dVar.j() || dVar.i()) {
            this.s.a();
            U();
        }
        if (dVar.m() && s() && m()) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "SeverBidding广告有返回结果且满足ClientBidding等待时间时广告池中有广告直接返回......");
            q();
        } else if (this.f10918a.get() || this.b.get()) {
        } else {
            List<TTBaseAd> list3 = this.q;
            if ((list3 == null || list3.size() <= 0) && (((list = this.o) == null || list.size() <= 0) && ((list2 = this.p) == null || list2.size() <= 0))) {
                if (!this.s.g() && this.s.f() && (adSlot = this.h) != null && !TextUtils.isEmpty(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_this102.a.a(adSlot.getTestSlotId()))) {
                    a(adError, dVar);
                    return;
                }
            } else if (!this.s.g() && this.s.f() && m()) {
                Logger.i("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "所有层级和所有waterfall都已完成直接回调...");
                Logger.i("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "当前广告池中有广告且满足client bididing的返回条件...给出成功回调...");
                q();
                return;
            }
            if (dVar.g() < -100) {
                if (this.d0.get(Integer.valueOf(dVar.g())) != null && this.d0.get(Integer.valueOf(dVar.g())).intValue() != 4) {
                    Handler handler = this.g;
                    if (handler != null) {
                        handler.removeMessages(4, u.a(dVar.g()));
                    }
                    this.d0.put(Integer.valueOf(dVar.g()), 3);
                    int f = f(dVar.g());
                    if (f > -1) {
                        Logger.w("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "当前level为：" + dVar.g() + "的P层请求失败-----onAdFailed--》 加载下一层-nextIdx=" + f);
                        b(f, true);
                    }
                }
            } else if (dVar.k() && this.d0.get(Integer.valueOf(dVar.g())) != null && this.d0.get(Integer.valueOf(dVar.g())).intValue() != 4) {
                Handler handler2 = this.g;
                if (handler2 != null) {
                    handler2.removeMessages(1, u.a(dVar.g()));
                }
                this.d0.put(Integer.valueOf(dVar.g()), 3);
                int f2 = f(dVar.g());
                if (f2 > -1 && (i = i(f2)) > -1) {
                    Logger.w("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "当前level为：" + dVar.g() + "的普通层请求失败-----onAdFailed--》 加载下一层-nextIdx=" + i);
                    a(i, true);
                }
            }
            if ((this.s.g() || this.s.f()) && m()) {
                Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "所有广告都加载失败....");
                a(new AdError(AdError.ERROR_CODE_AD_LOAD_FAIL, AdError.getMessage(AdError.ERROR_CODE_AD_LOAD_FAIL)), dVar);
            }
        }
    }

    public boolean b0() {
        for (int i = 0; i < this.n.size(); i++) {
            if (this.n.get(i).intValue() < -100 && (this.d0.get(this.n.get(i)).intValue() == 0 || this.d0.get(this.n.get(i)).intValue() == 1)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0255  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(int r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 721
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.f.c(int, boolean):void");
    }

    public void c(List<TTBaseAd> list, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        if (this.g == null || dVar == null) {
            return;
        }
        a(dVar.d(), dVar.c(), dVar.e(), eg.m599if(dVar.b(), dVar.h()), 0, AdLoadInfo.AD_LOADED);
        a(list, dVar);
        if (dVar.a() == 0 && !f0.b(list)) {
            String adNetworkSlotId = list.get(0).getAdNetworkSlotId();
            if (a(adNetworkSlotId)) {
                this.d0.put(Integer.valueOf(list.get(0).getShowSort()), 3);
                Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "返回的普通广告被server Bidding过滤了......slotId:" + adNetworkSlotId);
                return;
            }
        }
        this.s.a(dVar.d());
        if (t()) {
            b(list, dVar);
        }
        c(list);
        e(list);
        if (this.f10918a.get() || this.b.get()) {
            return;
        }
        if (!f0.b(list) && list.get(0).isPAd() && r()) {
            Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "P层广告已经成功返回loadSort:" + list.get(0).getLoadSort() + " ,showSort:" + list.get(0).getShowSort());
            this.d0.put(Integer.valueOf(list.get(0).getShowSort()), 2);
            q();
        } else if (((!p() && !n()) || (p() && x())) && !f0.b(list) && list.get(0).isNormalAd() && s()) {
            Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "普通层广告已经成功返回loadSort:" + list.get(0).getLoadSort() + " ,showSort:" + list.get(0).getShowSort());
            if (m()) {
                Logger.e("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "满足广告的返回条件...直接返回...");
                q();
            }
        } else if (dVar.m() && s() && m()) {
            Logger.d("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "SeverBidding广告返回结果且满足ClientBidding等待时间时广告池中有广告直接返回......");
            q();
        } else if (this.s.f() && m()) {
            Logger.i("TTMediationSDK", TTLogUtil.getTagSecondLevel(this.f) + "所有层级和所有waterfall都已完成直接回调...");
            q();
        }
    }

    public void c0() {
        if (f0.b(this.n)) {
            return;
        }
        int intValue = this.n.get(0).intValue();
        if (intValue < -100) {
            for (int i = 0; i < I(); i++) {
                if (i < this.n.size() && this.n.get(i).intValue() < -100) {
                    a(i, false);
                }
            }
        } else if (intValue == -100 || intValue == 0) {
            a(0, false);
        } else {
            for (int i2 = 0; i2 < I(); i2++) {
                if (i2 < this.n.size()) {
                    a(i2, false);
                }
            }
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public boolean d(int i) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        return (cVar == null || !cVar.I()) ? super.d(i) : g(i);
    }

    public int f(int i) {
        int i2 = -1;
        for (int i3 = 0; i3 < this.n.size(); i3++) {
            if (this.n.get(i3).intValue() == i) {
                i2 = i3;
            }
        }
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean g(int r14) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.f.g(int):boolean");
    }

    public int h(int i) {
        for (int i2 = 0; i2 < this.n.size(); i2++) {
            int i3 = i + i2 + 1;
            if (i3 < this.n.size()) {
                int intValue = this.n.get(i3).intValue();
                if (this.d0.get(Integer.valueOf(intValue)) != null && this.d0.get(Integer.valueOf(intValue)).intValue() == 0) {
                    return i3;
                }
            }
        }
        return -1;
    }

    public int i(int i) {
        int intValue;
        for (int i2 = 0; i2 < this.n.size(); i2++) {
            int i3 = i + i2 + 1;
            if (i3 < this.n.size() && (intValue = this.n.get(i3).intValue()) > 0 && this.d0.get(Integer.valueOf(intValue)).intValue() == 0) {
                return i3;
            }
        }
        return -1;
    }

    public int j(int i) {
        int intValue;
        for (int i2 = 0; i2 < this.n.size(); i2++) {
            int i3 = i + i2 + 1;
            if (i3 < this.n.size() && (intValue = this.n.get(i3).intValue()) < -100 && this.d0.get(Integer.valueOf(intValue)).intValue() == 0) {
                return i3;
            }
        }
        return -1;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.AdapterLoaderListener
    public void onAdFailed(AdError adError, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar == null || !cVar.I()) {
            super.onAdFailed(adError, dVar);
        } else {
            b(adError, dVar);
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e, com.bytedance.msdk.adapter.TTAbsAdLoaderAdapter.AdapterLoaderListener
    public void onAdLoaded(List<TTBaseAd> list, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.d dVar) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar == null || !cVar.I()) {
            super.onAdLoaded(list, dVar);
        } else {
            c(list, dVar);
        }
    }
}
