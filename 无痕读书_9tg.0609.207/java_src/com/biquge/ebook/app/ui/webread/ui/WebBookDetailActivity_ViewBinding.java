package com.biquge.ebook.app.ui.webread.ui;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.biquge.ebook.app.ui.webread.view.WebBookDetailView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebBookDetailActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WebBookDetailActivity f7818do;

    @UiThread
    public WebBookDetailActivity_ViewBinding(WebBookDetailActivity webBookDetailActivity, View view) {
        this.f7818do = webBookDetailActivity;
        webBookDetailActivity.mWebBookDetailView = (WebBookDetailView) Utils.findRequiredViewAsType(view, R.id.web_book_detail_view, "field 'mWebBookDetailView'", WebBookDetailView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebBookDetailActivity webBookDetailActivity = this.f7818do;
        if (webBookDetailActivity != null) {
            this.f7818do = null;
            webBookDetailActivity.mWebBookDetailView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
