package com.biquge.ebook.app.ui.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cfinally;
import com.apk.g6;
import com.apk.lv;
import com.apk.ra;
import com.apk.sa;
import com.apk.ta;
import com.apk.w0;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.adapter.AuthorAdapter;
import com.biquge.ebook.app.adapter.RecommendAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.view.StarPopupView;
import com.biquge.ebook.app.ui.view.TopCommentLayout;
import com.biquge.ebook.app.widget.ExpandableTextView;
import com.biquge.ebook.app.widget.StarBarView;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookDetailDataFragment extends g6 {
    @BindView(R.id.book_detail_author_layout)
    public LinearLayout authorLayout;
    @BindView(R.id.book_detail_recomment_refresh)
    public TextView authorRefreshBtn;

    /* renamed from: do  reason: not valid java name */
    public AuthorAdapter f7193do;

    /* renamed from: for  reason: not valid java name */
    public RecommendAdapter f7194for;

    /* renamed from: if  reason: not valid java name */
    public List<Book.SameUserBooksNameBean> f7195if;
    @BindView(R.id.adview_rectangle)
    public AdViewRectangle mAdViewRectangle;
    @BindView(R.id.book_detail_author_recyclerView)
    public RecyclerView mAuthorRecyclerView;
    @BindView(R.id.book_detail_intro_text)
    public ExpandableTextView mBookIntroExpandeTxt;
    @BindView(R.id.activity_book_detail_category_txt)
    public TextView mCategoryTxt;
    @BindView(R.id.activity_book_detail_newchapter_time_txt)
    public TextView mNewChapterTimeTxt;
    @BindView(R.id.activity_book_detail_newchapter_title_txt)
    public TextView mNewChapterTitleTxt;
    @BindView(R.id.book_detail_recommend_recyclerView)
    public RecyclerView mRecommendRecyclerView;
    @BindView(R.id.activity_book_detail_starbar)
    public StarBarView mStarBarView;
    @BindView(R.id.activity_book_detail_starbar_txt)
    public TextView mStarValueTxt;
    @BindView(R.id.activity_book_detail_status_txt)
    public TextView mStatusTxt;
    @BindView(R.id.app_top_commentview)
    public TopCommentLayout mTopCommentLayout;
    @BindView(R.id.activity_book_detail_update_txt)
    public TextView mUpdateTxt;

    /* renamed from: new  reason: not valid java name */
    public List<Book.SameCategoryBooksNameBean> f7196new;
    @BindView(R.id.book_detail_same_layout)
    public LinearLayout sameLayout;
    @BindView(R.id.book_detail_other_refresh)
    public TextView sameRefreshBtn;

    /* renamed from: try  reason: not valid java name */
    public Book f7197try;
    @BindView(R.id.activity_book_detail_update_portrait)
    public View updateTagView;

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_detail_data;
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f7197try = (Book) arguments.getSerializable("book");
        }
        m3363synchronized();
        try {
            if (Cfinally.m797else().m803abstract()) {
                this.mAdViewRectangle.m3274for(getSupportActivity(), new ta(this), "rectbdetail");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (!w0.m2896throws() || this.f7197try == null || this.mTopCommentLayout == null) {
                return;
            }
            this.mTopCommentLayout.m3422do(getSupportActivity(), true, true, this.f7197try.getId(), this.f7197try.getName());
            this.mTopCommentLayout.setVisibility(0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        this.mStarBarView.setOpenStar(false);
        this.mAuthorRecyclerView.setLayoutManager(new GridLayoutManager(getSupportActivity(), 4));
        this.mAuthorRecyclerView.setHasFixedSize(true);
        this.mAuthorRecyclerView.setNestedScrollingEnabled(false);
        ze.m3165else(this.mAuthorRecyclerView);
        this.mRecommendRecyclerView.setLayoutManager(new GridLayoutManager(getSupportActivity(), 4));
        this.mRecommendRecyclerView.setHasFixedSize(true);
        this.mRecommendRecyclerView.setNestedScrollingEnabled(false);
        ze.m3165else(this.mRecommendRecyclerView);
    }

    @OnClick({R.id.activity_book_detail_starbar_layout, R.id.activity_book_detail_starbar, R.id.book_detail_recomment_refresh, R.id.book_detail_other_refresh})
    public void menuClick(View view) {
        switch (view.getId()) {
            case R.id.activity_book_detail_starbar /* 2131296344 */:
            case R.id.activity_book_detail_starbar_layout /* 2131296345 */:
                if (this.f7197try != null) {
                    getSupportActivity();
                    lv lvVar = new lv();
                    StarPopupView starPopupView = new StarPopupView(getSupportActivity(), this.f7197try);
                    lvVar.f2917continue = zu.f6266try;
                    starPopupView.popupInfo = lvVar;
                    starPopupView.show();
                    return;
                }
                return;
            case R.id.book_detail_other_refresh /* 2131296466 */:
                try {
                    if (this.f7196new == null || this.f7196new.size() <= 0) {
                        return;
                    }
                    this.f7194for.setNewData(ze.m3167final(this.f7196new, 8));
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case R.id.book_detail_recomment_refresh /* 2131296468 */:
                try {
                    if (this.f7195if == null || this.f7195if.size() <= 0) {
                        return;
                    }
                    this.f7193do.setNewData(ze.m3167final(this.f7195if, 8));
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            default:
                return;
        }
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        AdViewRectangle adViewRectangle = this.mAdViewRectangle;
        if (adViewRectangle != null) {
            adViewRectangle.m3275new();
            this.mAdViewRectangle = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        AdViewRectangle adViewRectangle = this.mAdViewRectangle;
        if (adViewRectangle != null) {
            adViewRectangle.f6316break = true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        AdViewRectangle adViewRectangle = this.mAdViewRectangle;
        if (adViewRectangle != null) {
            adViewRectangle.f6316break = false;
        }
    }

    /* renamed from: synchronized  reason: not valid java name */
    public final void m3363synchronized() {
        Book book = this.f7197try;
        if (book != null) {
            this.mCategoryTxt.setText(ze.r(R.string.book_detail_category_txt, book.getCName()));
            this.mStatusTxt.setText(ze.r(R.string.book_detail_type_txt, this.f7197try.getBookStatus()));
            if (!TextUtils.isEmpty(this.f7197try.getUpdateCycle())) {
                this.mUpdateTxt.setText(ze.r(R.string.book_detail_update_txt, this.f7197try.getUpdateCycle()));
                this.mUpdateTxt.setVisibility(0);
                this.updateTagView.setVisibility(0);
            }
            TextView textView = this.mStarValueTxt;
            textView.setText(ze.r(R.string.xml_value_score_txt, this.f7197try.getBookVote().getScore() + ""));
            this.mStarBarView.setStarMark(this.f7197try.getBookVote().getScore() / 2.0f);
            this.mBookIntroExpandeTxt.setText(this.f7197try.getDesc());
            this.mNewChapterTimeTxt.setText(this.f7197try.getLastTime());
            this.mNewChapterTitleTxt.setText(ze.r(R.string.xml_new_placeholder_txt, this.f7197try.getLastChapter()));
            if (this.f7197try.getSameCategoryBooks() != null && this.f7197try.getSameCategoryBooks().size() > 0) {
                List<Book.SameCategoryBooksNameBean> sameCategoryBooks = this.f7197try.getSameCategoryBooks();
                try {
                    if (sameCategoryBooks.size() > 0) {
                        this.sameLayout.setVisibility(0);
                        if (sameCategoryBooks.size() > 8) {
                            this.sameRefreshBtn.setVisibility(0);
                        }
                        this.f7196new = sameCategoryBooks;
                        RecommendAdapter recommendAdapter = new RecommendAdapter();
                        this.f7194for = recommendAdapter;
                        this.mRecommendRecyclerView.setAdapter(recommendAdapter);
                        this.f7194for.setNewData(ze.m3167final(this.f7196new, 8));
                        this.f7194for.setOnItemClickListener(new sa(this));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (this.f7197try.getSameUserBooks() == null || this.f7197try.getSameUserBooks().size() <= 0) {
                return;
            }
            List<Book.SameUserBooksNameBean> sameUserBooks = this.f7197try.getSameUserBooks();
            try {
                if (sameUserBooks.size() > 0) {
                    this.authorLayout.setVisibility(0);
                    if (sameUserBooks.size() > 8) {
                        this.authorRefreshBtn.setVisibility(0);
                    }
                    this.f7195if = sameUserBooks;
                    AuthorAdapter authorAdapter = new AuthorAdapter();
                    this.f7193do = authorAdapter;
                    this.mAuthorRecyclerView.setAdapter(authorAdapter);
                    this.f7193do.setNewData(ze.m3167final(this.f7195if, 8));
                    this.f7193do.setOnItemClickListener(new ra(this));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
