package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookMyListChildFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookMyListChildFragment f7296do;

    @UiThread
    public BookMyListChildFragment_ViewBinding(BookMyListChildFragment bookMyListChildFragment, View view) {
        this.f7296do = bookMyListChildFragment;
        bookMyListChildFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_booklist_chaild_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookMyListChildFragment bookMyListChildFragment = this.f7296do;
        if (bookMyListChildFragment != null) {
            this.f7296do = null;
            bookMyListChildFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
