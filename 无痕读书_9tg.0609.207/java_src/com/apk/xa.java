package com.apk;

import com.biquge.ebook.app.ui.fragment.BookSearchFragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
/* compiled from: BookSearchFragment.java */
/* loaded from: classes8.dex */
public class xa implements BaseQuickAdapter.RequestLoadMoreListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookSearchFragment f5506do;

    public xa(BookSearchFragment bookSearchFragment) {
        this.f5506do = bookSearchFragment;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
    public void onLoadMoreRequested() {
        BookSearchFragment.j(this.f5506do);
    }
}
