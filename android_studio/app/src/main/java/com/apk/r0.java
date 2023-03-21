package com.apk;

import android.content.ContentValues;
import android.text.TextUtils;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.biquge.ebook.app.bean.ReadLockBean;
import com.umeng.analytics.AnalyticsConfig;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
import org.litepal.crud.callback.UpdateOrDeleteCallback;

/* compiled from: ReadLockHelper.java */
/* loaded from: classes8.dex */
public class r0 extends n0 {

    /* renamed from: strictfp  reason: not valid java name */
    public static r0 f3973strictfp;

    /* renamed from: abstract  reason: not valid java name */
    public boolean f3974abstract;

    /* renamed from: continue  reason: not valid java name */
    public boolean f3975continue;

    /* renamed from: finally  reason: not valid java name */
    public ReadLockBean f3976finally;

    /* renamed from: package  reason: not valid java name */
    public k1 f3977package;

    /* renamed from: private  reason: not valid java name */
    public boolean f3978private;

    /* compiled from: ReadLockHelper.java */
    /* renamed from: com.apk.r0$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends TimerTask {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ k1 f3979do;

        public Cdo(k1 k1Var) {
            this.f3979do = k1Var;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            r0.this.m2207while(this.f3979do, true);
        }
    }

    /* compiled from: ReadLockHelper.java */
    /* renamed from: com.apk.r0$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements UpdateOrDeleteCallback {
        public Cif() {
        }

        @Override // org.litepal.crud.callback.UpdateOrDeleteCallback
        public void onFinish(int i) {
            r0.this.f3148break = false;
        }
    }

    /* renamed from: break  reason: not valid java name */
    public static boolean m2198break(boolean z, boolean z2, long j) {
        if (z) {
            String m1498if = kg.m1498if();
            String m2620do = tt.m2620do("SP_EXTRA_CHAPS_TODAY_KEY", "");
            if (!TextUtils.isEmpty(m2620do)) {
                return !m1498if.equals(m2620do);
            }
            tt.f4763do.putString("SP_EXTRA_CHAPS_TODAY_KEY", m1498if);
            return false;
        } else if (z2) {
            if (ze.a("SP_EXTRA_CHAPS_HOUR_KEY", 0L) != 0) {
                return Math.abs(System.currentTimeMillis() - ze.a("SP_EXTRA_CHAPS_HOUR_KEY", 0L)) > j;
            }
            tt.f4763do.putLong("SP_EXTRA_CHAPS_HOUR_KEY", System.currentTimeMillis());
            return false;
        } else {
            return false;
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public static r0 m2199catch() {
        if (f3973strictfp == null) {
            synchronized (r0.class) {
                if (f3973strictfp == null) {
                    f3973strictfp = new r0();
                }
            }
        }
        return f3973strictfp;
    }

    /* renamed from: final  reason: not valid java name */
    public static boolean m2200final(String str) {
        return ze.D("SP_NOVEL_CHAPTER_NEED_VIDEO_AD_KEY" + str + "#");
    }

    /* renamed from: import  reason: not valid java name */
    public static void m2201import(long j, long j2, String str) {
        try {
            ContentValues contentValues = new ContentValues();
            if (j != 0) {
                contentValues.put(AnalyticsConfig.RTD_START_TIME, Long.valueOf(j));
            }
            if (j2 != 0) {
                contentValues.put("readUseTime", Long.valueOf(j2));
            }
            if (!TextUtils.isEmpty(str)) {
                contentValues.put("readChapterIds", str);
            }
            LitePal.updateAll(ReadLockBean.class, contentValues, new String[0]);
        } catch (Exception unused) {
        }
    }

    /* renamed from: class  reason: not valid java name */
    public String m2202class() {
        if (this.f3978private) {
            return ze.q(R.string.read_reward_unlock_chapter_tips_txt);
        }
        if (this.f3151class > 0) {
            this.f3150catch = true;
        }
        return this.f3150catch ? ze.r(R.string.read_reward_video_chapter_ad_tips_txt, Cgoto.m1019this(new StringBuilder(), this.f3151class, "")) : ze.r(R.string.read_reward_video_from_ad_tips_txt, m1806try());
    }

    /* renamed from: const  reason: not valid java name */
    public void m2203const(String str, String str2, k1 k1Var) {
        this.f3168switch = str;
        this.f3977package = k1Var;
        Cfinally m797else = Cfinally.m797else();
        if ((m797else.f1340case == null || !m797else.m822super(false) || Cfinally.m796do(m797else.f1340case, "viewsptoread") == null) ? false : true) {
            super.m1803goto(Cfinally.m797else().f1340case);
            ReadLockBean readLockBean = (ReadLockBean) LitePal.findFirst(ReadLockBean.class);
            this.f3976finally = readLockBean;
            if (readLockBean == null) {
                ReadLockBean readLockBean2 = new ReadLockBean();
                this.f3976finally = readLockBean2;
                long j = this.f3154do;
                if (j > 0) {
                    this.f3160if = true;
                    readLockBean2.setInterval(j);
                    this.f3976finally.setInInterval(true);
                }
                this.f3155else = System.currentTimeMillis();
                this.f3976finally.setReadUseTime(this.f3163new);
                this.f3976finally.setStartTime(this.f3155else);
                this.f3976finally.save();
            } else {
                this.f3155else = readLockBean.getStartTime();
                this.f3163new = this.f3976finally.getReadUseTime();
                this.f3159goto = this.f3976finally.getReadChapterIds();
                this.f3160if = this.f3976finally.isInInterval();
            }
            if (this.f3160if) {
                this.f3169this = false;
                this.f3157final = false;
            } else if (this.f3151class > 0) {
                this.f3150catch = true;
                this.f3152const = tt.m2620do("SP_VIEWTOPREWARD_CHAPTERS_KEY", "");
            }
            try {
                if (eg.m598goto("CACHE_NOVEL_AD_KEY")) {
                    this.f3165return = ((Integer) p0.m2001do("CACHE_NOVEL_AD_KEY")).intValue();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            List<g> list = this.f3166static;
            if (list == null || list.size() == 0) {
                return;
            }
            boolean contains = TextUtils.isEmpty(str2) ? false : str2.contains("yes");
            this.f3978private = contains;
            if (contains && !m2200final(str)) {
                this.f3148break = true;
                if (k1Var != null) {
                    k1Var.mo741for();
                }
            }
            if (this.f3978private) {
                return;
            }
            if (this.f3150catch) {
                if (m2198break(this.f3157final, this.f3167super, this.f3170throw) && m2205this() && eg.m600implements()) {
                    this.f3148break = true;
                    if (k1Var != null) {
                        k1Var.mo740do();
                        return;
                    }
                    return;
                }
                String m2620do = tt.m2620do("SP_VIEWTOPREWARD_CHAPTERS_KEY", "");
                if (!TextUtils.isEmpty(m2620do) && m2620do.contains("#") && m2620do.split("#").length >= this.f3151class && m2205this() && eg.m600implements()) {
                    this.f3148break = true;
                    if (k1Var != null) {
                        k1Var.mo740do();
                    }
                }
            }
            Timer timer = new Timer();
            this.f3153default = timer;
            timer.schedule(new Cdo(k1Var), 0L, FragmentStateAdapter.GRACE_WINDOW_TIME_MS);
        }
    }

    /* renamed from: super  reason: not valid java name */
    public /* synthetic */ void m2204super() {
        m2201import(0L, 0L, this.f3159goto);
    }

    /* renamed from: this  reason: not valid java name */
    public final boolean m2205this() {
        if (TextUtils.isEmpty(this.f3168switch) || this.f3171throws) {
            return false;
        }
        String m2620do = tt.m2620do("SP_NOVEL_REWARD_CHAPTER_ID_KEY", "");
        if (TextUtils.isEmpty(m2620do)) {
            m2620do = this.f3168switch;
            tt.f4763do.putString("SP_NOVEL_REWARD_CHAPTER_ID_KEY", m2620do);
        }
        return !m2620do.equals(this.f3168switch);
    }

    /* renamed from: throw  reason: not valid java name */
    public void m2206throw(String str, boolean z) {
        List<g> list = this.f3166static;
        if (list == null || list.size() == 0) {
            return;
        }
        if (z) {
            tt.f4763do.putString(Cgoto.m996else("SP_NOVEL_CHAPTER_NEED_VIDEO_AD_KEY", str, "#"), "");
            this.f3148break = false;
            return;
        }
        if (this.f3150catch) {
            ze.W("SP_VIEWTOPREWARD_CHAPTERS_KEY");
            this.f3152const = null;
            ze.W("SP_EXTRA_CHAPS_TODAY_KEY");
            ze.W("SP_EXTRA_CHAPS_HOUR_KEY");
            this.f3148break = false;
        }
        this.f3160if = false;
        this.f3976finally.setInInterval(false);
        this.f3155else = System.currentTimeMillis();
        this.f3163new = 0L;
        this.f3159goto = "";
        if (this.f3169this) {
            tt.f4763do.putLong("SP_READ_TIME_SAVE_KEY", System.currentTimeMillis());
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("inInterval", Boolean.valueOf(this.f3160if));
        contentValues.put(AnalyticsConfig.RTD_START_TIME, Long.valueOf(this.f3155else));
        contentValues.put("readUseTime", Long.valueOf(this.f3163new));
        contentValues.put("readChapterIds", this.f3159goto);
        LitePal.updateAllAsync(ReadLockBean.class, contentValues, new String[0]).listen(new Cif());
        if (this.f3151class > 0) {
            this.f3150catch = true;
            ze.W("SP_VIEWTOPREWARD_CHAPTERS_KEY");
            this.f3152const = null;
        }
        ze.W("SP_NOVEL_REWARD_CHAPTER_ID_KEY");
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0092, code lost:
        if (java.lang.Math.abs(r9.f3155else - java.lang.System.currentTimeMillis()) > r9.f3172try) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00a4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: while  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m2207while(com.apk.k1 r10, boolean r11) {
        /*
            r9 = this;
            boolean r0 = r9.f3975continue
            if (r0 != 0) goto L5
            return
        L5:
            boolean r0 = r9.f3148break
            if (r0 == 0) goto La
            return
        La:
            boolean r0 = r9.f3978private
            if (r0 == 0) goto Lf
            return
        Lf:
            boolean r0 = r9.f3150catch
            if (r0 == 0) goto L14
            return
        L14:
            r0 = 0
            r2 = 0
            boolean r3 = r9.f3974abstract     // Catch: java.lang.Exception -> L95
            if (r3 == 0) goto L1d
            goto L95
        L1d:
            boolean r3 = com.apk.eg.m600implements()     // Catch: java.lang.Exception -> L95
            if (r3 != 0) goto L25
            goto L95
        L25:
            boolean r3 = r9.f3169this     // Catch: java.lang.Exception -> L95
            r4 = 1
            if (r3 == 0) goto L58
            java.lang.String r3 = "SP_READ_TIME_SAVE_KEY"
            if (r11 == 0) goto L3d
            boolean r5 = com.apk.ze.D(r3)     // Catch: java.lang.Exception -> L95
            if (r5 != 0) goto L3d
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L95
            com.tencent.mmkv.MMKV r7 = com.apk.tt.f4763do     // Catch: java.lang.Exception -> L95
            r7.putLong(r3, r5)     // Catch: java.lang.Exception -> L95
        L3d:
            long r5 = com.apk.ze.a(r3, r0)     // Catch: java.lang.Exception -> L95
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L95
            long r7 = r7 - r5
            long r5 = java.lang.Math.abs(r7)     // Catch: java.lang.Exception -> L95
            boolean r3 = r9.f3160if     // Catch: java.lang.Exception -> L95
            if (r3 == 0) goto L51
            long r7 = r9.f3154do     // Catch: java.lang.Exception -> L95
            goto L53
        L51:
            long r7 = r9.f3158for     // Catch: java.lang.Exception -> L95
        L53:
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 <= 0) goto L58
            goto L96
        L58:
            long r5 = r9.f3163new     // Catch: java.lang.Exception -> L95
            boolean r3 = r9.f3160if     // Catch: java.lang.Exception -> L95
            if (r3 == 0) goto L61
            long r7 = r9.f3154do     // Catch: java.lang.Exception -> L95
            goto L63
        L61:
            long r7 = r9.f3158for     // Catch: java.lang.Exception -> L95
        L63:
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 <= 0) goto L68
            goto L96
        L68:
            boolean r3 = r9.f3160if     // Catch: java.lang.Exception -> L95
            if (r3 != 0) goto L95
            java.lang.String r3 = r9.f3159goto     // Catch: java.lang.Exception -> L95
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L95
            if (r3 != 0) goto L7e
            java.lang.String r3 = r9.f3159goto     // Catch: java.lang.Exception -> L95
            java.lang.String r5 = "#"
            java.lang.String[] r3 = r3.split(r5)     // Catch: java.lang.Exception -> L95
            int r3 = r3.length     // Catch: java.lang.Exception -> L95
            goto L7f
        L7e:
            r3 = 0
        L7f:
            int r5 = r9.f3149case     // Catch: java.lang.Exception -> L95
            if (r3 < r5) goto L95
            long r5 = r9.f3155else     // Catch: java.lang.Exception -> L95
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L95
            long r5 = r5 - r7
            long r5 = java.lang.Math.abs(r5)     // Catch: java.lang.Exception -> L95
            long r7 = r9.f3172try     // Catch: java.lang.Exception -> L95
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 <= 0) goto L95
            goto L96
        L95:
            r4 = 0
        L96:
            if (r4 == 0) goto L9f
            boolean r3 = r9.m2205this()
            if (r3 != 0) goto L9f
            goto La0
        L9f:
            r2 = r4
        La0:
            r9.f3148break = r2
            if (r2 == 0) goto La9
            if (r10 == 0) goto La9
            r10.mo740do()
        La9:
            if (r11 == 0) goto Lba
            com.biquge.ebook.app.bean.ReadLockBean r10 = r9.f3976finally
            if (r10 == 0) goto Lba
            long r10 = r9.f3163new
            r2 = 10000(0x2710, double:4.9407E-320)
            long r10 = r10 + r2
            r9.f3163new = r10
            r2 = 0
            m2201import(r0, r10, r2)
        Lba:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.r0.m2207while(com.apk.k1, boolean):void");
    }
}
