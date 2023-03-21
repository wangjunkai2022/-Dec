package com.manhua.ui.activity;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.biquge.ebook.app.ad.ads.AdViewBanner;
import com.manhua.ui.widget.ComicPageTitleView;
import com.manhua.ui.widget.ComicReadMenuView;
import com.manhua.ui.widget.ComicReaderViewpager;
import com.manhua.ui.widget.PublicLoadingView;
import com.manhua.ui.widget.ZoomRecyclerView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicReadActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicReadActivity f9826do;

    @UiThread
    public ComicReadActivity_ViewBinding(ComicReadActivity comicReadActivity, View view) {
        this.f9826do = comicReadActivity;
        comicReadActivity.mMenuView = (ComicReadMenuView) Utils.findRequiredViewAsType(view, R.id.read_book_menu_view, "field 'mMenuView'", ComicReadMenuView.class);
        comicReadActivity.mTitleTView = (ComicPageTitleView) Utils.findRequiredViewAsType(view, R.id.read_bottom_title, "field 'mTitleTView'", ComicPageTitleView.class);
        comicReadActivity.mLoadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.loading_layout, "field 'mLoadingView'", PublicLoadingView.class);
        comicReadActivity.mNightView = Utils.findRequiredView(view, R.id.comic_night_view, "field 'mNightView'");
        comicReadActivity.mViewPager = (ComicReaderViewpager) Utils.findRequiredViewAsType(view, R.id.read_content_viewpager, "field 'mViewPager'", ComicReaderViewpager.class);
        comicReadActivity.mRecyclerView = (ZoomRecyclerView) Utils.findRequiredViewAsType(view, R.id.read_content_recyclerview, "field 'mRecyclerView'", ZoomRecyclerView.class);
        comicReadActivity.mAdViewBanner = (AdViewBanner) Utils.findRequiredViewAsType(view, R.id.adview_banner, "field 'mAdViewBanner'", AdViewBanner.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicReadActivity comicReadActivity = this.f9826do;
        if (comicReadActivity != null) {
            this.f9826do = null;
            comicReadActivity.mMenuView = null;
            comicReadActivity.mTitleTView = null;
            comicReadActivity.mLoadingView = null;
            comicReadActivity.mNightView = null;
            comicReadActivity.mViewPager = null;
            comicReadActivity.mRecyclerView = null;
            comicReadActivity.mAdViewBanner = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
