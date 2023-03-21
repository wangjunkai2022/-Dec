package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookCategoryRankFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookCategoryRankFragment f7192do;

    @UiThread
    public BookCategoryRankFragment_ViewBinding(BookCategoryRankFragment bookCategoryRankFragment, View view) {
        this.f7192do = bookCategoryRankFragment;
        bookCategoryRankFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        bookCategoryRankFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookCategoryRankFragment bookCategoryRankFragment = this.f7192do;
        if (bookCategoryRankFragment != null) {
            this.f7192do = null;
            bookCategoryRankFragment.mPtrClassicFrameLayout = null;
            bookCategoryRankFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
