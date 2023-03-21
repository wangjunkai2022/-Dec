package com.apk;

import android.content.ContentValues;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.biquge.ebook.app.bean.WebReadLockBean;
import com.umeng.analytics.AnalyticsConfig;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import org.litepal.LitePal;
import org.litepal.crud.callback.UpdateOrDeleteCallback;
/* compiled from: WebReadLockHelper.java */
/* loaded from: classes8.dex */
public class a1 extends n0 {

    /* renamed from: private  reason: not valid java name */
    public static a1 f4private;

    /* renamed from: finally  reason: not valid java name */
    public WebReadLockBean f5finally;

    /* renamed from: package  reason: not valid java name */
    public boolean f6package;

    /* compiled from: WebReadLockHelper.java */
    /* renamed from: com.apk.a1$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends TimerTask {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ k1 f7do;

        public Cdo(k1 k1Var) {
            this.f7do = k1Var;
        }

        /* JADX WARN: Code restructure failed: missing block: B:34:0x0074, code lost:
            if (r0.f3163new > (r0.f3160if ? r0.f3154do : r0.f3158for)) goto L15;
         */
        /* JADX WARN: Removed duplicated region for block: B:39:0x007c A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
        @Override // java.util.TimerTask, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r11 = this;
                com.apk.a1 r0 = com.apk.a1.this
                com.apk.k1 r1 = r11.f7do
                boolean r2 = r0.f6package
                if (r2 != 0) goto La
                goto La5
            La:
                boolean r2 = r0.f3148break
                if (r2 == 0) goto L10
                goto La5
            L10:
                java.lang.String r2 = "SP_EXTRA_CHAPS_TODAY_KEY_WEB"
                java.lang.String r3 = "SP_READ_TIME_SAVE_KEY_WEB"
                r4 = 0
                r6 = 0
                boolean r7 = r0.f3157final     // Catch: java.lang.Exception -> L77
                r8 = 1
                if (r7 == 0) goto L39
                java.lang.String r7 = com.apk.kg.m1498if()     // Catch: java.lang.Exception -> L77
                java.lang.String r9 = ""
                java.lang.String r9 = com.apk.tt.m2620do(r2, r9)     // Catch: java.lang.Exception -> L77
                boolean r10 = android.text.TextUtils.isEmpty(r9)     // Catch: java.lang.Exception -> L77
                if (r10 == 0) goto L32
                com.tencent.mmkv.MMKV r9 = com.apk.tt.f4763do     // Catch: java.lang.Exception -> L77
                r9.putString(r2, r7)     // Catch: java.lang.Exception -> L77
                goto L39
            L32:
                boolean r2 = r7.equals(r9)     // Catch: java.lang.Exception -> L77
                if (r2 != 0) goto L39
                goto L78
            L39:
                boolean r2 = r0.f3169this     // Catch: java.lang.Exception -> L77
                if (r2 == 0) goto L67
                boolean r2 = com.apk.ze.D(r3)     // Catch: java.lang.Exception -> L77
                if (r2 != 0) goto L4c
                long r9 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L77
                com.tencent.mmkv.MMKV r2 = com.apk.tt.f4763do     // Catch: java.lang.Exception -> L77
                r2.putLong(r3, r9)     // Catch: java.lang.Exception -> L77
            L4c:
                long r2 = com.apk.ze.a(r3, r4)     // Catch: java.lang.Exception -> L77
                long r9 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L77
                long r9 = r9 - r2
                long r2 = java.lang.Math.abs(r9)     // Catch: java.lang.Exception -> L77
                boolean r7 = r0.f3160if     // Catch: java.lang.Exception -> L77
                if (r7 == 0) goto L60
                long r9 = r0.f3154do     // Catch: java.lang.Exception -> L77
                goto L62
            L60:
                long r9 = r0.f3158for     // Catch: java.lang.Exception -> L77
            L62:
                int r7 = (r2 > r9 ? 1 : (r2 == r9 ? 0 : -1))
                if (r7 <= 0) goto L67
                goto L78
            L67:
                long r2 = r0.f3163new     // Catch: java.lang.Exception -> L77
                boolean r7 = r0.f3160if     // Catch: java.lang.Exception -> L77
                if (r7 == 0) goto L70
                long r9 = r0.f3154do     // Catch: java.lang.Exception -> L77
                goto L72
            L70:
                long r9 = r0.f3158for     // Catch: java.lang.Exception -> L77
            L72:
                int r7 = (r2 > r9 ? 1 : (r2 == r9 ? 0 : -1))
                if (r7 <= 0) goto L77
                goto L78
            L77:
                r8 = 0
            L78:
                r0.f3148break = r8
                if (r8 == 0) goto L81
                if (r1 == 0) goto L81
                r1.mo740do()
            L81:
                com.biquge.ebook.app.bean.WebReadLockBean r1 = r0.f5finally
                if (r1 == 0) goto La5
                long r1 = r0.f3163new
                r7 = 10000(0x2710, double:4.9407E-320)
                long r1 = r1 + r7
                r0.f3163new = r1
                android.content.ContentValues r0 = new android.content.ContentValues     // Catch: java.lang.Exception -> La5
                r0.<init>()     // Catch: java.lang.Exception -> La5
                int r3 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
                if (r3 == 0) goto L9e
                java.lang.String r3 = "readUseTime"
                java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: java.lang.Exception -> La5
                r0.put(r3, r1)     // Catch: java.lang.Exception -> La5
            L9e:
                java.lang.Class<com.biquge.ebook.app.bean.WebReadLockBean> r1 = com.biquge.ebook.app.bean.WebReadLockBean.class
                java.lang.String[] r2 = new java.lang.String[r6]     // Catch: java.lang.Exception -> La5
                org.litepal.LitePal.updateAll(r1, r0, r2)     // Catch: java.lang.Exception -> La5
            La5:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.a1.Cdo.run():void");
        }
    }

    /* compiled from: WebReadLockHelper.java */
    /* renamed from: com.apk.a1$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements UpdateOrDeleteCallback {
        public Cif() {
        }

        @Override // org.litepal.crud.callback.UpdateOrDeleteCallback
        public void onFinish(int i) {
            a1.this.f3148break = false;
        }
    }

    /* renamed from: this  reason: not valid java name */
    public static a1 m12this() {
        if (f4private == null) {
            synchronized (a1.class) {
                if (f4private == null) {
                    f4private = new a1();
                }
            }
        }
        return f4private;
    }

    /* renamed from: break  reason: not valid java name */
    public void m13break(k1 k1Var) {
        Cfinally m797else = Cfinally.m797else();
        if ((m797else.f1352goto == null || !m797else.m822super(false) || Cfinally.m796do(m797else.f1352goto, "page_rd_needgg") == null) ? false : true) {
            super.m1803goto(Cfinally.m797else().f1352goto);
            WebReadLockBean webReadLockBean = (WebReadLockBean) LitePal.findFirst(WebReadLockBean.class);
            this.f5finally = webReadLockBean;
            if (webReadLockBean == null) {
                WebReadLockBean webReadLockBean2 = new WebReadLockBean();
                this.f5finally = webReadLockBean2;
                long j = this.f3154do;
                if (j > 0) {
                    this.f3160if = true;
                    webReadLockBean2.setInterval(j);
                    this.f5finally.setInInterval(true);
                }
                this.f3155else = System.currentTimeMillis();
                this.f5finally.setReadUseTime(this.f3163new);
                this.f5finally.setStartTime(this.f3155else);
                this.f5finally.save();
            } else {
                this.f3155else = webReadLockBean.getStartTime();
                this.f3163new = this.f5finally.getReadUseTime();
                this.f3160if = this.f5finally.isInInterval();
            }
            if (this.f3160if) {
                this.f3169this = false;
                this.f3157final = false;
            }
            try {
                if (eg.m598goto("CACHE_WEB_AD_KEY")) {
                    this.f3165return = ((Integer) p0.m2001do("CACHE_WEB_AD_KEY")).intValue();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            List<g> list = this.f3166static;
            if (list == null || list.size() == 0) {
                return;
            }
            Timer timer = new Timer();
            this.f3153default = timer;
            timer.schedule(new Cdo(k1Var), 0L, FragmentStateAdapter.GRACE_WINDOW_TIME_MS);
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public void m14catch() {
        List<g> list = this.f3166static;
        if (list == null || list.size() == 0) {
            return;
        }
        this.f3160if = false;
        this.f5finally.setInInterval(false);
        this.f3155else = System.currentTimeMillis();
        this.f3163new = 0L;
        if (this.f3169this) {
            tt.f4763do.putLong("SP_READ_TIME_SAVE_KEY_WEB", System.currentTimeMillis());
        }
        ze.W("SP_EXTRA_CHAPS_TODAY_KEY_WEB");
        ContentValues contentValues = new ContentValues();
        contentValues.put("inInterval", Boolean.valueOf(this.f3160if));
        contentValues.put(AnalyticsConfig.RTD_START_TIME, Long.valueOf(this.f3155else));
        contentValues.put("readUseTime", Long.valueOf(this.f3163new));
        LitePal.updateAllAsync(WebReadLockBean.class, contentValues, new String[0]).listen(new Cif());
    }
}
