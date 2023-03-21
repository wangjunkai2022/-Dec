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
public class ComicCategoryFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicCategoryFragment f9895do;

    @UiThread
    public ComicCategoryFragment_ViewBinding(ComicCategoryFragment comicCategoryFragment, View view) {
        this.f9895do = comicCategoryFragment;
        comicCategoryFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        comicCategoryFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicCategoryFragment comicCategoryFragment = this.f9895do;
        if (comicCategoryFragment != null) {
            this.f9895do = null;
            comicCategoryFragment.mPtrClassicFrameLayout = null;
            comicCategoryFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
