package com.chad.library.adapter.base.loadmore;

import com.codelibrary.R$id;
import com.codelibrary.R$layout;

/* loaded from: classes8.dex */
public final class SimpleLoadMoreView extends LoadMoreView {
    @Override // com.chad.library.adapter.base.loadmore.LoadMoreView
    public int getLayoutId() {
        return R$layout.code_brvah_quick_view_load_more;
    }

    @Override // com.chad.library.adapter.base.loadmore.LoadMoreView
    public int getLoadEndViewId() {
        return R$id.load_more_load_end_view;
    }

    @Override // com.chad.library.adapter.base.loadmore.LoadMoreView
    public int getLoadFailViewId() {
        return R$id.load_more_load_fail_view;
    }

    @Override // com.chad.library.adapter.base.loadmore.LoadMoreView
    public int getLoadingViewId() {
        return R$id.load_more_loading_view;
    }
}
