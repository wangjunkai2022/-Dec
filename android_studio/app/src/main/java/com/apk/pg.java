package com.apk;

import android.view.View;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.widget.ComicStoreRankLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicDetailActivity;

/* compiled from: ComicStoreRankLayout.java */
/* loaded from: classes8.dex */
public class pg implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicStoreRankLayout f3636do;

    public pg(ComicStoreRankLayout comicStoreRankLayout) {
        this.f3636do = comicStoreRankLayout;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ComicBean comicBean = (ComicBean) this.f3636do.f8028new.getItem(i);
        if (comicBean != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f3636do.f8026goto ? "男漫" : "女漫");
            sb.append("|");
            sb.append(this.f3636do.f8024else);
            sb.append(i + 1);
            String sb2 = sb.toString();
            if (comicBean.isCartton()) {
                ComicDetailActivity.n(this.f3636do.getContext(), comicBean);
                return;
            }
            Book m1811catch = n2.m1811catch(comicBean.getId(), comicBean.getName(), comicBean.getImg());
            m1811catch.setDesc(comicBean.getDesc());
            BookDetailActivity.t(this.f3636do.getContext(), sb2, m1811catch);
        }
    }
}
