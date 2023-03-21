package com.apk;

import android.view.View;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.fragment.BookDetailDataFragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
/* compiled from: BookDetailDataFragment.java */
/* loaded from: classes8.dex */
public class ra implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookDetailDataFragment f4020do;

    public ra(BookDetailDataFragment bookDetailDataFragment) {
        this.f4020do = bookDetailDataFragment;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            Book.SameUserBooksNameBean item = this.f4020do.f7193do.getItem(i);
            if (item != null) {
                Book book = new Book();
                book.setId(item.getId());
                book.setName(item.getName());
                book.setImg(item.getImg());
                book.setLastChapter(item.getLastChapter());
                book.setLastChapterId(item.getLastChapterId());
                BookDetailActivity.p(this.f4020do.getSupportActivity(), book);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
