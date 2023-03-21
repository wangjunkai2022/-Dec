package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class SkinActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public SkinActivity f6822do;

    @UiThread
    public SkinActivity_ViewBinding(SkinActivity skinActivity, View view) {
        this.f6822do = skinActivity;
        skinActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.skin_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SkinActivity skinActivity = this.f6822do;
        if (skinActivity != null) {
            this.f6822do = null;
            skinActivity.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
