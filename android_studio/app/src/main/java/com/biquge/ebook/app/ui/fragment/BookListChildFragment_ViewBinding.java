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
public class BookListChildFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookListChildFragment f7248do;

    @UiThread
    public BookListChildFragment_ViewBinding(BookListChildFragment bookListChildFragment, View view) {
        this.f7248do = bookListChildFragment;
        bookListChildFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        bookListChildFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_booklist_category_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookListChildFragment bookListChildFragment = this.f7248do;
        if (bookListChildFragment != null) {
            this.f7248do = null;
            bookListChildFragment.mPtrClassicFrameLayout = null;
            bookListChildFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
