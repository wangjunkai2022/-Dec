package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ToforegroundActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ToforegroundActivity f6848do;

    @UiThread
    public ToforegroundActivity_ViewBinding(ToforegroundActivity toforegroundActivity, View view) {
        this.f6848do = toforegroundActivity;
        toforegroundActivity.container = (ViewGroup) Utils.findRequiredViewAsType(view, R.id.welcome_ad_layout, "field 'container'", ViewGroup.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ToforegroundActivity toforegroundActivity = this.f6848do;
        if (toforegroundActivity != null) {
            this.f6848do = null;
            toforegroundActivity.container = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
