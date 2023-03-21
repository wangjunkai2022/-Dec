package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.widget.ClearEditText;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.google.android.flexbox.FlexboxLayout;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookSearchFragment_ViewBinding implements Unbinder {

    /* renamed from: case  reason: not valid java name */
    public View f7336case;

    /* renamed from: do  reason: not valid java name */
    public BookSearchFragment f7337do;

    /* renamed from: else  reason: not valid java name */
    public View f7338else;

    /* renamed from: for  reason: not valid java name */
    public View f7339for;

    /* renamed from: goto  reason: not valid java name */
    public View f7340goto;

    /* renamed from: if  reason: not valid java name */
    public View f7341if;

    /* renamed from: new  reason: not valid java name */
    public View f7342new;

    /* renamed from: try  reason: not valid java name */
    public View f7343try;

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment_ViewBinding$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookSearchFragment f7344do;

        public Ccase(BookSearchFragment_ViewBinding bookSearchFragment_ViewBinding, BookSearchFragment bookSearchFragment) {
            this.f7344do = bookSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7344do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookSearchFragment f7345do;

        public Cdo(BookSearchFragment_ViewBinding bookSearchFragment_ViewBinding, BookSearchFragment bookSearchFragment) {
            this.f7345do = bookSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7345do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment_ViewBinding$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookSearchFragment f7346do;

        public Celse(BookSearchFragment_ViewBinding bookSearchFragment_ViewBinding, BookSearchFragment bookSearchFragment) {
            this.f7346do = bookSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7346do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookSearchFragment f7347do;

        public Cfor(BookSearchFragment_ViewBinding bookSearchFragment_ViewBinding, BookSearchFragment bookSearchFragment) {
            this.f7347do = bookSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7347do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookSearchFragment f7348do;

        public Cif(BookSearchFragment_ViewBinding bookSearchFragment_ViewBinding, BookSearchFragment bookSearchFragment) {
            this.f7348do = bookSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7348do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookSearchFragment f7349do;

        public Cnew(BookSearchFragment_ViewBinding bookSearchFragment_ViewBinding, BookSearchFragment bookSearchFragment) {
            this.f7349do = bookSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7349do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookSearchFragment_ViewBinding$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookSearchFragment f7350do;

        public Ctry(BookSearchFragment_ViewBinding bookSearchFragment_ViewBinding, BookSearchFragment bookSearchFragment) {
            this.f7350do = bookSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7350do.menuClick(view);
        }
    }

    @UiThread
    public BookSearchFragment_ViewBinding(BookSearchFragment bookSearchFragment, View view) {
        this.f7337do = bookSearchFragment;
        bookSearchFragment.mMoreTagView = Utils.findRequiredView(view, R.id.search_toolbar_more_tag, "field 'mMoreTagView'");
        View findRequiredView = Utils.findRequiredView(view, R.id.search_platform_spinner, "field 'mSpinnerTxt' and method 'menuClick'");
        bookSearchFragment.mSpinnerTxt = (TextView) Utils.castView(findRequiredView, R.id.search_platform_spinner, "field 'mSpinnerTxt'", TextView.class);
        this.f7341if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookSearchFragment));
        bookSearchFragment.mSearchEdit = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.search_input_et, "field 'mSearchEdit'", ClearEditText.class);
        bookSearchFragment.mHotSearchRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.search_hot_recyclerView, "field 'mHotSearchRecyclerView'", RecyclerView.class);
        bookSearchFragment.mHistoryFlexboxLayout = (FlexboxLayout) Utils.findRequiredViewAsType(view, R.id.search_history_flexbox_layout, "field 'mHistoryFlexboxLayout'", FlexboxLayout.class);
        bookSearchFragment.fastLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.search_fast_result_layout, "field 'fastLayout'", FrameLayout.class);
        bookSearchFragment.fastRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.search_fast_result_rv, "field 'fastRecyclerView'", RecyclerView.class);
        bookSearchFragment.mResultLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.search_result_layout, "field 'mResultLayout'", LinearLayout.class);
        bookSearchFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        bookSearchFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.select_finish_bt, "field 'mSelectFinishBT' and method 'menuClick'");
        bookSearchFragment.mSelectFinishBT = (Button) Utils.castView(findRequiredView2, R.id.select_finish_bt, "field 'mSelectFinishBT'", Button.class);
        this.f7339for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, bookSearchFragment));
        bookSearchFragment.mForBooksLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.search_result_qs_layout, "field 'mForBooksLayout'", LinearLayout.class);
        bookSearchFragment.mForBooksTv = (TextView) Utils.findRequiredViewAsType(view, R.id.search_result_qs_tv, "field 'mForBooksTv'", TextView.class);
        bookSearchFragment.mModuleIndicatorView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.search_model_indicator, "field 'mModuleIndicatorView'", ScrollIndicatorView.class);
        bookSearchFragment.mAdViewRectangle = (AdViewRectangle) Utils.findRequiredViewAsType(view, R.id.adview_search_rectangle, "field 'mAdViewRectangle'", AdViewRectangle.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.search_back_layout, "method 'menuClick'");
        this.f7342new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, bookSearchFragment));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.search_gosearch_txt, "method 'menuClick'");
        this.f7343try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, bookSearchFragment));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.search_hot_search_refresh_txt, "method 'menuClick'");
        this.f7336case = findRequiredView5;
        findRequiredView5.setOnClickListener(new Ctry(this, bookSearchFragment));
        View findRequiredView6 = Utils.findRequiredView(view, R.id.search_hot_clear_history_txt, "method 'menuClick'");
        this.f7338else = findRequiredView6;
        findRequiredView6.setOnClickListener(new Ccase(this, bookSearchFragment));
        View findRequiredView7 = Utils.findRequiredView(view, R.id.select_cancel_bt, "method 'menuClick'");
        this.f7340goto = findRequiredView7;
        findRequiredView7.setOnClickListener(new Celse(this, bookSearchFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookSearchFragment bookSearchFragment = this.f7337do;
        if (bookSearchFragment != null) {
            this.f7337do = null;
            bookSearchFragment.mMoreTagView = null;
            bookSearchFragment.mSpinnerTxt = null;
            bookSearchFragment.mSearchEdit = null;
            bookSearchFragment.mHotSearchRecyclerView = null;
            bookSearchFragment.mHistoryFlexboxLayout = null;
            bookSearchFragment.fastLayout = null;
            bookSearchFragment.fastRecyclerView = null;
            bookSearchFragment.mResultLayout = null;
            bookSearchFragment.mPtrClassicFrameLayout = null;
            bookSearchFragment.mRecyclerView = null;
            bookSearchFragment.mSelectFinishBT = null;
            bookSearchFragment.mForBooksLayout = null;
            bookSearchFragment.mForBooksTv = null;
            bookSearchFragment.mModuleIndicatorView = null;
            bookSearchFragment.mAdViewRectangle = null;
            this.f7341if.setOnClickListener(null);
            this.f7341if = null;
            this.f7339for.setOnClickListener(null);
            this.f7339for = null;
            this.f7342new.setOnClickListener(null);
            this.f7342new = null;
            this.f7343try.setOnClickListener(null);
            this.f7343try = null;
            this.f7336case.setOnClickListener(null);
            this.f7336case = null;
            this.f7338else.setOnClickListener(null);
            this.f7338else = null;
            this.f7340goto.setOnClickListener(null);
            this.f7340goto = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
