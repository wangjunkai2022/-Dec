package com.manhua.ui.activity;

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
import com.google.android.material.appbar.AppBarLayout;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicDetailActivity_ViewBinding implements Unbinder {

    /* renamed from: case  reason: not valid java name */
    public View f9693case;

    /* renamed from: do  reason: not valid java name */
    public ComicDetailActivity f9694do;

    /* renamed from: for  reason: not valid java name */
    public View f9695for;

    /* renamed from: if  reason: not valid java name */
    public View f9696if;

    /* renamed from: new  reason: not valid java name */
    public View f9697new;

    /* renamed from: try  reason: not valid java name */
    public View f9698try;

    /* renamed from: com.manhua.ui.activity.ComicDetailActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicDetailActivity f9699do;

        public Cdo(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f9699do = comicDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9699do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicDetailActivity_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicDetailActivity f9700do;

        public Cfor(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f9700do = comicDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9700do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicDetailActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicDetailActivity f9701do;

        public Cif(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f9701do = comicDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9701do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicDetailActivity_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicDetailActivity f9702do;

        public Cnew(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f9702do = comicDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9702do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicDetailActivity_ViewBinding$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicDetailActivity f9703do;

        public Ctry(ComicDetailActivity_ViewBinding comicDetailActivity_ViewBinding, ComicDetailActivity comicDetailActivity) {
            this.f9703do = comicDetailActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9703do.menuClick(view);
        }
    }

    @UiThread
    public ComicDetailActivity_ViewBinding(ComicDetailActivity comicDetailActivity, View view) {
        this.f9694do = comicDetailActivity;
        comicDetailActivity.mAppBarLayout = (AppBarLayout) Utils.findRequiredViewAsType(view, R.id.comic_detail_appbarlayout, "field 'mAppBarLayout'", AppBarLayout.class);
        comicDetailActivity.mToolbarLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.comic_top_toolbar_layout, "field 'mToolbarLayout'", LinearLayout.class);
        comicDetailActivity.mIndicator = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.comic_detail_indicator, "field 'mIndicator'", ScrollIndicatorView.class);
        comicDetailActivity.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.comic_detail_viewpager, "field 'mViewPager'", ViewPager.class);
        comicDetailActivity.mIconIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.comic_detail_icon_iv, "field 'mIconIv'", ImageView.class);
        comicDetailActivity.mBlurBgIv = (ImageView) Utils.findRequiredViewAsType(view, R.id.comic_detail_blur_bg_iv, "field 'mBlurBgIv'", ImageView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.book_detail_back_view, "field 'mToolbarBackBtn' and method 'menuClick'");
        comicDetailActivity.mToolbarBackBtn = (ImageView) Utils.castView(findRequiredView, R.id.book_detail_back_view, "field 'mToolbarBackBtn'", ImageView.class);
        this.f9696if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicDetailActivity));
        comicDetailActivity.mToolbarTitleTv = (TextView) Utils.findRequiredViewAsType(view, R.id.book_detail_tile_txt, "field 'mToolbarTitleTv'", TextView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.book_detail_to_shelf_view, "field 'mToolbarShareBtn' and method 'menuClick'");
        comicDetailActivity.mToolbarShareBtn = (ImageView) Utils.castView(findRequiredView2, R.id.book_detail_to_shelf_view, "field 'mToolbarShareBtn'", ImageView.class);
        this.f9695for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, comicDetailActivity));
        comicDetailActivity.mUploadAuthorTv = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_upload_tv, "field 'mUploadAuthorTv'", TextView.class);
        comicDetailActivity.mAuthorTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_author_txt, "field 'mAuthorTxt'", TextView.class);
        comicDetailActivity.mNameTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_name_txt, "field 'mNameTxt'", TextView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.activity_book_detail_add_shelf_bt, "field 'mAddOrDelShelfBT' and method 'menuClick'");
        comicDetailActivity.mAddOrDelShelfBT = (TextView) Utils.castView(findRequiredView3, R.id.activity_book_detail_add_shelf_bt, "field 'mAddOrDelShelfBT'", TextView.class);
        this.f9697new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, comicDetailActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.activity_book_detail_read_bt, "method 'menuClick'");
        this.f9698try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, comicDetailActivity));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.activity_book_detail_cache_bt, "method 'menuClick'");
        this.f9693case = findRequiredView5;
        findRequiredView5.setOnClickListener(new Ctry(this, comicDetailActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicDetailActivity comicDetailActivity = this.f9694do;
        if (comicDetailActivity != null) {
            this.f9694do = null;
            comicDetailActivity.mAppBarLayout = null;
            comicDetailActivity.mToolbarLayout = null;
            comicDetailActivity.mIndicator = null;
            comicDetailActivity.mViewPager = null;
            comicDetailActivity.mIconIv = null;
            comicDetailActivity.mBlurBgIv = null;
            comicDetailActivity.mToolbarBackBtn = null;
            comicDetailActivity.mToolbarTitleTv = null;
            comicDetailActivity.mToolbarShareBtn = null;
            comicDetailActivity.mUploadAuthorTv = null;
            comicDetailActivity.mAuthorTxt = null;
            comicDetailActivity.mNameTxt = null;
            comicDetailActivity.mAddOrDelShelfBT = null;
            this.f9696if.setOnClickListener(null);
            this.f9696if = null;
            this.f9695for.setOnClickListener(null);
            this.f9695for = null;
            this.f9697new.setOnClickListener(null);
            this.f9697new = null;
            this.f9698try.setOnClickListener(null);
            this.f9698try = null;
            this.f9693case.setOnClickListener(null);
            this.f9693case = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
