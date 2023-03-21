package com.expand.videoplayer.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class SameThHistoryTotalFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public SameThHistoryTotalFragment f9436do;

    @UiThread
    public SameThHistoryTotalFragment_ViewBinding(SameThHistoryTotalFragment sameThHistoryTotalFragment, View view) {
        this.f9436do = sameThHistoryTotalFragment;
        sameThHistoryTotalFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.same_tj_total_rv, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SameThHistoryTotalFragment sameThHistoryTotalFragment = this.f9436do;
        if (sameThHistoryTotalFragment != null) {
            this.f9436do = null;
            sameThHistoryTotalFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
