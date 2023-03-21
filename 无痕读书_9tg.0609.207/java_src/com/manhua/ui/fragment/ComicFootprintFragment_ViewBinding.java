package com.manhua.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicFootprintFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicFootprintFragment f9936do;

    @UiThread
    public ComicFootprintFragment_ViewBinding(ComicFootprintFragment comicFootprintFragment, View view) {
        this.f9936do = comicFootprintFragment;
        comicFootprintFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.my_footprint_rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicFootprintFragment comicFootprintFragment = this.f9936do;
        if (comicFootprintFragment != null) {
            this.f9936do = null;
            comicFootprintFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
