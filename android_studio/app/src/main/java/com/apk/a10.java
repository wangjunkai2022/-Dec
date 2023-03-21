package com.apk;

import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.ComicGroupDetailActivity;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;

/* compiled from: ComicGroupDetailActivity.java */
/* loaded from: classes8.dex */
public class a10 implements xv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicGroupDetailActivity f10do;

    /* compiled from: ComicGroupDetailActivity.java */
    /* renamed from: com.apk.a10$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ft {

        /* compiled from: ComicGroupDetailActivity.java */
        /* renamed from: com.apk.a10$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class RunnableC0057do implements Runnable {

            /* compiled from: ComicGroupDetailActivity.java */
            /* renamed from: com.apk.a10$do$do$do  reason: invalid class name and collision with other inner class name */
            /* loaded from: classes8.dex */
            public class RunnableC0058do implements Runnable {
                public RunnableC0058do() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    a10.this.f10do.finish();
                }
            }

            public RunnableC0057do() {
            }

            @Override // java.lang.Runnable
            public void run() {
                List<ComicCollectBean> list = a10.this.f10do.f9706else;
                if (list != null && list.size() > 0) {
                    for (ComicCollectBean comicCollectBean : a10.this.f10do.f9706else) {
                        n2.E(comicCollectBean.getCollectId(), "", "", false);
                    }
                }
                a10.this.f10do.postDelayed(new RunnableC0058do(), 200L);
            }
        }

        public Cdo() {
        }

        @Override // com.apk.ft
        public void onClick() {
            o m1921for = o.m1921for();
            RunnableC0057do runnableC0057do = new RunnableC0057do();
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnableC0057do);
            }
        }
    }

    public a10(ComicGroupDetailActivity comicGroupDetailActivity) {
        this.f10do = comicGroupDetailActivity;
    }

    @Override // com.apk.xv
    /* renamed from: do  reason: not valid java name */
    public void mo15do(int i, String str) {
        if (this.f10do.f9706else.size() == 0) {
            return;
        }
        if (i == 0) {
            this.f10do.s(true, -1);
        } else if (i != 1) {
        } else {
            ComicGroupDetailActivity comicGroupDetailActivity = this.f10do;
            comicGroupDetailActivity.showTipDialog(comicGroupDetailActivity, ze.q(R.string.main_menu_pop_is_discard_group), new Cdo(), null, true);
        }
    }
}
