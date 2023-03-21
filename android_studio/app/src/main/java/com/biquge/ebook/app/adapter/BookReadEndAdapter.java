package com.biquge.ebook.app.adapter;

import android.graphics.Color;
import android.widget.ImageView;
import android.widget.TextView;
import com.apk.u;
import com.biquge.ebook.app.bean.Book;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookReadEndAdapter extends BaseQuickAdapter<Book, BaseViewHolder> {

    /* renamed from: do  reason: not valid java name */
    public final boolean f6344do;

    /* renamed from: for  reason: not valid java name */
    public int f6345for;

    /* renamed from: if  reason: not valid java name */
    public int f6346if;

    public BookReadEndAdapter(boolean z) {
        super((int) R.layout.item_grid_match_layout);
        this.f6344do = z;
        if (z) {
            this.f6345for = Color.parseColor("#999999");
        } else {
            this.f6346if = Color.parseColor("#333333");
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder baseViewHolder, Book book) {
        Book book2 = book;
        try {
            u.m2653public(book2.getImg(), (ImageView) baseViewHolder.getView(R.id.item_simple_book_image));
            TextView textView = (TextView) baseViewHolder.getView(R.id.item_simple_book_name_txt);
            if (textView != null) {
                textView.setText(book2.getName());
                if (this.f6344do) {
                    textView.setTextColor(this.f6345for);
                } else {
                    textView.setTextColor(this.f6346if);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
