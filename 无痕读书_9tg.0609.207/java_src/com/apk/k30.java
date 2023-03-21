package com.apk;

import android.content.ContentValues;
import android.text.TextUtils;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import com.manhua.data.bean.ComicReadLockBean;
import com.umeng.analytics.AnalyticsConfig;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
import org.litepal.crud.callback.UpdateOrDeleteCallback;
/* compiled from: ComicReadLockHelper.java */
/* loaded from: classes8.dex */
public class k30 extends n0 {

    /* renamed from: continue  reason: not valid java name */
    public static k30 f2451continue;

    /* renamed from: abstract  reason: not valid java name */
    public boolean f2452abstract;

    /* renamed from: finally  reason: not valid java name */
    public ComicReadLockBean f2453finally;

    /* renamed from: package  reason: not valid java name */
    public k1 f2454package;

    /* renamed from: private  reason: not valid java name */
    public boolean f2455private;

    /* compiled from: ComicReadLockHelper.java */
    /* renamed from: com.apk.k30$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends TimerTask {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ k1 f2456do;

        public Cdo(k1 k1Var) {
            this.f2456do = k1Var;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            k30.this.m1435while(this.f2456do, true);
        }
    }

    /* compiled from: ComicReadLockHelper.java */
    /* renamed from: com.apk.k30$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements UpdateOrDeleteCallback {
        public Cif() {
        }

        @Override // org.litepal.crud.callback.UpdateOrDeleteCallback
        public void onFinish(int i) {
            k30.this.f3148break = false;
        }
    }

    /* renamed from: break  reason: not valid java name */
    public static boolean m1426break(boolean z, boolean z2, long j) {
        if (z) {
            String m1498if = kg.m1498if();
            String m2620do = tt.m2620do("SP_EXTRA_CHAPS_TODAY_COMIC_KEY", "");
            if (!TextUtils.isEmpty(m2620do)) {
                return !m1498if.equals(m2620do);
            }
            tt.f4763do.putString("SP_EXTRA_CHAPS_TODAY_COMIC_KEY", m1498if);
            return false;
        } else if (z2) {
            if (ze.a("SP_EXTRA_CHAPS_HOUR_COMIC_KEY", 0L) != 0) {
                return Math.abs(System.currentTimeMillis() - ze.a("SP_EXTRA_CHAPS_HOUR_COMIC_KEY", 0L)) > j;
            }
            tt.f4763do.putLong("SP_EXTRA_CHAPS_HOUR_COMIC_KEY", System.currentTimeMillis());
            return false;
        } else {
            return false;
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public static k30 m1427catch() {
        if (f2451continue == null) {
            synchronized (k30.class) {
                if (f2451continue == null) {
                    f2451continue = new k30();
                }
            }
        }
        return f2451continue;
    }

    /* renamed from: final  reason: not valid java name */
    public static boolean m1428final(String str) {
        return ze.D("SP_COMIC_CHAPTER_NEED_VIDEO_AD_KEY" + str + "#");
    }

    /* renamed from: import  reason: not valid java name */
    public static void m1429import(long j, long j2, String str) {
        try {
            ContentValues contentValues = new ContentValues();
            if (j != 0) {
                contentValues.put(AnalyticsConfig.RTD_START_TIME, Long.valueOf(j));
            }
            if (j2 != 0) {
                contentValues.put("readUseTime", Long.valueOf(j2));
            }
            if (str != null) {
                contentValues.put("readChapterIds", str);
            }
            LitePal.updateAll(ComicReadLockBean.class, contentValues, new String[0]);
        } catch (Exception unused) {
        }
    }

    /* renamed from: class  reason: not valid java name */
    public String m1430class() {
        if (this.f2455private) {
            return ze.q(R.string.read_reward_unlock_chapter_tips_txt);
        }
        if (this.f3151class > 0) {
            this.f3150catch = true;
        }
        return this.f3150catch ? ze.r(R.string.read_reward_video_chapter_ad_tips_txt, Cgoto.m1019this(new StringBuilder(), this.f3151class, "")) : ze.r(R.string.read_reward_video_from_ad_tips_txt, m1806try());
    }

    /* renamed from: const  reason: not valid java name */
    public void m1431const(String str, String str2, k1 k1Var) {
        this.f3168switch = str;
        this.f2454package = k1Var;
        Cfinally m797else = Cfinally.m797else();
        if ((m797else.f1347else == null || !m797else.m822super(false) || Cfinally.m796do(m797else.f1347else, "viewsptoread_mh") == null) ? false : true) {
            super.m1803goto(Cfinally.m797else().f1347else);
            ComicReadLockBean comicReadLockBean = (ComicReadLockBean) LitePal.findFirst(ComicReadLockBean.class);
            this.f2453finally = comicReadLockBean;
            if (comicReadLockBean == null) {
                ComicReadLockBean comicReadLockBean2 = new ComicReadLockBean();
                this.f2453finally = comicReadLockBean2;
                long j = this.f3154do;
                if (j > 0) {
                    this.f3160if = true;
                    comicReadLockBean2.setInterval(j);
                    this.f2453finally.setInInterval(true);
                }
                this.f3155else = System.currentTimeMillis();
                this.f2453finally.setReadUseTime(this.f3163new);
                this.f2453finally.setStartTime(this.f3155else);
                this.f2453finally.save();
            } else {
                this.f3155else = comicReadLockBean.getStartTime();
                this.f3163new = this.f2453finally.getReadUseTime();
                this.f3159goto = this.f2453finally.getReadChapterIds();
                this.f3160if = this.f2453finally.isInInterval();
            }
            if (this.f3160if) {
                this.f3169this = false;
                this.f3157final = false;
            } else if (this.f3151class > 0) {
                this.f3150catch = true;
                this.f3152const = tt.m2620do("SP_VIEWTOPREWARD_COMIC_CHAPTERS_KEY", "");
            }
            try {
                if (eg.m598goto("CACHE_COMIC_AD_KEY")) {
                    this.f3165return = ((Integer) p0.m2001do("CACHE_COMIC_AD_KEY")).intValue();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            List<g> list = this.f3166static;
            if (list == null || list.size() == 0) {
                return;
            }
            boolean contains = TextUtils.isEmpty(str2) ? false : str2.contains("yes");
            this.f2455private = contains;
            if (contains && !m1428final(str)) {
                this.f3148break = true;
                if (k1Var != null) {
                    k1Var.mo741for();
                }
            }
            if (this.f2455private) {
                return;
            }
            if (this.f3150catch) {
                if (m1426break(this.f3157final, this.f3167super, this.f3170throw) && m1433this() && eg.m600implements()) {
                    this.f3148break = true;
                    if (k1Var != null) {
                        k1Var.mo740do();
                        return;
                    }
                    return;
                }
                String m2620do = tt.m2620do("SP_VIEWTOPREWARD_COMIC_CHAPTERS_KEY", "");
                if (!TextUtils.isEmpty(m2620do) && m2620do.contains("#") && m2620do.split("#").length >= this.f3151class && m1433this() && eg.m600implements()) {
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
    public /* synthetic */ void m1432super() {
        m1429import(0L, 0L, this.f3159goto);
    }

    /* renamed from: this  reason: not valid java name */
    public final boolean m1433this() {
        if (TextUtils.isEmpty(this.f3168switch) || this.f3171throws) {
            return false;
        }
        String m2620do = tt.m2620do("SP_COMIC_REWARD_CHAPTER_ID_KEY", "");
        if (TextUtils.isEmpty(m2620do)) {
            m2620do = this.f3168switch;
            tt.f4763do.putString("SP_COMIC_REWARD_CHAPTER_ID_KEY", m2620do);
        }
        return !m2620do.equals(this.f3168switch);
    }

    /* renamed from: throw  reason: not valid java name */
    public void m1434throw(String str, boolean z) {
        List<g> list = this.f3166static;
        if (list == null || list.size() == 0) {
            return;
        }
        if (z) {
            tt.f4763do.putString(Cgoto.m996else("SP_COMIC_CHAPTER_NEED_VIDEO_AD_KEY", str, "#"), "");
            this.f3148break = false;
            return;
        }
        if (this.f3150catch) {
            ze.W("SP_VIEWTOPREWARD_COMIC_CHAPTERS_KEY");
            this.f3152const = null;
            ze.W("SP_EXTRA_CHAPS_TODAY_COMIC_KEY");
            ze.W("SP_EXTRA_CHAPS_HOUR_COMIC_KEY");
            this.f3148break = false;
        }
        this.f3160if = false;
        this.f2453finally.setInInterval(false);
        this.f3155else = System.currentTimeMillis();
        this.f3163new = 0L;
        this.f3159goto = "";
        if (this.f3169this) {
            tt.f4763do.putLong("SP_READ_TIME_SAVE_KEY_COMIC", System.currentTimeMillis());
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("inInterval", Boolean.valueOf(this.f3160if));
        contentValues.put(AnalyticsConfig.RTD_START_TIME, Long.valueOf(this.f3155else));
        contentValues.put("readUseTime", Long.valueOf(this.f3163new));
        contentValues.put("readChapterIds", this.f3159goto);
        LitePal.updateAllAsync(ComicReadLockBean.class, contentValues, new String[0]).listen(new Cif());
        if (this.f3151class > 0) {
            this.f3150catch = true;
            ze.W("SP_VIEWTOPREWARD_COMIC_CHAPTERS_KEY");
            this.f3152const = null;
        }
        ze.W("SP_COMIC_REWARD_CHAPTER_ID_KEY");
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x008c, code lost:
        if (java.lang.Math.abs(r9.f3155else - java.lang.System.currentTimeMillis()) > r9.f3172try) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x009e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* renamed from: while  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1435while(com.apk.k1 r10, boolean r11) {
        /*
            r9 = this;
            boolean r0 = r9.f2452abstract
            if (r0 != 0) goto L5
            return
        L5:
            boolean r0 = r9.f3148break
            if (r0 == 0) goto La
            return
        La:
            boolean r0 = r9.f2455private
            if (r0 == 0) goto Lf
            return
        Lf:
            boolean r0 = r9.f3150catch
            if (r0 == 0) goto L14
            return
        L14:
            r0 = 0
            r2 = 0
            boolean r3 = com.apk.eg.m600implements()     // Catch: java.lang.Exception -> L8f
            if (r3 != 0) goto L1f
            goto L8f
        L1f:
            boolean r3 = r9.f3169this     // Catch: java.lang.Exception -> L8f
            r4 = 1
            if (r3 == 0) goto L52
            java.lang.String r3 = "SP_READ_TIME_SAVE_KEY_COMIC"
            if (r11 == 0) goto L37
            boolean r5 = com.apk.ze.D(r3)     // Catch: java.lang.Exception -> L8f
            if (r5 != 0) goto L37
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L8f
            com.tencent.mmkv.MMKV r7 = com.apk.tt.f4763do     // Catch: java.lang.Exception -> L8f
            r7.putLong(r3, r5)     // Catch: java.lang.Exception -> L8f
        L37:
            long r5 = com.apk.ze.a(r3, r0)     // Catch: java.lang.Exception -> L8f
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L8f
            long r7 = r7 - r5
            long r5 = java.lang.Math.abs(r7)     // Catch: java.lang.Exception -> L8f
            boolean r3 = r9.f3160if     // Catch: java.lang.Exception -> L8f
            if (r3 == 0) goto L4b
            long r7 = r9.f3154do     // Catch: java.lang.Exception -> L8f
            goto L4d
        L4b:
            long r7 = r9.f3158for     // Catch: java.lang.Exception -> L8f
        L4d:
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 <= 0) goto L52
            goto L90
        L52:
            long r5 = r9.f3163new     // Catch: java.lang.Exception -> L8f
            boolean r3 = r9.f3160if     // Catch: java.lang.Exception -> L8f
            if (r3 == 0) goto L5b
            long r7 = r9.f3154do     // Catch: java.lang.Exception -> L8f
            goto L5d
        L5b:
            long r7 = r9.f3158for     // Catch: java.lang.Exception -> L8f
        L5d:
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 <= 0) goto L62
            goto L90
        L62:
            boolean r3 = r9.f3160if     // Catch: java.lang.Exception -> L8f
            if (r3 != 0) goto L8f
            java.lang.String r3 = r9.f3159goto     // Catch: java.lang.Exception -> L8f
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L8f
            if (r3 != 0) goto L78
            java.lang.String r3 = r9.f3159goto     // Catch: java.lang.Exception -> L8f
            java.lang.String r5 = "#"
            java.lang.String[] r3 = r3.split(r5)     // Catch: java.lang.Exception -> L8f
            int r3 = r3.length     // Catch: java.lang.Exception -> L8f
            goto L79
        L78:
            r3 = 0
        L79:
            int r5 = r9.f3149case     // Catch: java.lang.Exception -> L8f
            if (r3 < r5) goto L8f
            long r5 = r9.f3155else     // Catch: java.lang.Exception -> L8f
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L8f
            long r5 = r5 - r7
            long r5 = java.lang.Math.abs(r5)     // Catch: java.lang.Exception -> L8f
            long r7 = r9.f3172try     // Catch: java.lang.Exception -> L8f
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 <= 0) goto L8f
            goto L90
        L8f:
            r4 = 0
        L90:
            if (r4 == 0) goto L99
            boolean r3 = r9.m1433this()
            if (r3 != 0) goto L99
            goto L9a
        L99:
            r2 = r4
        L9a:
            r9.f3148break = r2
            if (r2 == 0) goto La3
            if (r10 == 0) goto La3
            r10.mo740do()
        La3:
            if (r11 == 0) goto Lb4
            com.manhua.data.bean.ComicReadLockBean r10 = r9.f2453finally
            if (r10 == 0) goto Lb4
            long r10 = r9.f3163new
            r2 = 10000(0x2710, double:4.9407E-320)
            long r10 = r10 + r2
            r9.f3163new = r10
            r2 = 0
            m1429import(r0, r10, r2)
        Lb4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.k30.m1435while(com.apk.k1, boolean):void");
    }
}
