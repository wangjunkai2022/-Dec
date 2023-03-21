package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookDownloadFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookDownloadFragment f7227do;

    @UiThread
    public BookDownloadFragment_ViewBinding(BookDownloadFragment bookDownloadFragment, View view) {
        this.f7227do = bookDownloadFragment;
        bookDownloadFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.book_download_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookDownloadFragment bookDownloadFragment = this.f7227do;
        if (bookDownloadFragment != null) {
            this.f7227do = null;
            bookDownloadFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
