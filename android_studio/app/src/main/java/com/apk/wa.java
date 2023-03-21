package com.apk;

import android.content.Intent;
import com.biquge.ebook.app.ui.activity.CreateBookListActivity;
import com.biquge.ebook.app.ui.activity.LoginActivity;
import com.biquge.ebook.app.ui.activity.MyListActivity;
import com.biquge.ebook.app.ui.fragment.BookListFragment;

/* compiled from: BookListFragment.java */
/* loaded from: classes8.dex */
public class wa implements xv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookListFragment f5249do;

    public wa(BookListFragment bookListFragment) {
        this.f5249do = bookListFragment;
    }

    @Override // com.apk.xv
    /* renamed from: do */
    public void mo15do(int i, String str) {
        if (!v0.m2736try().m2741const()) {
            LoginActivity.l(this.f5249do.getContext());
        } else if (i == 0) {
            this.f5249do.startActivity(new Intent(this.f5249do.getContext(), CreateBookListActivity.class));
        } else if (i != 1) {
        } else {
            MyListActivity.i(this.f5249do.getContext(), hf.BOOK);
        }
    }
}
