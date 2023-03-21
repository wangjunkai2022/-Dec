package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.recyclerview.widget.ItemTouchHelper;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.l0;
import bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1.y;
import com.apk.Cgoto;
import com.apk.os;
import com.baidu.tts.client.SpeechSynthesizer;
import com.bytedance.msdk.adapter.util.Logger;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.base.TTBaseAd;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ServerSideRewardVerifier.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public int f10803a;
    public int b;
    public RewardItem f;
    public AdSlot l;
    public TTBaseAd m;
    public long n;
    public String o;
    public i p;
    public boolean c = false;
    public boolean d = false;
    public long e = -1;
    public boolean g = false;
    public boolean h = false;
    public boolean i = true;
    public int j = -1;
    public String k = "";

    /* compiled from: ServerSideRewardVerifier.java */
    /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class RunnableC0031a implements Runnable {
        public RunnableC0031a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.d = true;
        }
    }

    /* compiled from: ServerSideRewardVerifier.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.c = true;
        }
    }

    /* compiled from: ServerSideRewardVerifier.java */
    /* loaded from: classes8.dex */
    public class c implements Runnable {

        /* compiled from: ServerSideRewardVerifier.java */
        /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public class RunnableC0032a implements Runnable {

            /* compiled from: ServerSideRewardVerifier.java */
            /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes8.dex */
            public class C0033a implements RewardItem {
                public C0033a() {
                }

                @Override // com.bytedance.msdk.api.reward.RewardItem
                public float getAmount() {
                    if (a.this.l != null) {
                        return a.this.l.getRewardAmount();
                    }
                    return 0.0f;
                }

                @Override // com.bytedance.msdk.api.reward.RewardItem
                public Map<String, Object> getCustomData() {
                    HashMap hashMap = new HashMap();
                    hashMap.put(RewardItem.KEY_IS_GROMORE_SERVER_SIDE_VERIFY, Boolean.TRUE);
                    hashMap.put("transId", a.this.o);
                    hashMap.put(RewardItem.KEY_REASON, 0);
                    hashMap.put("gromoreExtra", (a.this.l == null || a.this.l.getCustomData() == null) ? "" : a.this.l.getCustomData().get("gromoreExtra"));
                    hashMap.put(RewardItem.KEY_ERROR_CODE, Integer.valueOf(a.this.j));
                    hashMap.put(RewardItem.KEY_ERROR_MSG, a.this.k);
                    return hashMap;
                }

                @Override // com.bytedance.msdk.api.reward.RewardItem
                public String getRewardName() {
                    return a.this.l != null ? a.this.l.getRewardName() : "";
                }

                @Override // com.bytedance.msdk.api.reward.RewardItem
                public boolean rewardVerify() {
                    return false;
                }
            }

            public RunnableC0032a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!a.this.c) {
                    if (a.this.p == null || a.this.h) {
                        return;
                    }
                    Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调兜底进来，给开发者verify回调");
                    a.this.h = true;
                    RewardItem c0033a = new C0033a();
                    i iVar = a.this.p;
                    if (a.this.f != null) {
                        c0033a = a.this.f;
                    }
                    iVar.onRewardVerify(c0033a);
                    return;
                }
                Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调兜底进来，已经destroy了, 直接return");
            }
        }

        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.c) {
                Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，已经destroy, 直接return");
                return;
            }
            a.this.g = true;
            if (a.this.f != null) {
                if (a.this.p == null || a.this.h) {
                    return;
                }
                Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，已经有结果，直接给开发者回调");
                a.this.h = true;
                a.this.p.onRewardVerify(a.this.f);
                return;
            }
            if (a.this.e != -1) {
                if (SystemClock.elapsedRealtime() - a.this.e > ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS) {
                    Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，后进来但大于2s，发起请求");
                    if (a.this.i) {
                        a.this.h();
                    } else {
                        Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来准备请求，但是不能重试");
                    }
                }
            } else {
                Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来，先进来发起请求");
                a.this.e = SystemClock.elapsedRealtime();
                if (a.this.i) {
                    a.this.h();
                } else {
                    Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- verify回调进来准备请求，但是不能重试");
                }
            }
            ThreadHelper.postDelayOnMSDKThread(new RunnableC0032a(), TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
        }
    }

    /* compiled from: ServerSideRewardVerifier.java */
    /* loaded from: classes8.dex */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!a.this.c) {
                if (a.this.f == null && !a.this.h) {
                    if (a.this.e != -1) {
                        if (SystemClock.elapsedRealtime() - a.this.e > ItemTouchHelper.Callback.DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS) {
                            Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来，后进来但大于2s，发起请求");
                            if (a.this.i) {
                                a.this.h();
                                return;
                            } else {
                                Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来准备请求，但是不能重试");
                                return;
                            }
                        }
                        return;
                    }
                    Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来，先进来发起请求");
                    a.this.e = SystemClock.elapsedRealtime();
                    if (a.this.i) {
                        a.this.h();
                        return;
                    } else {
                        Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来准备请求，但是不能重试");
                        return;
                    }
                }
                StringBuilder m1016super = Cgoto.m1016super("--==-- complete回调进来，已经有响应(");
                m1016super.append(a.this.f != null);
                m1016super.append(")或已经给出开发者回调(");
                m1016super.append(a.this.h);
                m1016super.append("), 直接return");
                Logger.d("GROMORE_SS_REWARD_VERIFY", m1016super.toString());
                return;
            }
            Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- complete回调进来，已经destroy, 直接return");
        }
    }

    /* compiled from: ServerSideRewardVerifier.java */
    /* loaded from: classes8.dex */
    public class e implements RewardItem {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f10810a;
        public final /* synthetic */ int b;
        public final /* synthetic */ String c;
        public final /* synthetic */ int d;

        public e(boolean z, int i, String str, int i2) {
            this.f10810a = z;
            this.b = i;
            this.c = str;
            this.d = i2;
        }

        @Override // com.bytedance.msdk.api.reward.RewardItem
        public float getAmount() {
            return this.b;
        }

        @Override // com.bytedance.msdk.api.reward.RewardItem
        public Map<String, Object> getCustomData() {
            HashMap hashMap = new HashMap();
            hashMap.put(RewardItem.KEY_IS_GROMORE_SERVER_SIDE_VERIFY, Boolean.TRUE);
            hashMap.put("transId", a.this.o);
            hashMap.put(RewardItem.KEY_REASON, Integer.valueOf(this.d));
            hashMap.put("gromoreExtra", (a.this.l == null || a.this.l.getCustomData() == null) ? "" : a.this.l.getCustomData().get("gromoreExtra"));
            hashMap.put(RewardItem.KEY_ERROR_CODE, Integer.valueOf(a.this.j));
            hashMap.put(RewardItem.KEY_ERROR_MSG, a.this.k);
            return hashMap;
        }

        @Override // com.bytedance.msdk.api.reward.RewardItem
        public String getRewardName() {
            return this.c;
        }

        @Override // com.bytedance.msdk.api.reward.RewardItem
        public boolean rewardVerify() {
            return this.f10810a;
        }
    }

    /* compiled from: ServerSideRewardVerifier.java */
    /* loaded from: classes8.dex */
    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.e == -1 && !a.this.c && !a.this.d) {
                Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- showListen计时到时间，发起请求");
                a.this.h();
                ThreadHelper.postDelayOnMSDKThread(new h(1), TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
                ThreadHelper.postDelayOnMSDKThread(new h(2), 6000L);
                ThreadHelper.postDelayOnMSDKThread(new h(3), 9000L);
                return;
            }
            Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- showListen计时到时间，已经destroy，或者skip，或者比complete/verify回调还晚，直接return");
        }
    }

    /* compiled from: ServerSideRewardVerifier.java */
    /* loaded from: classes8.dex */
    public class g extends bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a {

        /* compiled from: ServerSideRewardVerifier.java */
        /* renamed from: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a$g$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public class RunnableC0034a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b f10813a;

            public RunnableC0034a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b bVar) {
                this.f10813a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.a(this.f10813a);
            }
        }

        /* compiled from: ServerSideRewardVerifier.java */
        /* loaded from: classes8.dex */
        public class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ IOException f10814a;

            public b(g gVar, IOException iOException) {
                this.f10814a = iOException;
            }

            @Override // java.lang.Runnable
            public void run() {
                StringBuilder m1016super = Cgoto.m1016super("--==-- ServerSide verify http error: ");
                m1016super.append(this.f10814a.toString());
                Logger.d("GROMORE_SS_REWARD_VERIFY", m1016super.toString());
            }
        }

        public g() {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a
        public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.b bVar, bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b bVar2) {
            ThreadHelper.runOnMSDKThread(new RunnableC0034a(bVar2));
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.a
        public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.b bVar, IOException iOException) {
            ThreadHelper.runOnMSDKThread(new b(this, iOException));
        }
    }

    /* compiled from: ServerSideRewardVerifier.java */
    /* loaded from: classes8.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f10815a;

        public h(int i) {
            this.f10815a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f != null || a.this.h || !a.this.i || a.this.c || a.this.d) {
                return;
            }
            StringBuilder m1016super = Cgoto.m1016super("--==-- ServerSide reward verify 进行第");
            m1016super.append(this.f10815a);
            m1016super.append("次重试请求");
            Logger.d("GROMORE_SS_REWARD_VERIFY", m1016super.toString());
            a.this.h();
        }
    }

    /* compiled from: ServerSideRewardVerifier.java */
    /* loaded from: classes8.dex */
    public interface i {
        void onRewardVerify(RewardItem rewardItem);
    }

    public a(String str) {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c c2;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_long108.c f2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.f();
        if (f2 != null && (c2 = f2.c(str)) != null) {
            this.f10803a = c2.v();
            this.b = c2.u();
        }
        if (this.f10803a < 0) {
            this.f10803a = SpeechSynthesizer.MAX_QUEUE_SIZE;
        }
    }

    private String f() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_version", "3.6.0.1");
            jSONObject.put("user_agent", os.f3494if);
            jSONObject.put("network", y.b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.a.d()));
            jSONObject.put("play_start_ts", this.n);
            jSONObject.put("play_end_ts", System.currentTimeMillis());
            String str2 = "";
            jSONObject.put("user_id", this.l != null ? this.l.getUserID() : "");
            if (TextUtils.isEmpty(this.o)) {
                str = UUID.randomUUID().toString();
                this.o = str;
            } else {
                str = this.o;
            }
            jSONObject.put("trans_id", str);
            jSONObject.put("link_id", this.l != null ? this.l.getLinkedId() : "");
            jSONObject.put("prime_rit", this.l != null ? this.l.getAdUnitId() : "");
            jSONObject.put("adn_rit", this.m != null ? this.m.getAdNetworkSlotId() : "");
            jSONObject.put("adn_name", this.m != null ? this.m.getAdNetWorkName() : "");
            jSONObject.put("reward_name", this.l != null ? this.l.getRewardName() : "");
            jSONObject.put("reward_amount", this.l != null ? this.l.getRewardAmount() : 0);
            if (this.l != null && this.l.getCustomData() != null) {
                str2 = this.l.getCustomData().get("gromoreExtra");
            }
            jSONObject.put("media_extra", str2);
            if (this.l != null && this.l.getScenarioId() != null) {
                jSONObject.put("scenario_id", this.l.getScenarioId());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return l0.a(jSONObject).toString();
    }

    private void g() {
        Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- showListen回调进来，开始计时");
        ThreadHelper.postDelayOnMSDKThread(new f(), this.f10803a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.bykvm_if122.c c2 = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_if122.b.b().a().c();
        c2.b(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.c.f());
        String p = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().p();
        if (!TextUtils.isEmpty(p)) {
            c2.a("X-Tt-Env", p);
            c2.a("x-use-ppe", "1");
        }
        c2.a("User-Agent", os.f3494if);
        c2.c(f());
        c2.a(new g());
    }

    public void e() {
        ThreadHelper.runOnMSDKThread(new d());
    }

    public boolean b() {
        boolean z = this.b == 1;
        Logger.d("GROMORE_SS_REWARD_VERIFY", "--==-- 判断是否开启了M服务端激励验证： " + z);
        return z;
    }

    public void c() {
        ThreadHelper.runOnMSDKThread(new RunnableC0031a());
    }

    public void d() {
        ThreadHelper.runOnMSDKThread(new c());
    }

    public void a() {
        ThreadHelper.runOnMSDKThread(new b());
    }

    public void a(AdSlot adSlot, TTBaseAd tTBaseAd) {
        this.n = System.currentTimeMillis();
        this.l = adSlot;
        this.m = tTBaseAd;
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00dd A[Catch: JSONException -> 0x013d, TryCatch #3 {JSONException -> 0x013d, blocks: (B:9:0x000f, B:11:0x003e, B:13:0x0046, B:15:0x004a, B:17:0x0050, B:20:0x007b, B:24:0x0084, B:44:0x00dd, B:46:0x011a, B:48:0x011e, B:50:0x0122, B:51:0x0131, B:31:0x00b1, B:52:0x0137, B:39:0x00ce, B:33:0x00bf, B:26:0x008e), top: B:57:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0131 A[Catch: JSONException -> 0x013d, TryCatch #3 {JSONException -> 0x013d, blocks: (B:9:0x000f, B:11:0x003e, B:13:0x0046, B:15:0x004a, B:17:0x0050, B:20:0x007b, B:24:0x0084, B:44:0x00dd, B:46:0x011a, B:48:0x011e, B:50:0x0122, B:51:0x0131, B:31:0x00b1, B:52:0x0137, B:39:0x00ce, B:33:0x00bf, B:26:0x008e), top: B:57:0x000f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b r14) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do.a.a(bykvm_19do.bykvm_19do.bykvm_for12.bykvm_19do.bykvm_19do.bykvm_for12.b):void");
    }

    public void a(i iVar) {
        this.p = iVar;
    }
}
