package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class DisclaimerActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public DisclaimerActivity f6617do;

    @UiThread
    public DisclaimerActivity_ViewBinding(DisclaimerActivity disclaimerActivity, View view) {
        this.f6617do = disclaimerActivity;
        disclaimerActivity.mContentTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.disclaimer_content_txt, "field 'mContentTxt'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        DisclaimerActivity disclaimerActivity = this.f6617do;
        if (disclaimerActivity != null) {
            this.f6617do = null;
            disclaimerActivity.mContentTxt = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
