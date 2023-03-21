package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.clip.ClipViewLayout;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ClipImageActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ClipImageActivity f6563do;

    /* renamed from: for  reason: not valid java name */
    public View f6564for;

    /* renamed from: if  reason: not valid java name */
    public View f6565if;

    /* renamed from: com.biquge.ebook.app.ui.activity.ClipImageActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ClipImageActivity f6566do;

        public Cdo(ClipImageActivity_ViewBinding clipImageActivity_ViewBinding, ClipImageActivity clipImageActivity) {
            this.f6566do = clipImageActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6566do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.ClipImageActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ClipImageActivity f6567do;

        public Cif(ClipImageActivity_ViewBinding clipImageActivity_ViewBinding, ClipImageActivity clipImageActivity) {
            this.f6567do = clipImageActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6567do.menuClick(view);
        }
    }

    @UiThread
    public ClipImageActivity_ViewBinding(ClipImageActivity clipImageActivity, View view) {
        this.f6563do = clipImageActivity;
        clipImageActivity.clipViewLayout = (ClipViewLayout) Utils.findRequiredViewAsType(view, R.id.clipViewLayout1, "field 'clipViewLayout'", ClipViewLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.btn_cancel, "method 'menuClick'");
        this.f6565if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, clipImageActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.bt_ok, "method 'menuClick'");
        this.f6564for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, clipImageActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ClipImageActivity clipImageActivity = this.f6563do;
        if (clipImageActivity != null) {
            this.f6563do = null;
            clipImageActivity.clipViewLayout = null;
            this.f6565if.setOnClickListener(null);
            this.f6565if = null;
            this.f6564for.setOnClickListener(null);
            this.f6564for = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
