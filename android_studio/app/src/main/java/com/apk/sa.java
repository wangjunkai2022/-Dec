package com.apk;

import android.view.View;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.fragment.BookDetailDataFragment;
import com.chad.library.adapter.base.BaseQuickAdapter;

/* compiled from: BookDetailDataFragment.java */
/* loaded from: classes8.dex */
public class sa implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ BookDetailDataFragment f4315do;

    public sa(BookDetailDataFragment bookDetailDataFragment) {
        this.f4315do = bookDetailDataFragment;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            Book.SameCategoryBooksNameBean item = this.f4315do.f7194for.getItem(i);
            if (item != null) {
                Book book = new Book();
                book.setId(item.getId());
                book.setName(item.getName());
                book.setImg(item.getImg());
                BookDetailActivity.q(this.f4315do.getSupportActivity(), book);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
