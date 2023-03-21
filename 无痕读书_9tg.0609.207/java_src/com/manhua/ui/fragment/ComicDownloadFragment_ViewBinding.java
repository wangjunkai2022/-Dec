package com.manhua.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicDownloadFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicDownloadFragment f9930do;

    @UiThread
    public ComicDownloadFragment_ViewBinding(ComicDownloadFragment comicDownloadFragment, View view) {
        this.f9930do = comicDownloadFragment;
        comicDownloadFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.book_download_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicDownloadFragment comicDownloadFragment = this.f9930do;
        if (comicDownloadFragment != null) {
            this.f9930do = null;
            comicDownloadFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
