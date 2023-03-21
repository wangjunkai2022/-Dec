package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class NewShareDeviceFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public NewShareDeviceFragment f7544do;

    @UiThread
    public NewShareDeviceFragment_ViewBinding(NewShareDeviceFragment newShareDeviceFragment, View view) {
        this.f7544do = newShareDeviceFragment;
        newShareDeviceFragment.rc = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.a03, "field 'rc'", RecyclerView.class);
        newShareDeviceFragment.tv_empty = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.tv_empty, "field 'tv_empty'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        NewShareDeviceFragment newShareDeviceFragment = this.f7544do;
        if (newShareDeviceFragment != null) {
            this.f7544do = null;
            newShareDeviceFragment.rc = null;
            newShareDeviceFragment.tv_empty = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
