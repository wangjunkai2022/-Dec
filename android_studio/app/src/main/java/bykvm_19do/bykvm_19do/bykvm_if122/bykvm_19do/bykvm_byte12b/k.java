package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b;

import android.text.TextUtils;
import android.util.Pair;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: IntervalShowAdnFreqctlControl.java */
/* loaded from: classes8.dex */
public class k {
    public static final String b;

    /* renamed from: a  reason: collision with root package name */
    public Map<String, Pair<String, String>> f10859a;

    /* compiled from: IntervalShowAdnFreqctlControl.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f10860a;
        public final /* synthetic */ String b;

        public a(String str, String str2) {
            this.f10860a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = k.b;
            StringBuilder m1016super = Cgoto.m1016super("adn addShowFreqctlCount ritId = ");
            m1016super.append(this.f10860a);
            m1016super.append(" adnSlotId = ");
            m1016super.append(this.b);
            Logger.d(str, m1016super.toString());
            g e = k.this.e(this.f10860a, this.b);
            if (e == null || !e.a()) {
                return;
            }
            for (e eVar : e.i()) {
                if (eVar.a() < eVar.c()) {
                    k.this.a(e, eVar.d(), eVar.a() + 1);
                }
            }
        }
    }

    /* compiled from: IntervalShowAdnFreqctlControl.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public static k f10861a = new k(null);
    }

    static {
        StringBuilder m1016super = Cgoto.m1016super("TTMediationSDK_");
        m1016super.append(k.class.getSimpleName());
        b = m1016super.toString();
    }

    public /* synthetic */ k(a aVar) {
        this();
    }

    public static k b() {
        return b.f10861a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g e(String str, String str2) {
        return h.a().b(str, str2);
    }

    public void c(String str, String str2) {
        h.a().a(str, str2);
    }

    public Pair<String, String> d(String str, String str2) {
        Map<String, Pair<String, String>> map = this.f10859a;
        return map.get(str + "_" + str2);
    }

    public k() {
        this.f10859a = new ConcurrentHashMap();
    }

    public boolean b(String str, String str2) {
        String str3 = b;
        Logger.d(str3, "adn checkFreqctl ritId = " + str + " adnSlotId = " + str2);
        g e = e(str, str2);
        if (e == null || !e.a()) {
            return true;
        }
        for (e eVar : e.i()) {
            Date date = new Date();
            String str4 = b;
            StringBuilder m1004import = Cgoto.m1004import("adn checkFreqctl ritId = ", str, " adnSlotId = ", str2, "  date = ");
            m1004import.append(date.getTime());
            m1004import.append(" item.getEffectiveTime() = ");
            m1004import.append(eVar.b());
            Logger.d(str4, m1004import.toString());
            if (date.getTime() <= eVar.b()) {
                if (eVar.a() < eVar.c()) {
                    String str5 = b;
                    StringBuilder m1004import2 = Cgoto.m1004import("adn checkFreqctl 未到上线可以展示 ritId = ", str, " adnSlotId = ", str2, " ruleId = ");
                    m1004import2.append(eVar.d());
                    m1004import2.append(" count = ");
                    m1004import2.append(eVar.a());
                    Logger.d(str5, m1004import2.toString());
                } else {
                    String str6 = b;
                    StringBuilder m1004import3 = Cgoto.m1004import("adn checkFreqctl 到了上线不可以展示 ritId = ", str, " adnSlotId = ", str2, " ruleId = ");
                    m1004import3.append(eVar.d());
                    m1004import3.append(" count = ");
                    m1004import3.append(eVar.a());
                    Logger.d(str6, m1004import3.toString());
                    Map<String, Pair<String, String>> map = this.f10859a;
                    String m996else = Cgoto.m996else(str, "_", str2);
                    String d = eVar.d();
                    map.put(m996else, new Pair<>(d, eVar.a() + ""));
                    return false;
                }
            } else {
                a(e, eVar.d(), 0);
                a(e, eVar.d(), f.a(eVar.e()));
                String str7 = b;
                StringBuilder m1016super = Cgoto.m1016super("adn checkFreqctl 有效期外计数需要清0，过期时间需要更新 = ");
                m1016super.append(eVar.d());
                Logger.d(str7, m1016super.toString());
            }
        }
        return true;
    }

    public void a(String str, String str2) {
        ThreadHelper.runOnMSDKThread(new a(str, str2));
    }

    public boolean a(g gVar) {
        if (gVar == null) {
            return false;
        }
        g e = e(gVar.d(), gVar.c());
        if (e == null) {
            Logger.d(b, "adn freqctl 规则为空直接存储");
            return true;
        } else if (TextUtils.isEmpty(gVar.b())) {
            Logger.d(b, "adn freqctl version 为空 清空本地数据 ");
            c(e.d(), e.c());
            return false;
        } else if (TextUtils.equals(e.b(), gVar.b())) {
            String str = b;
            StringBuilder m1016super = Cgoto.m1016super("adn freqctl version 一致 version = ");
            m1016super.append(e.b());
            m1016super.append(" 无需处理");
            Logger.d(str, m1016super.toString());
            return false;
        } else {
            String str2 = b;
            StringBuilder m1016super2 = Cgoto.m1016super("adn freqctl version不一致，缓存新规则 old version = ");
            m1016super2.append(e.b());
            m1016super2.append("  new version ");
            m1016super2.append(gVar.b());
            Logger.d(str2, m1016super2.toString());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(g gVar, String str, int i) {
        h.a().a(gVar, str, i);
    }

    private void a(g gVar, String str, long j) {
        h.a().a(gVar, str, j);
    }

    public void b(g gVar) {
        m.b().b(gVar);
    }
}
