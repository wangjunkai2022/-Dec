package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.HeaderView;
import com.shizhefei.view.viewpager.SViewPager;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WantProgressActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WantProgressActivity f6860do;

    @UiThread
    public WantProgressActivity_ViewBinding(WantProgressActivity wantProgressActivity, View view) {
        this.f6860do = wantProgressActivity;
        wantProgressActivity.mHeaderView = (HeaderView) Utils.findRequiredViewAsType(view, R.id.upload_book_progress_actionbar, "field 'mHeaderView'", HeaderView.class);
        wantProgressActivity.mViewPager = (SViewPager) Utils.findRequiredViewAsType(view, R.id.upload_book_progress_viewPager, "field 'mViewPager'", SViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WantProgressActivity wantProgressActivity = this.f6860do;
        if (wantProgressActivity != null) {
            this.f6860do = null;
            wantProgressActivity.mHeaderView = null;
            wantProgressActivity.mViewPager = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
