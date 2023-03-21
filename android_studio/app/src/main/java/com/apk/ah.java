package com.apk;

import android.view.View;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.widget.StoreRankLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.ui.activity.ComicDetailActivity;

/* compiled from: StoreRankLayout.java */
/* loaded from: classes8.dex */
public class ah implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ StoreRankLayout f87do;

    public ah(StoreRankLayout storeRankLayout) {
        this.f87do = storeRankLayout;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Book book = (Book) this.f87do.f8163new.getItem(i);
        if (book != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f87do.f8161goto ? "男频" : "女频");
            sb.append("|");
            sb.append(this.f87do.f8159else);
            sb.append(i + 1);
            String sb2 = sb.toString();
            if (book.isNovel()) {
                BookDetailActivity.t(this.f87do.getContext(), sb2, n2.m1811catch(book.getId(), book.getName(), ""));
            } else {
                ComicDetailActivity.n(this.f87do.getContext(), mu.m1765final(book.getId(), book.getName(), ""));
            }
        }
    }
}
