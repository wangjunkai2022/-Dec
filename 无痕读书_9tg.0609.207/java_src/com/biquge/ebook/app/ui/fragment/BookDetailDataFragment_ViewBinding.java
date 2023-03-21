package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.ui.view.TopCommentLayout;
import com.biquge.ebook.app.widget.ExpandableTextView;
import com.biquge.ebook.app.widget.StarBarView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookDetailDataFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookDetailDataFragment f7198do;

    /* renamed from: for  reason: not valid java name */
    public View f7199for;

    /* renamed from: if  reason: not valid java name */
    public View f7200if;

    /* renamed from: new  reason: not valid java name */
    public View f7201new;

    /* renamed from: try  reason: not valid java name */
    public View f7202try;

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookDetailDataFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookDetailDataFragment f7203do;

        public Cdo(BookDetailDataFragment_ViewBinding bookDetailDataFragment_ViewBinding, BookDetailDataFragment bookDetailDataFragment) {
            this.f7203do = bookDetailDataFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7203do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookDetailDataFragment_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookDetailDataFragment f7204do;

        public Cfor(BookDetailDataFragment_ViewBinding bookDetailDataFragment_ViewBinding, BookDetailDataFragment bookDetailDataFragment) {
            this.f7204do = bookDetailDataFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7204do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookDetailDataFragment_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookDetailDataFragment f7205do;

        public Cif(BookDetailDataFragment_ViewBinding bookDetailDataFragment_ViewBinding, BookDetailDataFragment bookDetailDataFragment) {
            this.f7205do = bookDetailDataFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7205do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookDetailDataFragment_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookDetailDataFragment f7206do;

        public Cnew(BookDetailDataFragment_ViewBinding bookDetailDataFragment_ViewBinding, BookDetailDataFragment bookDetailDataFragment) {
            this.f7206do = bookDetailDataFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7206do.menuClick(view);
        }
    }

    @UiThread
    public BookDetailDataFragment_ViewBinding(BookDetailDataFragment bookDetailDataFragment, View view) {
        this.f7198do = bookDetailDataFragment;
        bookDetailDataFragment.mCategoryTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_category_txt, "field 'mCategoryTxt'", TextView.class);
        bookDetailDataFragment.mStatusTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_status_txt, "field 'mStatusTxt'", TextView.class);
        bookDetailDataFragment.mUpdateTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_update_txt, "field 'mUpdateTxt'", TextView.class);
        bookDetailDataFragment.mStarValueTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_starbar_txt, "field 'mStarValueTxt'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.activity_book_detail_starbar, "field 'mStarBarView' and method 'menuClick'");
        bookDetailDataFragment.mStarBarView = (StarBarView) Utils.castView(findRequiredView, R.id.activity_book_detail_starbar, "field 'mStarBarView'", StarBarView.class);
        this.f7200if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookDetailDataFragment));
        bookDetailDataFragment.mBookIntroExpandeTxt = (ExpandableTextView) Utils.findRequiredViewAsType(view, R.id.book_detail_intro_text, "field 'mBookIntroExpandeTxt'", ExpandableTextView.class);
        bookDetailDataFragment.mNewChapterTimeTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_newchapter_time_txt, "field 'mNewChapterTimeTxt'", TextView.class);
        bookDetailDataFragment.mNewChapterTitleTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_newchapter_title_txt, "field 'mNewChapterTitleTxt'", TextView.class);
        bookDetailDataFragment.mAuthorRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.book_detail_author_recyclerView, "field 'mAuthorRecyclerView'", RecyclerView.class);
        bookDetailDataFragment.mRecommendRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.book_detail_recommend_recyclerView, "field 'mRecommendRecyclerView'", RecyclerView.class);
        bookDetailDataFragment.updateTagView = Utils.findRequiredView(view, R.id.activity_book_detail_update_portrait, "field 'updateTagView'");
        bookDetailDataFragment.authorLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.book_detail_author_layout, "field 'authorLayout'", LinearLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.book_detail_recomment_refresh, "field 'authorRefreshBtn' and method 'menuClick'");
        bookDetailDataFragment.authorRefreshBtn = (TextView) Utils.castView(findRequiredView2, R.id.book_detail_recomment_refresh, "field 'authorRefreshBtn'", TextView.class);
        this.f7199for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, bookDetailDataFragment));
        bookDetailDataFragment.sameLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.book_detail_same_layout, "field 'sameLayout'", LinearLayout.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.book_detail_other_refresh, "field 'sameRefreshBtn' and method 'menuClick'");
        bookDetailDataFragment.sameRefreshBtn = (TextView) Utils.castView(findRequiredView3, R.id.book_detail_other_refresh, "field 'sameRefreshBtn'", TextView.class);
        this.f7201new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, bookDetailDataFragment));
        bookDetailDataFragment.mAdViewRectangle = (AdViewRectangle) Utils.findRequiredViewAsType(view, R.id.adview_rectangle, "field 'mAdViewRectangle'", AdViewRectangle.class);
        bookDetailDataFragment.mTopCommentLayout = (TopCommentLayout) Utils.findRequiredViewAsType(view, R.id.app_top_commentview, "field 'mTopCommentLayout'", TopCommentLayout.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.activity_book_detail_starbar_layout, "method 'menuClick'");
        this.f7202try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, bookDetailDataFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookDetailDataFragment bookDetailDataFragment = this.f7198do;
        if (bookDetailDataFragment != null) {
            this.f7198do = null;
            bookDetailDataFragment.mCategoryTxt = null;
            bookDetailDataFragment.mStatusTxt = null;
            bookDetailDataFragment.mUpdateTxt = null;
            bookDetailDataFragment.mStarValueTxt = null;
            bookDetailDataFragment.mStarBarView = null;
            bookDetailDataFragment.mBookIntroExpandeTxt = null;
            bookDetailDataFragment.mNewChapterTimeTxt = null;
            bookDetailDataFragment.mNewChapterTitleTxt = null;
            bookDetailDataFragment.mAuthorRecyclerView = null;
            bookDetailDataFragment.mRecommendRecyclerView = null;
            bookDetailDataFragment.updateTagView = null;
            bookDetailDataFragment.authorLayout = null;
            bookDetailDataFragment.authorRefreshBtn = null;
            bookDetailDataFragment.sameLayout = null;
            bookDetailDataFragment.sameRefreshBtn = null;
            bookDetailDataFragment.mAdViewRectangle = null;
            bookDetailDataFragment.mTopCommentLayout = null;
            this.f7200if.setOnClickListener(null);
            this.f7200if = null;
            this.f7199for.setOnClickListener(null);
            this.f7199for = null;
            this.f7201new.setOnClickListener(null);
            this.f7201new = null;
            this.f7202try.setOnClickListener(null);
            this.f7202try = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
