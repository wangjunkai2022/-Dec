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
public class ComicRankBookFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicRankBookFragment f10050do;

    @UiThread
    public ComicRankBookFragment_ViewBinding(ComicRankBookFragment comicRankBookFragment, View view) {
        this.f10050do = comicRankBookFragment;
        comicRankBookFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        comicRankBookFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicRankBookFragment comicRankBookFragment = this.f10050do;
        if (comicRankBookFragment != null) {
            this.f10050do = null;
            comicRankBookFragment.mPtrClassicFrameLayout = null;
            comicRankBookFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
