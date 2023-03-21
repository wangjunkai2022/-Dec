package com.biquge.ebook.app.ui.book;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.biquge.ebook.app.ad.ads.AdViewBanner;
import com.biquge.ebook.app.ui.book.view.ReadBookLayout;
import com.biquge.ebook.app.widget.BookPageTextView;
import com.biquge.ebook.app.widget.BookTitleTextView;
import com.manhua.ui.widget.ComicReaderViewpager;
import com.manhua.ui.widget.PageRecyclerView;
import com.manhua.ui.widget.PublicLoadingView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class NewBookReadActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public NewBookReadActivity f6992do;

    @UiThread
    public NewBookReadActivity_ViewBinding(NewBookReadActivity newBookReadActivity, View view) {
        this.f6992do = newBookReadActivity;
        newBookReadActivity.mMenuView = (NewBookReadMenuView) Utils.findRequiredViewAsType(view, R.id.read_book_menu_view, "field 'mMenuView'", NewBookReadMenuView.class);
        newBookReadActivity.mLoadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.bookread_loading_layout, "field 'mLoadingView'", PublicLoadingView.class);
        newBookReadActivity.mReadLayout = (ReadBookLayout) Utils.findRequiredViewAsType(view, R.id.read_content_layout, "field 'mReadLayout'", ReadBookLayout.class);
        newBookReadActivity.mNightView = Utils.findRequiredView(view, R.id.book_night_view, "field 'mNightView'");
        newBookReadActivity.mViewPager = (ComicReaderViewpager) Utils.findRequiredViewAsType(view, R.id.read_content_viewpager, "field 'mViewPager'", ComicReaderViewpager.class);
        newBookReadActivity.mRecyclerView = (PageRecyclerView) Utils.findRequiredViewAsType(view, R.id.read_content_recyclerview, "field 'mRecyclerView'", PageRecyclerView.class);
        newBookReadActivity.mRecyclerLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.read_content_recyclerview_layout, "field 'mRecyclerLayout'", LinearLayout.class);
        newBookReadActivity.mBookTitleTextView = (BookTitleTextView) Utils.findRequiredViewAsType(view, R.id.book_read_chapter_name_txt, "field 'mBookTitleTextView'", BookTitleTextView.class);
        newBookReadActivity.mBookPageTextView = (BookPageTextView) Utils.findRequiredViewAsType(view, R.id.book_read_slide_page_txt, "field 'mBookPageTextView'", BookPageTextView.class);
        newBookReadActivity.mAdViewBanner = (AdViewBanner) Utils.findRequiredViewAsType(view, R.id.adview_banner, "field 'mAdViewBanner'", AdViewBanner.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        NewBookReadActivity newBookReadActivity = this.f6992do;
        if (newBookReadActivity != null) {
            this.f6992do = null;
            newBookReadActivity.mMenuView = null;
            newBookReadActivity.mLoadingView = null;
            newBookReadActivity.mReadLayout = null;
            newBookReadActivity.mNightView = null;
            newBookReadActivity.mViewPager = null;
            newBookReadActivity.mRecyclerView = null;
            newBookReadActivity.mRecyclerLayout = null;
            newBookReadActivity.mBookTitleTextView = null;
            newBookReadActivity.mBookPageTextView = null;
            newBookReadActivity.mAdViewBanner = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
