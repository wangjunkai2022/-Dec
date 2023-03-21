package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.manhua.ui.widget.PublicLoadingView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookListDetailActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookListDetailActivity f6503do;

    @UiThread
    public BookListDetailActivity_ViewBinding(BookListDetailActivity bookListDetailActivity, View view) {
        this.f6503do = bookListDetailActivity;
        bookListDetailActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
        bookListDetailActivity.mPublicLoadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.public_loadingview, "field 'mPublicLoadingView'", PublicLoadingView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookListDetailActivity bookListDetailActivity = this.f6503do;
        if (bookListDetailActivity != null) {
            this.f6503do = null;
            bookListDetailActivity.mRecyclerView = null;
            bookListDetailActivity.mPublicLoadingView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
