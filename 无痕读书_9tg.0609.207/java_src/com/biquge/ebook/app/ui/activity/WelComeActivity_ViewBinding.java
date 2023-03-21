package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WelComeActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WelComeActivity f6883do;

    @UiThread
    public WelComeActivity_ViewBinding(WelComeActivity welComeActivity, View view) {
        this.f6883do = welComeActivity;
        welComeActivity.container = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.welcome_ad_layout, "field 'container'", FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WelComeActivity welComeActivity = this.f6883do;
        if (welComeActivity != null) {
            this.f6883do = null;
            welComeActivity.container = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
