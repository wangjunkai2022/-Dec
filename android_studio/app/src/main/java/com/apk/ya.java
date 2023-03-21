package com.apk;

import android.view.View;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.fragment.BookSearchFragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import kimi.wuhends.ebooks.R;

/* compiled from: BookSearchFragment.java */
/* loaded from: classes8.dex */
public class ya implements BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookSearchFragment f5902do;

    public ya(BookSearchFragment bookSearchFragment) {
        this.f5902do = bookSearchFragment;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            if (((Book) this.f5902do.f7310else.getItem(i)) != null && view.getId() == R.id.cb_choose_layout) {
                if (this.f5902do.f7304break) {
                    this.f5902do.n(1, i);
                } else {
                    this.f5902do.n(2, i);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
