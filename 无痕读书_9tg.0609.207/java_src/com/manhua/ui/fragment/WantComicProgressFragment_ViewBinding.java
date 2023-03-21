package com.manhua.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WantComicProgressFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WantComicProgressFragment f10108do;

    @UiThread
    public WantComicProgressFragment_ViewBinding(WantComicProgressFragment wantComicProgressFragment, View view) {
        this.f10108do = wantComicProgressFragment;
        wantComicProgressFragment.ptrRefreshLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'ptrRefreshLayout'", PtrClassicFrameLayout.class);
        wantComicProgressFragment.mRecycleView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.upload_book_progress_rv, "field 'mRecycleView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WantComicProgressFragment wantComicProgressFragment = this.f10108do;
        if (wantComicProgressFragment != null) {
            this.f10108do = null;
            wantComicProgressFragment.ptrRefreshLayout = null;
            wantComicProgressFragment.mRecycleView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
