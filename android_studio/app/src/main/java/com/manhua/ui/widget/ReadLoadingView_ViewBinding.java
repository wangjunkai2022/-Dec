package com.manhua.ui.widget;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ReadLoadingView_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ReadLoadingView f10231do;

    @UiThread
    public ReadLoadingView_ViewBinding(ReadLoadingView readLoadingView, View view) {
        this.f10231do = readLoadingView;
        readLoadingView.mReloadLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_error_refresh, "field 'mReloadLayout'", LinearLayout.class);
        LinearLayout linearLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_progress, "field 'mLoadLayout'", LinearLayout.class);
        readLoadingView.mLogingTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.id_tv_loadingmsg, "field 'mLogingTxt'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ReadLoadingView readLoadingView = this.f10231do;
        if (readLoadingView != null) {
            this.f10231do = null;
            readLoadingView.mLogingTxt = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
