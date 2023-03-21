package com.manhua.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.apk.b40;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicListCategoryActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicListCategoryActivity f9730do;

    @UiThread
    public ComicListCategoryActivity_ViewBinding(ComicListCategoryActivity comicListCategoryActivity, View view) {
        this.f9730do = comicListCategoryActivity;
        comicListCategoryActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.activity_booklist_viewPager, "field 'mViewPager'", ViewPager.class);
        comicListCategoryActivity.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.activity_booklist_indicator, "field 'mIndicator'", b40.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicListCategoryActivity comicListCategoryActivity = this.f9730do;
        if (comicListCategoryActivity != null) {
            this.f9730do = null;
            comicListCategoryActivity.mViewPager = null;
            comicListCategoryActivity.mIndicator = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
