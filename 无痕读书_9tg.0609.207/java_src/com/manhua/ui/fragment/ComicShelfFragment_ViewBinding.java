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
public class ComicShelfFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicShelfFragment f10091do;

    @UiThread
    public ComicShelfFragment_ViewBinding(ComicShelfFragment comicShelfFragment, View view) {
        this.f10091do = comicShelfFragment;
        comicShelfFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.fragment_shelf_ptr_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        comicShelfFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_shelf_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicShelfFragment comicShelfFragment = this.f10091do;
        if (comicShelfFragment != null) {
            this.f10091do = null;
            comicShelfFragment.mPtrClassicFrameLayout = null;
            comicShelfFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
