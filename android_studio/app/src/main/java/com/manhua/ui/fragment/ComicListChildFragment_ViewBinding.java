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
public class ComicListChildFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicListChildFragment f9951do;

    @UiThread
    public ComicListChildFragment_ViewBinding(ComicListChildFragment comicListChildFragment, View view) {
        this.f9951do = comicListChildFragment;
        comicListChildFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        comicListChildFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicListChildFragment comicListChildFragment = this.f9951do;
        if (comicListChildFragment != null) {
            this.f9951do = null;
            comicListChildFragment.mPtrClassicFrameLayout = null;
            comicListChildFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
