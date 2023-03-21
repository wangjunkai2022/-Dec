package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.HeaderView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebViewActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WebViewActivity f6873do;

    @UiThread
    public WebViewActivity_ViewBinding(WebViewActivity webViewActivity, View view) {
        this.f6873do = webViewActivity;
        webViewActivity.mHeaderView = (HeaderView) Utils.findRequiredViewAsType(view, R.id.framelayout_toolbar, "field 'mHeaderView'", HeaderView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebViewActivity webViewActivity = this.f6873do;
        if (webViewActivity != null) {
            this.f6873do = null;
            webViewActivity.mHeaderView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
