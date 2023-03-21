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
public class BookStoreRankChildFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookStoreRankChildFragment f7425do;

    @UiThread
    public BookStoreRankChildFragment_ViewBinding(BookStoreRankChildFragment bookStoreRankChildFragment, View view) {
        this.f7425do = bookStoreRankChildFragment;
        bookStoreRankChildFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        bookStoreRankChildFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookStoreRankChildFragment bookStoreRankChildFragment = this.f7425do;
        if (bookStoreRankChildFragment != null) {
            this.f7425do = null;
            bookStoreRankChildFragment.mPtrClassicFrameLayout = null;
            bookStoreRankChildFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
