package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.b40;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookListFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookListFragment f7255do;

    /* renamed from: if  reason: not valid java name */
    public View f7256if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookListFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookListFragment f7257do;

        public Cdo(BookListFragment_ViewBinding bookListFragment_ViewBinding, BookListFragment bookListFragment) {
            this.f7257do = bookListFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7257do.menuClick();
        }
    }

    @UiThread
    public BookListFragment_ViewBinding(BookListFragment bookListFragment, View view) {
        this.f7255do = bookListFragment;
        bookListFragment.mSexIndicator = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.fragment_city_element_sex_indicator, "field 'mSexIndicator'", ScrollIndicatorView.class);
        bookListFragment.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.fragment_city_element_indicator, "field 'mIndicator'", b40.class);
        bookListFragment.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.fragment_city_element_viewPager, "field 'mViewPager'", ViewPager.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.fragment_element_menu_bt, "method 'menuClick'");
        this.f7256if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookListFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookListFragment bookListFragment = this.f7255do;
        if (bookListFragment != null) {
            this.f7255do = null;
            bookListFragment.mSexIndicator = null;
            bookListFragment.mIndicator = null;
            bookListFragment.mViewPager = null;
            this.f7256if.setOnClickListener(null);
            this.f7256if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
