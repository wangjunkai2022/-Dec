package com.biquge.ebook.app.widget;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MessageTimerView_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public MessageTimerView f8086do;

    @UiThread
    public MessageTimerView_ViewBinding(MessageTimerView messageTimerView, View view) {
        this.f8086do = messageTimerView;
        messageTimerView.mTimerView = (TextView) Utils.findRequiredViewAsType(view, R.id.timer_tv, "field 'mTimerView'", TextView.class);
        messageTimerView.mLoadingView = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.loading_view, "field 'mLoadingView'", ProgressBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MessageTimerView messageTimerView = this.f8086do;
        if (messageTimerView != null) {
            this.f8086do = null;
            messageTimerView.mTimerView = null;
            messageTimerView.mLoadingView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
