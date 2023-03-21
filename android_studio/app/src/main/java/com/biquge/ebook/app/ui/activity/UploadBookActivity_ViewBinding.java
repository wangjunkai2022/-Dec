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
public class UploadBookActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public UploadBookActivity f6851do;

    @UiThread
    public UploadBookActivity_ViewBinding(UploadBookActivity uploadBookActivity, View view) {
        this.f6851do = uploadBookActivity;
        uploadBookActivity.mHeaderView = (HeaderView) Utils.findRequiredViewAsType(view, R.id.upload_book_actionbar, "field 'mHeaderView'", HeaderView.class);
        uploadBookActivity.mViewPager = (SViewPager) Utils.findRequiredViewAsType(view, R.id.my_footprint_viewPager, "field 'mViewPager'", SViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        UploadBookActivity uploadBookActivity = this.f6851do;
        if (uploadBookActivity != null) {
            this.f6851do = null;
            uploadBookActivity.mHeaderView = null;
            uploadBookActivity.mViewPager = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
