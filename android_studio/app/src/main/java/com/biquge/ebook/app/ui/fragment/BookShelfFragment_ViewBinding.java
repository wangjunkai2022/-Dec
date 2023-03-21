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
public class BookShelfFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookShelfFragment f7386do;

    @UiThread
    public BookShelfFragment_ViewBinding(BookShelfFragment bookShelfFragment, View view) {
        this.f7386do = bookShelfFragment;
        bookShelfFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.fragment_shelf_ptr_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        bookShelfFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_shelf_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookShelfFragment bookShelfFragment = this.f7386do;
        if (bookShelfFragment != null) {
            this.f7386do = null;
            bookShelfFragment.mPtrClassicFrameLayout = null;
            bookShelfFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
