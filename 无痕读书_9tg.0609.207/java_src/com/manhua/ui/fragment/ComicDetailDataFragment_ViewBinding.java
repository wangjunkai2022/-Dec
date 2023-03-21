package com.manhua.ui.fragment;

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
public class ComicDetailDataFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicDetailDataFragment f9901do;

    /* renamed from: for  reason: not valid java name */
    public View f9902for;

    /* renamed from: if  reason: not valid java name */
    public View f9903if;

    /* renamed from: new  reason: not valid java name */
    public View f9904new;

    /* renamed from: try  reason: not valid java name */
    public View f9905try;

    /* renamed from: com.manhua.ui.fragment.ComicDetailDataFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicDetailDataFragment f9906do;

        public Cdo(ComicDetailDataFragment_ViewBinding comicDetailDataFragment_ViewBinding, ComicDetailDataFragment comicDetailDataFragment) {
            this.f9906do = comicDetailDataFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9906do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicDetailDataFragment_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicDetailDataFragment f9907do;

        public Cfor(ComicDetailDataFragment_ViewBinding comicDetailDataFragment_ViewBinding, ComicDetailDataFragment comicDetailDataFragment) {
            this.f9907do = comicDetailDataFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9907do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicDetailDataFragment_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicDetailDataFragment f9908do;

        public Cif(ComicDetailDataFragment_ViewBinding comicDetailDataFragment_ViewBinding, ComicDetailDataFragment comicDetailDataFragment) {
            this.f9908do = comicDetailDataFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9908do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicDetailDataFragment_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicDetailDataFragment f9909do;

        public Cnew(ComicDetailDataFragment_ViewBinding comicDetailDataFragment_ViewBinding, ComicDetailDataFragment comicDetailDataFragment) {
            this.f9909do = comicDetailDataFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9909do.menuClick(view);
        }
    }

    @UiThread
    public ComicDetailDataFragment_ViewBinding(ComicDetailDataFragment comicDetailDataFragment, View view) {
        this.f9901do = comicDetailDataFragment;
        comicDetailDataFragment.mCategoryTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_category_txt, "field 'mCategoryTxt'", TextView.class);
        comicDetailDataFragment.mStatusTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_status_txt, "field 'mStatusTxt'", TextView.class);
        comicDetailDataFragment.mUpdateTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_update_txt, "field 'mUpdateTxt'", TextView.class);
        comicDetailDataFragment.mStarValueTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_starbar_txt, "field 'mStarValueTxt'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.activity_book_detail_starbar, "field 'mStarBarView' and method 'menuClick'");
        comicDetailDataFragment.mStarBarView = (StarBarView) Utils.castView(findRequiredView, R.id.activity_book_detail_starbar, "field 'mStarBarView'", StarBarView.class);
        this.f9903if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicDetailDataFragment));
        comicDetailDataFragment.mAdViewRectangle = (AdViewRectangle) Utils.findRequiredViewAsType(view, R.id.adview_rectangle, "field 'mAdViewRectangle'", AdViewRectangle.class);
        comicDetailDataFragment.mBookIntroExpandeTxt = (ExpandableTextView) Utils.findRequiredViewAsType(view, R.id.book_detail_intro_text, "field 'mBookIntroExpandeTxt'", ExpandableTextView.class);
        comicDetailDataFragment.mNewChapterTimeTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_newchapter_time_txt, "field 'mNewChapterTimeTxt'", TextView.class);
        comicDetailDataFragment.mNewChapterTitleTxt = (TextView) Utils.findRequiredViewAsType(view, R.id.activity_book_detail_newchapter_title_txt, "field 'mNewChapterTitleTxt'", TextView.class);
        comicDetailDataFragment.mAuthorRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.book_detail_author_recyclerView, "field 'mAuthorRecyclerView'", RecyclerView.class);
        comicDetailDataFragment.mRecommendRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.book_detail_recommend_recyclerView, "field 'mRecommendRecyclerView'", RecyclerView.class);
        comicDetailDataFragment.updateTagView = Utils.findRequiredView(view, R.id.activity_book_detail_update_portrait, "field 'updateTagView'");
        comicDetailDataFragment.authorLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.book_detail_author_layout, "field 'authorLayout'", LinearLayout.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.book_detail_recomment_refresh, "field 'authorRefreshBtn' and method 'menuClick'");
        comicDetailDataFragment.authorRefreshBtn = (TextView) Utils.castView(findRequiredView2, R.id.book_detail_recomment_refresh, "field 'authorRefreshBtn'", TextView.class);
        this.f9902for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, comicDetailDataFragment));
        comicDetailDataFragment.sameLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.book_detail_same_layout, "field 'sameLayout'", LinearLayout.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.book_detail_other_refresh, "field 'sameRefreshBtn' and method 'menuClick'");
        comicDetailDataFragment.sameRefreshBtn = (TextView) Utils.castView(findRequiredView3, R.id.book_detail_other_refresh, "field 'sameRefreshBtn'", TextView.class);
        this.f9904new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, comicDetailDataFragment));
        comicDetailDataFragment.mTopCommentLayout = (TopCommentLayout) Utils.findRequiredViewAsType(view, R.id.app_top_commentview, "field 'mTopCommentLayout'", TopCommentLayout.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.activity_book_detail_starbar_layout, "method 'menuClick'");
        this.f9905try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, comicDetailDataFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicDetailDataFragment comicDetailDataFragment = this.f9901do;
        if (comicDetailDataFragment != null) {
            this.f9901do = null;
            comicDetailDataFragment.mCategoryTxt = null;
            comicDetailDataFragment.mStatusTxt = null;
            comicDetailDataFragment.mUpdateTxt = null;
            comicDetailDataFragment.mStarValueTxt = null;
            comicDetailDataFragment.mStarBarView = null;
            comicDetailDataFragment.mAdViewRectangle = null;
            comicDetailDataFragment.mBookIntroExpandeTxt = null;
            comicDetailDataFragment.mNewChapterTimeTxt = null;
            comicDetailDataFragment.mNewChapterTitleTxt = null;
            comicDetailDataFragment.mAuthorRecyclerView = null;
            comicDetailDataFragment.mRecommendRecyclerView = null;
            comicDetailDataFragment.updateTagView = null;
            comicDetailDataFragment.authorLayout = null;
            comicDetailDataFragment.authorRefreshBtn = null;
            comicDetailDataFragment.sameLayout = null;
            comicDetailDataFragment.sameRefreshBtn = null;
            comicDetailDataFragment.mTopCommentLayout = null;
            this.f9903if.setOnClickListener(null);
            this.f9903if = null;
            this.f9902for.setOnClickListener(null);
            this.f9902for = null;
            this.f9904new.setOnClickListener(null);
            this.f9904new = null;
            this.f9905try.setOnClickListener(null);
            this.f9905try = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
