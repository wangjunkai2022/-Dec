package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.manhua.ui.widget.PublicLoadingView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class UserServiceWebviewActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public UserServiceWebviewActivity f6855do;

    @UiThread
    public UserServiceWebviewActivity_ViewBinding(UserServiceWebviewActivity userServiceWebviewActivity, View view) {
        this.f6855do = userServiceWebviewActivity;
        userServiceWebviewActivity.loadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.fragment_loadingview, "field 'loadingView'", PublicLoadingView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        UserServiceWebviewActivity userServiceWebviewActivity = this.f6855do;
        if (userServiceWebviewActivity != null) {
            this.f6855do = null;
            userServiceWebviewActivity.loadingView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
