package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.ui.widget.PublicLoadingView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class MyNewsActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public MyNewsActivity f6745do;

    @UiThread
    public MyNewsActivity_ViewBinding(MyNewsActivity myNewsActivity, View view) {
        this.f6745do = myNewsActivity;
        myNewsActivity.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        myNewsActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
        myNewsActivity.mLoadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.public_loading_view, "field 'mLoadingView'", PublicLoadingView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MyNewsActivity myNewsActivity = this.f6745do;
        if (myNewsActivity != null) {
            this.f6745do = null;
            myNewsActivity.mPtrClassicFrameLayout = null;
            myNewsActivity.mRecyclerView = null;
            myNewsActivity.mLoadingView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
