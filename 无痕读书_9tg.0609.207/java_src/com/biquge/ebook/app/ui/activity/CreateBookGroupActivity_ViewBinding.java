package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class CreateBookGroupActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public CreateBookGroupActivity f6597do;

    @UiThread
    public CreateBookGroupActivity_ViewBinding(CreateBookGroupActivity createBookGroupActivity, View view) {
        this.f6597do = createBookGroupActivity;
        createBookGroupActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.activity_bookgroup_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CreateBookGroupActivity createBookGroupActivity = this.f6597do;
        if (createBookGroupActivity != null) {
            this.f6597do = null;
            createBookGroupActivity.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
