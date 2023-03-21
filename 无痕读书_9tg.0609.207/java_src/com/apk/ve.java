package com.apk;

import android.view.View;
import com.biquge.ebook.app.ui.webread.entity.WebBook;
import com.biquge.ebook.app.ui.webread.ui.WebBookDetailActivity;
import com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
/* compiled from: WebSearchResultLayout.java */
/* loaded from: classes8.dex */
public class ve implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ WebSearchResultLayout f5070do;

    public ve(WebSearchResultLayout webSearchResultLayout) {
        this.f5070do = webSearchResultLayout;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        WebBook item = this.f5070do.f7951case.getItem(i);
        if (item != null) {
            WebSearchResultLayout webSearchResultLayout = this.f5070do;
            p0.m2011super("SP_WEB_TO_RED_KEY", webSearchResultLayout.f7955do[webSearchResultLayout.mIndicator.getCurrentItem()]);
            WebBookDetailActivity.i(this.f5070do.getContext(), item);
        }
    }
}
