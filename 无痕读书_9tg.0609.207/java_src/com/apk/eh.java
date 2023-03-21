package com.apk;

import android.content.Context;
import android.view.View;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.widget.ViewPagerRecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicDetailActivity;
/* compiled from: ViewPagerRecyclerView.java */
/* loaded from: classes8.dex */
public class eh implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ViewPagerRecyclerView.Cif f1064do;

    public eh(ViewPagerRecyclerView.Cif cif) {
        this.f1064do = cif;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Book book = (Book) baseQuickAdapter.getItem(i);
        if (book != null) {
            if (book.isNovel()) {
                Context context = this.f1064do.f8297do;
                StringBuilder m1016super = Cgoto.m1016super("小说|重磅推荐|");
                m1016super.append(i + 1);
                BookDetailActivity.t(context, m1016super.toString(), book);
                return;
            }
            ComicBean m1765final = mu.m1765final(book.getId(), book.getName(), book.getImg());
            m1765final.setDesc(book.getDesc());
            ComicDetailActivity.n(this.f1064do.f8297do, m1765final);
        }
    }
}
