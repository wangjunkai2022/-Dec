package com.apk;

import com.biquge.ebook.app.ui.webread.ui.WebSiteSearchFragment;
import com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;

/* compiled from: WebSearchResultLayout.java */
/* loaded from: classes8.dex */
public class we implements BaseQuickAdapter.RequestLoadMoreListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ WebSearchResultLayout f5263do;

    public we(WebSearchResultLayout webSearchResultLayout) {
        this.f5263do = webSearchResultLayout;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
    public void onLoadMoreRequested() {
        try {
            int currentItem = this.f5263do.mViewPager.getCurrentItem();
            if (this.f5263do.f7964try == null || this.f5263do.f7964try.size() <= currentItem) {
                return;
            }
            WebSiteSearchFragment webSiteSearchFragment = (WebSiteSearchFragment) this.f5263do.f7964try.get(currentItem);
            String str = this.f5263do.f7958for;
            if (webSiteSearchFragment == null) {
                throw null;
            }
            new b1().m141do(new ae(webSiteSearchFragment, str, currentItem));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
