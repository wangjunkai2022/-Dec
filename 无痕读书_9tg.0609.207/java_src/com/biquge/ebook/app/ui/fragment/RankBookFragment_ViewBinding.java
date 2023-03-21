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
public class RankBookFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public RankBookFragment f7588do;

    @UiThread
    public RankBookFragment_ViewBinding(RankBookFragment rankBookFragment, View view) {
        this.f7588do = rankBookFragment;
        rankBookFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        rankBookFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RankBookFragment rankBookFragment = this.f7588do;
        if (rankBookFragment != null) {
            this.f7588do = null;
            rankBookFragment.mPtrClassicFrameLayout = null;
            rankBookFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
