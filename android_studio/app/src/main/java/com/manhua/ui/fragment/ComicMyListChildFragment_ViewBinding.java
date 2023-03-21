package com.manhua.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicMyListChildFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicMyListChildFragment f10000do;

    @UiThread
    public ComicMyListChildFragment_ViewBinding(ComicMyListChildFragment comicMyListChildFragment, View view) {
        this.f10000do = comicMyListChildFragment;
        comicMyListChildFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_comiclist_chaild_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicMyListChildFragment comicMyListChildFragment = this.f10000do;
        if (comicMyListChildFragment != null) {
            this.f10000do = null;
            comicMyListChildFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
