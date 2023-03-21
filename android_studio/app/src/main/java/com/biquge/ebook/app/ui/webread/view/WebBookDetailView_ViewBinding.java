package com.biquge.ebook.app.ui.webread.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.ExpandableTextView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebBookDetailView_ViewBinding implements Unbinder {

    /* renamed from: case  reason: not valid java name */
    public View f7863case;

    /* renamed from: do  reason: not valid java name */
    public WebBookDetailView f7864do;

    /* renamed from: for  reason: not valid java name */
    public View f7865for;

    /* renamed from: if  reason: not valid java name */
    public View f7866if;

    /* renamed from: new  reason: not valid java name */
    public View f7867new;

    /* renamed from: try  reason: not valid java name */
    public View f7868try;

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDetailView_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebBookDetailView f7869do;

        public Cdo(WebBookDetailView_ViewBinding webBookDetailView_ViewBinding, WebBookDetailView webBookDetailView) {
            this.f7869do = webBookDetailView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7869do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDetailView_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebBookDetailView f7870do;

        public Cfor(WebBookDetailView_ViewBinding webBookDetailView_ViewBinding, WebBookDetailView webBookDetailView) {
            this.f7870do = webBookDetailView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7870do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDetailView_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebBookDetailView f7871do;

        public Cif(WebBookDetailView_ViewBinding webBookDetailView_ViewBinding, WebBookDetailView webBookDetailView) {
            this.f7871do = webBookDetailView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7871do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDetailView_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebBookDetailView f7872do;

        public Cnew(WebBookDetailView_ViewBinding webBookDetailView_ViewBinding, WebBookDetailView webBookDetailView) {
            this.f7872do = webBookDetailView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7872do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDetailView_ViewBinding$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebBookDetailView f7873do;

        public Ctry(WebBookDetailView_ViewBinding webBookDetailView_ViewBinding, WebBookDetailView webBookDetailView) {
            this.f7873do = webBookDetailView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7873do.menuClick(view);
        }
    }

    @UiThread
    public WebBookDetailView_ViewBinding(WebBookDetailView webBookDetailView, View view) {
        this.f7864do = webBookDetailView;
        View findRequiredView = Utils.findRequiredView(view, R.id.web_search_book_save, "field 'mShelfBtn' and method 'menuClick'");
        webBookDetailView.mShelfBtn = (TextView) Utils.castView(findRequiredView, R.id.web_search_book_save, "field 'mShelfBtn'", TextView.class);
        this.f7866if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, webBookDetailView));
        webBookDetailView.mBookCover = (ImageView) Utils.findRequiredViewAsType(view, R.id.web_search_book_cover, "field 'mBookCover'", ImageView.class);
        webBookDetailView.mBookName = (TextView) Utils.findRequiredViewAsType(view, R.id.web_search_book_name, "field 'mBookName'", TextView.class);
        webBookDetailView.mBookAuthor = (TextView) Utils.findRequiredViewAsType(view, R.id.web_search_book_author, "field 'mBookAuthor'", TextView.class);
        webBookDetailView.mBookSource = (TextView) Utils.findRequiredViewAsType(view, R.id.web_search_book_source, "field 'mBookSource'", TextView.class);
        webBookDetailView.mDescTv = (ExpandableTextView) Utils.findRequiredViewAsType(view, R.id.book_detail_intro_text, "field 'mDescTv'", ExpandableTextView.class);
        webBookDetailView.mChapterRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.web_search_book_chapter_rv, "field 'mChapterRecyclerView'", RecyclerView.class);
        webBookDetailView.mWebLoadingView = (WebLoadingView) Utils.findRequiredViewAsType(view, R.id.web_loading_view, "field 'mWebLoadingView'", WebLoadingView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.web_search_book_back_btn, "method 'menuClick'");
        this.f7865for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, webBookDetailView));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.web_search_book_read, "method 'menuClick'");
        this.f7867new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, webBookDetailView));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.web_search_book_chapter_more, "method 'menuClick'");
        this.f7868try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, webBookDetailView));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.web_search_book_web_url, "method 'menuClick'");
        this.f7863case = findRequiredView5;
        findRequiredView5.setOnClickListener(new Ctry(this, webBookDetailView));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebBookDetailView webBookDetailView = this.f7864do;
        if (webBookDetailView != null) {
            this.f7864do = null;
            webBookDetailView.mShelfBtn = null;
            webBookDetailView.mBookCover = null;
            webBookDetailView.mBookName = null;
            webBookDetailView.mBookAuthor = null;
            webBookDetailView.mBookSource = null;
            webBookDetailView.mDescTv = null;
            webBookDetailView.mChapterRecyclerView = null;
            webBookDetailView.mWebLoadingView = null;
            this.f7866if.setOnClickListener(null);
            this.f7866if = null;
            this.f7865for.setOnClickListener(null);
            this.f7865for = null;
            this.f7867new.setOnClickListener(null);
            this.f7867new = null;
            this.f7868try.setOnClickListener(null);
            this.f7868try = null;
            this.f7863case.setOnClickListener(null);
            this.f7863case = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
