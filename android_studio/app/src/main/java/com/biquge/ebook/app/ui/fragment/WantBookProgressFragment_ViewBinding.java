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
public class WantBookProgressFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WantBookProgressFragment f7618do;

    @UiThread
    public WantBookProgressFragment_ViewBinding(WantBookProgressFragment wantBookProgressFragment, View view) {
        this.f7618do = wantBookProgressFragment;
        wantBookProgressFragment.ptrRefreshLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'ptrRefreshLayout'", PtrClassicFrameLayout.class);
        wantBookProgressFragment.mRecycleView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.upload_book_progress_rv, "field 'mRecycleView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WantBookProgressFragment wantBookProgressFragment = this.f7618do;
        if (wantBookProgressFragment != null) {
            this.f7618do = null;
            wantBookProgressFragment.ptrRefreshLayout = null;
            wantBookProgressFragment.mRecycleView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
