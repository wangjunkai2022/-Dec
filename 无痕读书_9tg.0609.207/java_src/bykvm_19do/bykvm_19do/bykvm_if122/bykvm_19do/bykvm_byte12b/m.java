package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b;

import android.text.TextUtils;
import android.util.Pair;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: IntervalShowControl.java */
/* loaded from: classes8.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    public Map<String, Long> f10865a;
    public Map<String, Pair<String, String>> b;

    /* compiled from: IntervalShowControl.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f10866a;

        public a(String str) {
            this.f10866a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder m1016super = Cgoto.m1016super("updateShowPacingTime ritId = ");
            m1016super.append(this.f10866a);
            Logger.d("TTMediationSDK_IntervalShowControl", m1016super.toString());
            i i = m.this.i(this.f10866a);
            if (i == null || !i.a()) {
                return;
            }
            Date date = new Date();
            StringBuilder m1016super2 = Cgoto.m1016super("updateShowPacingTime save time = ");
            m1016super2.append(f.b(date.getTime()));
            Logger.d("TTMediationSDK_IntervalShowControl", m1016super2.toString());
            m.this.a(this.f10866a, date.getTime());
        }
    }

    /* compiled from: IntervalShowControl.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f10867a;

        public b(String str) {
            this.f10867a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder m1016super = Cgoto.m1016super("addShowFreqctlCount ritId = ");
            m1016super.append(this.f10867a);
            Logger.d("TTMediationSDK_IntervalShowControl", m1016super.toString());
            g h = m.this.h(this.f10867a);
            if (h == null || !h.a()) {
                return;
            }
            for (e eVar : h.i()) {
                if (eVar.a() < eVar.c()) {
                    m.this.a(h, eVar.d(), eVar.a() + 1);
                }
            }
        }
    }

    /* compiled from: IntervalShowControl.java */
    /* loaded from: classes8.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public static m f10868a = new m(null);
    }

    public /* synthetic */ m(a aVar) {
        this();
    }

    public static m b() {
        return c.f10868a;
    }

    public boolean c(String str) {
        i i = i(str);
        if (i != null && i.a() && i.l()) {
            long time = new Date().getTime();
            long k = i.k();
            long i2 = i.i() + i.k();
            StringBuilder m1016super = Cgoto.m1016super("checkPacing currentTime = ");
            m1016super.append(f.b(time));
            m1016super.append(" showTime = ");
            m1016super.append(f.b(k));
            m1016super.append(" pacingBean.getPacing() = ");
            m1016super.append(i.i());
            m1016super.append(" pacingTime = ");
            m1016super.append(f.b(i2));
            Logger.d("TTMediationSDK_IntervalShowControl", m1016super.toString());
            if (time <= i2) {
                this.f10865a.put(str, Long.valueOf(time - k));
                return false;
            }
        }
        return true;
    }

    public void d(String str) {
        h.a().a(str);
    }

    public void e(String str) {
        j.a().a(str);
    }

    public Pair<String, String> f(String str) {
        return this.b.get(str);
    }

    public long g(String str) {
        Long l = this.f10865a.get(str);
        if (l == null) {
            return -2L;
        }
        return l.longValue();
    }

    public g h(String str) {
        return h.a().b(str);
    }

    public i i(String str) {
        return j.a().b(str);
    }

    public void j(String str) {
        ThreadHelper.runOnMSDKThread(new a(str));
    }

    public m() {
        a();
    }

    public void a() {
        this.b = new ConcurrentHashMap();
        this.f10865a = new ConcurrentHashMap();
    }

    public void b(i iVar) {
        j.a().a(iVar);
    }

    public boolean b(String str) {
        g h = h(str);
        if (h == null || !h.a()) {
            return true;
        }
        for (e eVar : h.i()) {
            Date date = new Date();
            StringBuilder m1016super = Cgoto.m1016super("checkFreqctl date = ");
            m1016super.append(date.getTime());
            m1016super.append(" item.getEffectiveTime() = ");
            m1016super.append(eVar.b());
            Logger.d("TTMediationSDK_IntervalShowControl", m1016super.toString());
            if (date.getTime() <= eVar.b()) {
                if (eVar.a() < eVar.c()) {
                    StringBuilder m1016super2 = Cgoto.m1016super("checkFreqctl 未到上线可以展示 ruleId = ");
                    m1016super2.append(eVar.d());
                    m1016super2.append(" count = ");
                    m1016super2.append(eVar.a());
                    Logger.d("TTMediationSDK_IntervalShowControl", m1016super2.toString());
                } else {
                    StringBuilder m1016super3 = Cgoto.m1016super("checkFreqctl 到了上线不可以展示 ruleId = ");
                    m1016super3.append(eVar.d());
                    m1016super3.append(" count = ");
                    m1016super3.append(eVar.a());
                    Logger.d("TTMediationSDK_IntervalShowControl", m1016super3.toString());
                    Map<String, Pair<String, String>> map = this.b;
                    String d = eVar.d();
                    map.put(str, new Pair<>(d, eVar.a() + ""));
                    return false;
                }
            } else {
                a(h, eVar.d(), 0);
                a(h, eVar.d(), f.a(eVar.e()));
                StringBuilder m1016super4 = Cgoto.m1016super("checkFreqctl 有效期外计数需要清0，过期时间需要更新 = ");
                m1016super4.append(eVar.d());
                Logger.d("TTMediationSDK_IntervalShowControl", m1016super4.toString());
            }
        }
        return true;
    }

    public boolean a(i iVar) {
        if (iVar == null) {
            return false;
        }
        i i = i(iVar.d());
        if (i == null) {
            Logger.d("TTMediationSDK_IntervalShowControl", "pacing 规则为空直接存储");
            return true;
        } else if (TextUtils.isEmpty(iVar.j())) {
            Logger.d("TTMediationSDK_IntervalShowControl", "pacing ruleId 为空 清空本地数据 ");
            e(iVar.g());
            return false;
        } else if (TextUtils.equals(i.j(), iVar.j())) {
            StringBuilder m1016super = Cgoto.m1016super("pacing ruleId 一致 ruleId = ");
            m1016super.append(i.j());
            m1016super.append(" 无需处理");
            Logger.d("TTMediationSDK_IntervalShowControl", m1016super.toString());
            return false;
        } else {
            StringBuilder m1016super2 = Cgoto.m1016super("pacing ruleId不一致，缓存新规则 old ruleId = ");
            m1016super2.append(i.j());
            m1016super2.append("  new ruleId = ");
            m1016super2.append(iVar.j());
            Logger.d("TTMediationSDK_IntervalShowControl", m1016super2.toString());
            Logger.d("TTMediationSDK_IntervalShowControl", "pacing 删除 ritId = " + iVar.g());
            e(iVar.g());
            return true;
        }
    }

    public void a(String str, long j) {
        j.a().a(str, j);
    }

    public void a(String str) {
        ThreadHelper.runOnMSDKThread(new b(str));
    }

    public boolean a(g gVar) {
        if (gVar == null) {
            return false;
        }
        g h = h(gVar.d());
        if (h == null) {
            Logger.d("TTMediationSDK_IntervalShowControl", "freqctl 规则为空直接存储");
            return true;
        } else if (TextUtils.isEmpty(gVar.e())) {
            Logger.d("TTMediationSDK_IntervalShowControl", "freqctl version 为空 清空本地数据 ");
            d(h.d());
            return false;
        } else if (TextUtils.equals(h.e(), gVar.e())) {
            StringBuilder m1016super = Cgoto.m1016super("freqctl version 一致 version = ");
            m1016super.append(h.e());
            m1016super.append("无需处理");
            Logger.d("TTMediationSDK_IntervalShowControl", m1016super.toString());
            return false;
        } else {
            StringBuilder m1016super2 = Cgoto.m1016super("freqctl version不一致，缓存新规则 old version = ");
            m1016super2.append(h.e());
            m1016super2.append("  new version ");
            m1016super2.append(gVar.e());
            Logger.d("TTMediationSDK_IntervalShowControl", m1016super2.toString());
            return true;
        }
    }

    public void b(g gVar) {
        h.a().a(gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(g gVar, String str, int i) {
        h.a().a(gVar, str, i);
    }

    private void a(g gVar, String str, long j) {
        h.a().a(gVar, str, j);
    }
}
