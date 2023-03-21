package com.expand.listen.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ListenRankChildFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ListenRankChildFragment f9410do;

    @UiThread
    public ListenRankChildFragment_ViewBinding(ListenRankChildFragment listenRankChildFragment, View view) {
        this.f9410do = listenRankChildFragment;
        listenRankChildFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        listenRankChildFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ListenRankChildFragment listenRankChildFragment = this.f9410do;
        if (listenRankChildFragment != null) {
            this.f9410do = null;
            listenRankChildFragment.mPtrClassicFrameLayout = null;
            listenRankChildFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
