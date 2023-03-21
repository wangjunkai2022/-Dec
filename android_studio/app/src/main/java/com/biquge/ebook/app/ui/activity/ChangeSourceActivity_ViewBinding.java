package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.manhua.ui.widget.PublicLoadingView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ChangeSourceActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ChangeSourceActivity f6562do;

    @UiThread
    public ChangeSourceActivity_ViewBinding(ChangeSourceActivity changeSourceActivity, View view) {
        this.f6562do = changeSourceActivity;
        changeSourceActivity.mLoadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.public_loadingview, "field 'mLoadingView'", PublicLoadingView.class);
        changeSourceActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.change_source_rv_list, "field 'mRecyclerView'", RecyclerView.class);
        LinearLayout linearLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.tv_empty, "field 'mEmptyLayout'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ChangeSourceActivity changeSourceActivity = this.f6562do;
        if (changeSourceActivity != null) {
            this.f6562do = null;
            changeSourceActivity.mLoadingView = null;
            changeSourceActivity.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
