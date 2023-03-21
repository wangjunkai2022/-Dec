package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class SecurityCenterActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public SecurityCenterActivity f6773do;

    /* renamed from: if  reason: not valid java name */
    public View f6774if;

    /* renamed from: com.biquge.ebook.app.ui.activity.SecurityCenterActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ SecurityCenterActivity f6775do;

        public Cdo(SecurityCenterActivity_ViewBinding securityCenterActivity_ViewBinding, SecurityCenterActivity securityCenterActivity) {
            this.f6775do = securityCenterActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6775do.menuClick();
        }
    }

    @UiThread
    public SecurityCenterActivity_ViewBinding(SecurityCenterActivity securityCenterActivity, View view) {
        this.f6773do = securityCenterActivity;
        View findRequiredView = Utils.findRequiredView(view, R.id.my_account_remove_account_layout, "method 'menuClick'");
        this.f6774if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, securityCenterActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.f6773do != null) {
            this.f6773do = null;
            this.f6774if.setOnClickListener(null);
            this.f6774if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
