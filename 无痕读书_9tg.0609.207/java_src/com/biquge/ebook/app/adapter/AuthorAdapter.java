package com.biquge.ebook.app.adapter;

import android.widget.ImageView;
import com.apk.u;
import com.biquge.ebook.app.bean.Book;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class AuthorAdapter extends BaseQuickAdapter<Book.SameUserBooksNameBean, BaseViewHolder> {
    public AuthorAdapter() {
        super((int) R.layout.item_grid_match_layout);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Book.SameUserBooksNameBean sameUserBooksNameBean) {
        Book.SameUserBooksNameBean sameUserBooksNameBean2 = sameUserBooksNameBean;
        try {
            u.m2653public(sameUserBooksNameBean2.getImg(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
            baseViewHolder.setText(R.id.item_simple_book_name_txt, sameUserBooksNameBean2.getName());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
