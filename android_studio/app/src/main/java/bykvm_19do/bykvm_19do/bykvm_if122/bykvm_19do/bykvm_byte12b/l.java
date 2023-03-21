package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_byte12b;

import android.text.TextUtils;
import com.apk.Cgoto;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: IntervalShowAdnPacingControl.java */
/* loaded from: classes8.dex */
public class l {
    public static final String b;

    /* renamed from: a  reason: collision with root package name */
    public Map<String, Long> f10862a;

    /* compiled from: IntervalShowAdnPacingControl.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f10863a;
        public final /* synthetic */ String b;

        public a(String str, String str2) {
            this.f10863a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = l.b;
            StringBuilder m1016super = Cgoto.m1016super("adn updateShowPacingTime ritId = ");
            m1016super.append(this.f10863a);
            m1016super.append(" adnSlotId = ");
            m1016super.append(this.b);
            Logger.d(str, m1016super.toString());
            i d = l.this.d(this.f10863a, this.b);
            if (d == null || !d.a()) {
                return;
            }
            Date date = new Date();
            String str2 = l.b;
            StringBuilder m1016super2 = Cgoto.m1016super("adn updateShowPacingTime save time = ");
            m1016super2.append(f.b(date.getTime()));
            Logger.d(str2, m1016super2.toString());
            l.this.a(this.f10863a, this.b, date.getTime());
        }
    }

    /* compiled from: IntervalShowAdnPacingControl.java */
    /* loaded from: classes8.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public static l f10864a = new l(null);
    }

    static {
        StringBuilder m1016super = Cgoto.m1016super("TTMediationSDK_");
        m1016super.append(l.class.getSimpleName());
        b = m1016super.toString();
    }

    public /* synthetic */ l(a aVar) {
        this();
    }

    public static l b() {
        return b.f10864a;
    }

    public long c(String str, String str2) {
        Map<String, Long> map = this.f10862a;
        Long l = map.get(str + "_" + str2);
        if (l == null) {
            return -2L;
        }
        return l.longValue();
    }

    public i d(String str, String str2) {
        return j.a().b(str, str2);
    }

    public void e(String str, String str2) {
        ThreadHelper.runOnMSDKThread(new a(str, str2));
    }

    public l() {
        this.f10862a = new ConcurrentHashMap();
    }

    public void b(i iVar) {
        j.a().a(iVar);
    }

    public boolean a(String str, String str2) {
        String str3 = b;
        Logger.d(str3, "adn checkPacing ritId = " + str + " adnSlotId = " + str2);
        i d = d(str, str2);
        if (d != null && d.a() && d.l()) {
            long time = new Date().getTime();
            long k = d.k();
            long i = d.i() + d.k();
            String str4 = b;
            StringBuilder m1016super = Cgoto.m1016super("adn checkPacing currentTime = ");
            m1016super.append(f.b(time));
            m1016super.append(" showTime = ");
            m1016super.append(f.b(k));
            m1016super.append(" pacingBean.getPacing() = ");
            m1016super.append(d.i());
            m1016super.append(" pacingTime = ");
            m1016super.append(f.b(i));
            Logger.d(str4, m1016super.toString());
            if (time <= i) {
                this.f10862a.put(Cgoto.m996else(str, "_", str2), Long.valueOf(time - k));
                return false;
            }
        }
        return true;
    }

    public void b(String str, String str2) {
        j.a().a(str, str2);
    }

    public boolean a(i iVar) {
        if (iVar == null) {
            return false;
        }
        i d = d(iVar.d(), iVar.c());
        if (d == null) {
            Logger.d(b, "adn pacing 规则为空直接存储");
            return true;
        } else if (TextUtils.isEmpty(iVar.j())) {
            Logger.d(b, "adn pacing ruleId 为空 清空本地数据 ");
            b(iVar.d(), iVar.c());
            return false;
        } else if (TextUtils.equals(d.j(), iVar.j())) {
            String str = b;
            StringBuilder m1016super = Cgoto.m1016super("adn pacing ruleId 一致 ruleId = ");
            m1016super.append(d.j());
            m1016super.append(" 无需处理");
            Logger.d(str, m1016super.toString());
            return false;
        } else {
            String str2 = b;
            StringBuilder m1016super2 = Cgoto.m1016super("adn pacing ruleId不一致，缓存新规则 old ruleId = ");
            m1016super2.append(d.j());
            m1016super2.append("  new ruleId = ");
            m1016super2.append(iVar.j());
            Logger.d(str2, m1016super2.toString());
            b(iVar.d(), iVar.c());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, long j) {
        j.a().a(str, str2, j);
    }
}
