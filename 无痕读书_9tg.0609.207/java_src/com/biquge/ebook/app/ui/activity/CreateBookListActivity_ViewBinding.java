package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class CreateBookListActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public CreateBookListActivity f6612do;

    @UiThread
    public CreateBookListActivity_ViewBinding(CreateBookListActivity createBookListActivity, View view) {
        this.f6612do = createBookListActivity;
        createBookListActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CreateBookListActivity createBookListActivity = this.f6612do;
        if (createBookListActivity != null) {
            this.f6612do = null;
            createBookListActivity.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
