package com.apk;

import android.app.Activity;
/* compiled from: VideoBaseHelper.java */
/* loaded from: classes8.dex */
public abstract class f {

    /* renamed from: case  reason: not valid java name */
    public long f1155case;

    /* renamed from: do  reason: not valid java name */
    public boolean f1156do;

    /* renamed from: for  reason: not valid java name */
    public h f1157for;

    /* renamed from: if  reason: not valid java name */
    public Activity f1158if;

    /* renamed from: new  reason: not valid java name */
    public String f1159new;

    /* renamed from: try  reason: not valid java name */
    public String f1160try;

    /* renamed from: break  reason: not valid java name */
    public static boolean m682break() {
        return ze.m3179private("SP_VIDEO_AD_PRELOAD_FLAG_KEY", false);
    }

    /* renamed from: catch  reason: not valid java name */
    public static boolean m683catch() {
        return "g".equals(tt.m2620do("SP_VIDEO_AD_PRELOAD_MOODULE_KEY", ""));
    }

    /* renamed from: case */
    public abstract boolean mo287case();

    /* renamed from: class  reason: not valid java name */
    public final void m684class(String str, String str2, h hVar) {
        this.f1157for = hVar;
        this.f1156do = false;
        mo289else(str, str2);
        this.f1155case = System.currentTimeMillis();
        if (v.m2734do() == null) {
            throw null;
        }
    }

    /* renamed from: const */
    public abstract boolean mo288const();

    /* renamed from: do  reason: not valid java name */
    public void m685do(int i) {
        mo293super("onAdError。。。");
        if (v.m2734do() != null) {
            if (this.f1157for != null) {
                this.f1157for = h.error;
                return;
            }
            return;
        }
        throw null;
    }

    /* renamed from: else */
    public abstract void mo289else(String str, String str2);

    /* renamed from: final */
    public abstract boolean mo290final(Activity activity);

    /* renamed from: for  reason: not valid java name */
    public void m686for() {
        h hVar = h.success;
        mo293super("onVideoCached视频已缓存。。");
        if (v.m2734do() != null) {
            h hVar2 = this.f1157for;
            if (hVar2 != null) {
                if (hVar2 == h.preload) {
                    this.f1157for = hVar;
                    return;
                } else if (hVar2 == h.load) {
                    if (this.f1156do) {
                        this.f1157for = hVar;
                        mo293super("页面退出去了，保存起来吧，下次再展示");
                        return;
                    } else if (mo287case()) {
                        mo288const();
                        mo293super("执行showAd");
                        return;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            return;
        }
        throw null;
    }

    public Activity getActivity() {
        return this.f1158if;
    }

    /* renamed from: goto  reason: not valid java name */
    public void m687goto() {
        if (this.f1157for != null) {
            this.f1157for = h.finish;
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m688if() {
        v m2734do = v.m2734do();
        System.currentTimeMillis();
        if (m2734do != null) {
            if (v.m2734do() == null) {
                throw null;
            }
            return;
        }
        throw null;
    }

    /* renamed from: new  reason: not valid java name */
    public void m689new(Activity activity, String str, String str2, String str3) {
        h hVar = h.load;
        this.f1159new = str3;
        if (this.f1157for != null && mo287case()) {
            h hVar2 = this.f1157for;
            if (hVar2 == h.success) {
                mo290final(activity);
                mo293super("有可用的已缓存的广告，直接拿来展示。。");
                return;
            } else if (hVar2 == hVar) {
                mo293super("有一个广告正在加载中，等待结果直接使用。。");
                return;
            } else if (hVar2 == h.preload) {
                this.f1157for = hVar;
                mo293super("有一个广告正在预缓存中，等待结果直接使用。。");
                return;
            }
        }
        mo293super("这里调用的直接加载广告。。");
        m684class(str, str2, hVar);
    }

    /* renamed from: super */
    public void mo293super(String str) {
    }

    /* renamed from: this  reason: not valid java name */
    public boolean m690this() {
        h hVar = this.f1157for;
        return hVar != null && hVar == h.success && mo287case();
    }

    /* renamed from: try  reason: not valid java name */
    public void m691try(String str, String str2, String str3) {
        h hVar;
        h hVar2 = h.preload;
        if (("ts".equals(str3) || "xz".equals(str3) || "other".equals(str3)) && !m682break()) {
            return;
        }
        this.f1159new = str3;
        if (this.f1157for != null && mo287case() && ((hVar = this.f1157for) == hVar2 || hVar == h.load || hVar == h.success)) {
            mo293super("正在预加载中或者已有已缓存的视频广告，不需要预加载");
            return;
        }
        mo293super("开始执行预加载视频广告");
        m684class(str, str2, hVar2);
    }
}
