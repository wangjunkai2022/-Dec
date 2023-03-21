package com.biquge.ebook.app.ui.webread.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.browse.ProgressBarWebView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebContentView_ViewBinding implements Unbinder {

    /* renamed from: case  reason: not valid java name */
    public View f7929case;

    /* renamed from: do  reason: not valid java name */
    public WebContentView f7930do;

    /* renamed from: for  reason: not valid java name */
    public View f7931for;

    /* renamed from: if  reason: not valid java name */
    public View f7932if;

    /* renamed from: new  reason: not valid java name */
    public View f7933new;

    /* renamed from: try  reason: not valid java name */
    public View f7934try;

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebContentView_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebContentView f7935do;

        public Cdo(WebContentView_ViewBinding webContentView_ViewBinding, WebContentView webContentView) {
            this.f7935do = webContentView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7935do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebContentView_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebContentView f7936do;

        public Cfor(WebContentView_ViewBinding webContentView_ViewBinding, WebContentView webContentView) {
            this.f7936do = webContentView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7936do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebContentView_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebContentView f7937do;

        public Cif(WebContentView_ViewBinding webContentView_ViewBinding, WebContentView webContentView) {
            this.f7937do = webContentView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7937do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebContentView_ViewBinding$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebContentView f7938do;

        public Cnew(WebContentView_ViewBinding webContentView_ViewBinding, WebContentView webContentView) {
            this.f7938do = webContentView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7938do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebContentView_ViewBinding$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebContentView f7939do;

        public Ctry(WebContentView_ViewBinding webContentView_ViewBinding, WebContentView webContentView) {
            this.f7939do = webContentView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7939do.menuClick(view);
        }
    }

    @UiThread
    public WebContentView_ViewBinding(WebContentView webContentView, View view) {
        this.f7930do = webContentView;
        webContentView.mWebView = (ProgressBarWebView) Utils.findRequiredViewAsType(view, R.id.web_content_webview, "field 'mWebView'", ProgressBarWebView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.website_webview_back_view, "field 'mGoBackView' and method 'menuClick'");
        webContentView.mGoBackView = (ImageView) Utils.castView(findRequiredView, R.id.website_webview_back_view, "field 'mGoBackView'", ImageView.class);
        this.f7932if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, webContentView));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.website_webview_forward_view, "field 'mGoForwardView' and method 'menuClick'");
        webContentView.mGoForwardView = (ImageView) Utils.castView(findRequiredView2, R.id.website_webview_forward_view, "field 'mGoForwardView'", ImageView.class);
        this.f7931for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, webContentView));
        webContentView.mTranscodingLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.web_site_transcoding_layout, "field 'mTranscodingLayout'", LinearLayout.class);
        webContentView.mWebBookDetailView = (WebBookDetailView) Utils.findRequiredViewAsType(view, R.id.web_book_detail_view, "field 'mWebBookDetailView'", WebBookDetailView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.website_webview_refresh_view, "method 'menuClick'");
        this.f7933new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, webContentView));
        View findRequiredView4 = Utils.findRequiredView(view, R.id.transcoding_read_btn, "method 'menuClick'");
        this.f7934try = findRequiredView4;
        findRequiredView4.setOnClickListener(new Cnew(this, webContentView));
        View findRequiredView5 = Utils.findRequiredView(view, R.id.website_webview_menu_view, "method 'menuClick'");
        this.f7929case = findRequiredView5;
        findRequiredView5.setOnClickListener(new Ctry(this, webContentView));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebContentView webContentView = this.f7930do;
        if (webContentView != null) {
            this.f7930do = null;
            webContentView.mWebView = null;
            webContentView.mGoBackView = null;
            webContentView.mGoForwardView = null;
            webContentView.mTranscodingLayout = null;
            webContentView.mWebBookDetailView = null;
            this.f7932if.setOnClickListener(null);
            this.f7932if = null;
            this.f7931for.setOnClickListener(null);
            this.f7931for = null;
            this.f7933new.setOnClickListener(null);
            this.f7933new = null;
            this.f7934try.setOnClickListener(null);
            this.f7934try = null;
            this.f7929case.setOnClickListener(null);
            this.f7929case = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
