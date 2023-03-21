package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class DownloadTxtListFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public DownloadTxtListFragment f7442do;

    @UiThread
    public DownloadTxtListFragment_ViewBinding(DownloadTxtListFragment downloadTxtListFragment, View view) {
        this.f7442do = downloadTxtListFragment;
        downloadTxtListFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_download_txt_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DownloadTxtListFragment downloadTxtListFragment = this.f7442do;
        if (downloadTxtListFragment != null) {
            this.f7442do = null;
            downloadTxtListFragment.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
