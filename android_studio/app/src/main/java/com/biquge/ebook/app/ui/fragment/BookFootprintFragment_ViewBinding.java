package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookFootprintFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookFootprintFragment f7233do;

    @UiThread
    public BookFootprintFragment_ViewBinding(BookFootprintFragment bookFootprintFragment, View view) {
        this.f7233do = bookFootprintFragment;
        bookFootprintFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.my_footprint_rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookFootprintFragment bookFootprintFragment = this.f7233do;
        if (bookFootprintFragment != null) {
            this.f7233do = null;
            bookFootprintFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
