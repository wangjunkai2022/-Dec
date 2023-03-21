package com.biquge.ebook.app.ui.webread.ui;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebHistoryActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WebHistoryActivity f7821do;

    @UiThread
    public WebHistoryActivity_ViewBinding(WebHistoryActivity webHistoryActivity, View view) {
        this.f7821do = webHistoryActivity;
        webHistoryActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebHistoryActivity webHistoryActivity = this.f7821do;
        if (webHistoryActivity != null) {
            this.f7821do = null;
            webHistoryActivity.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
