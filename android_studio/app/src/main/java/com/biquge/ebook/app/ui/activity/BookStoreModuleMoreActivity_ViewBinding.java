package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookStoreModuleMoreActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookStoreModuleMoreActivity f6533do;

    @UiThread
    public BookStoreModuleMoreActivity_ViewBinding(BookStoreModuleMoreActivity bookStoreModuleMoreActivity, View view) {
        this.f6533do = bookStoreModuleMoreActivity;
        bookStoreModuleMoreActivity.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        bookStoreModuleMoreActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookStoreModuleMoreActivity bookStoreModuleMoreActivity = this.f6533do;
        if (bookStoreModuleMoreActivity != null) {
            this.f6533do = null;
            bookStoreModuleMoreActivity.mPtrClassicFrameLayout = null;
            bookStoreModuleMoreActivity.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
