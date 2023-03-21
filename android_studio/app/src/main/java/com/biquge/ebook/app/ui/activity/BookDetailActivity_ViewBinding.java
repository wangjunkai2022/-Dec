package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookDetailActivity_ViewBinding implements Unbinder {

    /* renamed from: case  reason: not valid java name */
    public View f6440case;

    /* renamed from: do  reason: not valid java name */
    public BookDetailActivity f6441do;

    /* renamed from: else  reason: not valid java name */
    public View f6442else;

    /* renamed from: for  reason: not valid java name */
    public View f6443for;

    /* renamed from: if  reason: not valid java name */
    public View f6444if;

    /* renamed from: new  reason: not valid java name */
    public View f6445new;

    /* renamed from: try  reason: not valid java name */
    public View f6446try;

    /* renamed from: com.biquge.ebook.app.ui.activity.BookDetailActivity_ViewBinding$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookDetailActivity f6447do;

        public Ccase(BookDetailActivity_ViewBinding bookDetailActivity_ViewBinding, BookDetailActivity bookDetailActivity) {
            this.f6447do = bookDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6447do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookDetailActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookDetailActivity f6448do;

        public Cdo(BookDetailActivity_ViewBinding bookDetailActivity_ViewBinding, BookDetailActivity bookDetailActivity) {
            this.f6448do = bookDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6448do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookDetailActivity_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookDetailActivity f6449do;

        public Cfor(BookDetailActivity_ViewBinding bookDetailActivity_ViewBinding, BookDetailActivity bookDetailActivity) {
            this.f6449do = bookDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6449do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookDetailActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookDetailActivity f6450do;

        public Cif(BookDetailActivity_ViewBinding bookDetailActivity_ViewBinding, BookDetailActivity bookDetailActivity) {
            this.f6450do = bookDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6450do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookDetailActivity_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookDetailActivity f6451do;

        public Cnew(BookDetailActivity_ViewBinding bookDetailActivity_ViewBinding, BookDetailActivity bookDetailActivity) {
            this.f6451do = bookDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6451do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookDetailActivity_ViewBinding$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookDetailActivity f6452do;

        public Ctry(BookDetailActivity_ViewBinding bookDetailActivity_ViewBinding, BookDetailActivity bookDetailActivity) {
            this.f6452do = bookDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6452do.menuClick(view);
        }
    }

    @UiThread
    public BookDetailActivity_ViewBinding(BookDetailActivity bookDetailActivity, View view) {
        this.f6441do = bookDetailActivity;
        bookDetailActivity.mAppBarLayout = (AppBarLayout) Utils.findRequiredViewAsType(view, R.id.comic_detail_appbarlayout, "field 'mAppBarLayout'", AppBarLayout.class);
        bookDetailActivity.mToolbarLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.comic_top_toolbar_layout, "field 'mToolbarLayout'", LinearLayout.class);
        bookDetailActivity.mIndicator = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.comic_detail_indicator, "field 'mIndicator'", ScrollIndicatorView.class);
        bookDetailActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.comic_detail_viewpager, "field 'mViewPager'", ViewPager.class);
        bookDetailActivity.mIconIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.comic_detail_icon_iv, "field 'mIconIv'", ImageView.class);
        bookDetailActivity.mBlurBgIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.comic_detail_blur_bg_iv, "field 'mBlurBgIv'", ImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.book_detail_back_view, "field 'mToolbarBackBtn' and method 'menuClick'");
        bookDetailActivity.mToolbarBackBtn = (ImageView) Utils.castView(findRequiredView, R.id.book_detail_back_view, "field 'mToolbarBackBtn'", ImageView.class);
        this.f6444if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookDetailActivity));
        bookDetailActivity.mToolbarTitleTv = (TextView) Utils.findRequiredViewAsType(view, R.id.book_detail_tile_txt, "field 'mToolbarTitleTv'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.book_detail_to_shelf_view, "field 'mToolbarAddShelfBtn' and method 'menuClick'");
        bookDetailActivity.mToolbarAddShelfBtn = (ImageView) Utils.castView(findRequiredView2, R.id.book_detail_to_shelf_view, "field 'mToolbarAddShelfBtn'", ImageView.class);
        this.f6443for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, bookDetailActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.book_detail_share_view, "field 'mToolbarShareBtn' and method 'menuClick'");
        bookDetailActivity.mToolbarShareBtn = (ImageView) Utils.castView(findRequiredView3, R.id.book_detail_share_view, "field 'mToolbarShareBtn'", ImageView.class);
        this.f6445new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, bookDetailActivity));
        bookDetailActivity.mUploadAuthorTv = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_upload_tv, "field 'mUploadAuthorTv'", TextView.class);
        bookDetailActivity.mAuthorTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_author_txt, "field 'mAuthorTxt'", TextView.class);
        bookDetailActivity.mNameTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_name_txt, "field 'mNameTxt'", TextView.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.activity_book_detail_add_shelf_bt, "field 'mAddOrDelShelfBT' and method 'menuClick'");
        bookDetailActivity.mAddOrDelShelfBT = (TextView) Utils.castView(findRequiredView4, R.id.activity_book_detail_add_shelf_bt, "field 'mAddOrDelShelfBT'", TextView.class);
        this.f6446try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, bookDetailActivity));
        bookDetailActivity.mMajorTv = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_major_tv, "field 'mMajorTv'", TextView.class);
        bookDetailActivity.mTagFlexboxLayout = (FlexboxLayout) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_flexbox, "field 'mTagFlexboxLayout'", FlexboxLayout.class);
        View findRequiredView5 = Utils.findRequiredView(view, R.id.activity_book_detail_read_bt, "method 'menuClick'");
        this.f6440case = findRequiredView5;
        findRequiredView5.setOnClickListener(new Ctry(this, bookDetailActivity));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.activity_book_detail_cache_bt, "method 'menuClick'");
        this.f6442else = findRequiredView6;
        findRequiredView6.setOnClickListener(new Ccase(this, bookDetailActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookDetailActivity bookDetailActivity = this.f6441do;
        if (bookDetailActivity != null) {
            this.f6441do = null;
            bookDetailActivity.mAppBarLayout = null;
            bookDetailActivity.mToolbarLayout = null;
            bookDetailActivity.mIndicator = null;
            bookDetailActivity.mViewPager = null;
            bookDetailActivity.mIconIv = null;
            bookDetailActivity.mBlurBgIv = null;
            bookDetailActivity.mToolbarBackBtn = null;
            bookDetailActivity.mToolbarTitleTv = null;
            bookDetailActivity.mToolbarAddShelfBtn = null;
            bookDetailActivity.mToolbarShareBtn = null;
            bookDetailActivity.mUploadAuthorTv = null;
            bookDetailActivity.mAuthorTxt = null;
            bookDetailActivity.mNameTxt = null;
            bookDetailActivity.mAddOrDelShelfBT = null;
            bookDetailActivity.mMajorTv = null;
            bookDetailActivity.mTagFlexboxLayout = null;
            this.f6444if.setOnClickListener(null);
            this.f6444if = null;
            this.f6443for.setOnClickListener(null);
            this.f6443for = null;
            this.f6445new.setOnClickListener(null);
            this.f6445new = null;
            this.f6446try.setOnClickListener(null);
            this.f6446try = null;
            this.f6440case.setOnClickListener(null);
            this.f6440case = null;
            this.f6442else.setOnClickListener(null);
            this.f6442else = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
