package com.biquge.ebook.app.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import com.shizhefei.view.viewpager.SViewPager;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookSearchActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookSearchActivity f6521do;

    @UiThread
    public BookSearchActivity_ViewBinding(BookSearchActivity bookSearchActivity, View view) {
        this.f6521do = bookSearchActivity;
        bookSearchActivity.mViewPager = (SViewPager) Utils.findRequiredViewAsType(view, R.id.activity_search_viewPager, "field 'mViewPager'", SViewPager.class);
        bookSearchActivity.mIndicatorView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.activity_search_indicator, "field 'mIndicatorView'", ScrollIndicatorView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookSearchActivity bookSearchActivity = this.f6521do;
        if (bookSearchActivity != null) {
            this.f6521do = null;
            bookSearchActivity.mViewPager = null;
            bookSearchActivity.mIndicatorView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
