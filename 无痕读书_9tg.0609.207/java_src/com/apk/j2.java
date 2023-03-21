package com.apk;

import com.biquge.ebook.app.bean.ChapterBean;
/* compiled from: BookReadPresenter.java */
/* loaded from: classes8.dex */
public class j2 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2273do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ h2 f2274if;

    public j2(h2 h2Var, String str) {
        this.f2274if = h2Var;
        this.f2273do = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ((l2) this.f2274if.f3970do).mo1590do(true, false);
            ChapterBean m1080static = this.f2274if.m1080static();
            if (m1080static != null) {
                if (this.f2274if.f1696strictfp.containsKey(m1080static.getOid())) {
                    v m2734do = v.m2734do();
                    this.f2274if.m1082super();
                    this.f2274if.m1089while();
                    String str = this.f2274if.f1672case;
                    if (m2734do == null) {
                        throw null;
                    }
                }
                n2.m1837super(this.f2274if.m1082super(), this.f2273do, m1080static.getUrl(), false, this.f2274if.m1070finally(), true);
                this.f2274if.f1700this.m936switch(this.f2273do);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f2274if.G();
        this.f2274if.B(0, true);
    }
}
