package com.apk;

import com.apk.j7;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.activity.BookGroupDetailActivity;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
/* compiled from: BookGroupDetailActivity.java */
/* loaded from: classes8.dex */
public class j7 implements xv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookGroupDetailActivity f2288do;

    /* compiled from: BookGroupDetailActivity.java */
    /* renamed from: com.apk.j7$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ft {
        public Cdo() {
        }

        /* renamed from: do  reason: not valid java name */
        public /* synthetic */ void m1296do() {
            List<CollectBook> list = j7.this.f2288do.f6454case;
            if (list != null && list.size() > 0) {
                for (CollectBook collectBook : j7.this.f2288do.f6454case) {
                    n2.F(collectBook.getCollectId(), "", "", false);
                }
            }
            final BookGroupDetailActivity bookGroupDetailActivity = j7.this.f2288do;
            bookGroupDetailActivity.postDelayed(new Runnable() { // from class: com.apk.a7
                @Override // java.lang.Runnable
                public final void run() {
                    BookGroupDetailActivity.this.finish();
                }
            }, 200L);
        }

        @Override // com.apk.ft
        public void onClick() {
            o m1921for = o.m1921for();
            Runnable runnable = new Runnable() { // from class: com.apk.m6
                @Override // java.lang.Runnable
                public final void run() {
                    j7.Cdo.this.m1296do();
                }
            };
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnable);
            }
        }
    }

    public j7(BookGroupDetailActivity bookGroupDetailActivity) {
        this.f2288do = bookGroupDetailActivity;
    }

    @Override // com.apk.xv
    /* renamed from: do */
    public void mo15do(int i, String str) {
        if (this.f2288do.f6454case.size() == 0) {
            return;
        }
        if (i == 0) {
            this.f2288do.f6455catch.mo2779new(true, -1);
        } else if (i != 1) {
        } else {
            BookGroupDetailActivity bookGroupDetailActivity = this.f2288do;
            bookGroupDetailActivity.showTipDialog(bookGroupDetailActivity, ze.q(R.string.main_menu_pop_is_discard_group), new Cdo(), null, true);
        }
    }
}
