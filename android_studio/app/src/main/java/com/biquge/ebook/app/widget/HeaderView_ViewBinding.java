package com.biquge.ebook.app.widget;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class HeaderView_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public HeaderView f8073do;

    @UiThread
    public HeaderView_ViewBinding(HeaderView headerView, View view) {
        this.f8073do = headerView;
        headerView.mToolbar = (Toolbar) Utils.findRequiredViewAsType(view, R.id.activity_public_toolbar, "field 'mToolbar'", Toolbar.class);
        headerView.mTitleTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_public_title_txt, "field 'mTitleTxt'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        HeaderView headerView = this.f8073do;
        if (headerView != null) {
            this.f8073do = null;
            headerView.mToolbar = null;
            headerView.mTitleTxt = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
