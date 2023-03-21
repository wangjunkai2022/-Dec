package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.apk.b40;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookListCategoryActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookListCategoryActivity f6485do;

    @UiThread
    public BookListCategoryActivity_ViewBinding(BookListCategoryActivity bookListCategoryActivity, View view) {
        this.f6485do = bookListCategoryActivity;
        bookListCategoryActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.activity_booklist_viewPager, "field 'mViewPager'", ViewPager.class);
        bookListCategoryActivity.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.activity_booklist_indicator, "field 'mIndicator'", b40.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookListCategoryActivity bookListCategoryActivity = this.f6485do;
        if (bookListCategoryActivity != null) {
            this.f6485do = null;
            bookListCategoryActivity.mViewPager = null;
            bookListCategoryActivity.mIndicator = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
