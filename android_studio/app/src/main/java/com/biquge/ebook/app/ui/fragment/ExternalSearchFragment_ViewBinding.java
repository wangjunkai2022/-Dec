package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout;
import com.biquge.ebook.app.widget.ClearEditText;
import com.google.android.flexbox.FlexboxLayout;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ExternalSearchFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ExternalSearchFragment f7449do;

    /* renamed from: for  reason: not valid java name */
    public View f7450for;

    /* renamed from: if  reason: not valid java name */
    public View f7451if;

    /* renamed from: new  reason: not valid java name */
    public View f7452new;

    /* renamed from: com.biquge.ebook.app.ui.fragment.ExternalSearchFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ExternalSearchFragment f7453do;

        public Cdo(ExternalSearchFragment_ViewBinding externalSearchFragment_ViewBinding, ExternalSearchFragment externalSearchFragment) {
            this.f7453do = externalSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7453do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.ExternalSearchFragment_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ExternalSearchFragment f7454do;

        public Cfor(ExternalSearchFragment_ViewBinding externalSearchFragment_ViewBinding, ExternalSearchFragment externalSearchFragment) {
            this.f7454do = externalSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7454do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.ExternalSearchFragment_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ExternalSearchFragment f7455do;

        public Cif(ExternalSearchFragment_ViewBinding externalSearchFragment_ViewBinding, ExternalSearchFragment externalSearchFragment) {
            this.f7455do = externalSearchFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7455do.menuClick(view);
        }
    }

    @UiThread
    public ExternalSearchFragment_ViewBinding(ExternalSearchFragment externalSearchFragment, View view) {
        this.f7449do = externalSearchFragment;
        externalSearchFragment.mSearchET = (ClearEditText) Utils.findRequiredViewAsType(view, R.id.search_input_et, "field 'mSearchET'", ClearEditText.class);
        externalSearchFragment.mWebSiteFlexLayout = (FlexboxLayout) Utils.findRequiredViewAsType(view, R.id.fragment_web_search_flexbox_layout, "field 'mWebSiteFlexLayout'", FlexboxLayout.class);
        externalSearchFragment.mHistoryFlexboxLayout = (FlexboxLayout) Utils.findRequiredViewAsType(view, R.id.search_history_flexbox_layout, "field 'mHistoryFlexboxLayout'", FlexboxLayout.class);
        externalSearchFragment.fastLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.search_fast_result_layout, "field 'fastLayout'", FrameLayout.class);
        externalSearchFragment.fastRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.search_fast_result_rv, "field 'fastRecyclerView'", RecyclerView.class);
        externalSearchFragment.mWebResultLayout = (WebSearchResultLayout) Utils.findRequiredViewAsType(view, R.id.web_search_result_layout, "field 'mWebResultLayout'", WebSearchResultLayout.class);
        externalSearchFragment.mAdViewRectangle = (AdViewRectangle) Utils.findRequiredViewAsType(view, R.id.adview_rectangle, "field 'mAdViewRectangle'", AdViewRectangle.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.txt_download_back_view, "method 'menuClick'");
        this.f7451if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, externalSearchFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.search_gosearch_txt, "method 'menuClick'");
        this.f7450for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, externalSearchFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.fragment_txt_search_clear_history, "method 'menuClick'");
        this.f7452new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, externalSearchFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ExternalSearchFragment externalSearchFragment = this.f7449do;
        if (externalSearchFragment != null) {
            this.f7449do = null;
            externalSearchFragment.mSearchET = null;
            externalSearchFragment.mWebSiteFlexLayout = null;
            externalSearchFragment.mHistoryFlexboxLayout = null;
            externalSearchFragment.fastLayout = null;
            externalSearchFragment.fastRecyclerView = null;
            externalSearchFragment.mWebResultLayout = null;
            externalSearchFragment.mAdViewRectangle = null;
            this.f7451if.setOnClickListener(null);
            this.f7451if = null;
            this.f7450for.setOnClickListener(null);
            this.f7450for = null;
            this.f7452new.setOnClickListener(null);
            this.f7452new = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
