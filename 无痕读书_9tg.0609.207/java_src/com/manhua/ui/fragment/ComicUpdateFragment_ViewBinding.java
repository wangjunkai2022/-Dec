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
public class ComicUpdateFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicUpdateFragment f10102do;

    @UiThread
    public ComicUpdateFragment_ViewBinding(ComicUpdateFragment comicUpdateFragment, View view) {
        this.f10102do = comicUpdateFragment;
        comicUpdateFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        comicUpdateFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.comic_update_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicUpdateFragment comicUpdateFragment = this.f10102do;
        if (comicUpdateFragment != null) {
            this.f10102do = null;
            comicUpdateFragment.mPtrClassicFrameLayout = null;
            comicUpdateFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
