package com.biquge.ebook.app.ui.webread.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebBookDirLayout_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WebBookDirLayout f7886do;

    /* renamed from: for  reason: not valid java name */
    public View f7887for;

    /* renamed from: if  reason: not valid java name */
    public View f7888if;

    /* renamed from: new  reason: not valid java name */
    public View f7889new;

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDirLayout_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebBookDirLayout f7890do;

        public Cdo(WebBookDirLayout_ViewBinding webBookDirLayout_ViewBinding, WebBookDirLayout webBookDirLayout) {
            this.f7890do = webBookDirLayout;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7890do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDirLayout_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebBookDirLayout f7891do;

        public Cfor(WebBookDirLayout_ViewBinding webBookDirLayout_ViewBinding, WebBookDirLayout webBookDirLayout) {
            this.f7891do = webBookDirLayout;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7891do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDirLayout_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WebBookDirLayout f7892do;

        public Cif(WebBookDirLayout_ViewBinding webBookDirLayout_ViewBinding, WebBookDirLayout webBookDirLayout) {
            this.f7892do = webBookDirLayout;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7892do.menuClick(view);
        }
    }

    @UiThread
    public WebBookDirLayout_ViewBinding(WebBookDirLayout webBookDirLayout, View view) {
        this.f7886do = webBookDirLayout;
        webBookDirLayout.mTitleTv = (TextView) Utils.findRequiredViewAsType(view, R.id.web_site_cate_title_tv, "field 'mTitleTv'", TextView.class);
        webBookDirLayout.mDirListView = (SectionPinListView) Utils.findRequiredViewAsType(view, R.id.web_site_cate_rv, "field 'mDirListView'", SectionPinListView.class);
        webBookDirLayout.mDirSortView = (ImageView) Utils.findRequiredViewAsType(view, R.id.novel_dirs_actionbar_collection, "field 'mDirSortView'", ImageView.class);
        webBookDirLayout.mLoadingView = (WebLoadingView) Utils.findRequiredViewAsType(view, R.id.web_book_dir_loadingview, "field 'mLoadingView'", WebLoadingView.class);
        webBookDirLayout.mBatchChapterLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.batch_chapter_layout, "field 'mBatchChapterLayout'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.batch_chapter_pre_btn, "field 'mBatchChapterPreBtn' and method 'menuClick'");
        webBookDirLayout.mBatchChapterPreBtn = (TextView) Utils.castView(findRequiredView, R.id.batch_chapter_pre_btn, "field 'mBatchChapterPreBtn'", TextView.class);
        this.f7888if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, webBookDirLayout));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.batch_chapter_list_btn, "field 'mBatchChapterListBtn' and method 'menuClick'");
        webBookDirLayout.mBatchChapterListBtn = (TextView) Utils.castView(findRequiredView2, R.id.batch_chapter_list_btn, "field 'mBatchChapterListBtn'", TextView.class);
        this.f7887for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, webBookDirLayout));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.batch_chapter_next_btn, "field 'mBatchChapterNextBtn' and method 'menuClick'");
        webBookDirLayout.mBatchChapterNextBtn = (TextView) Utils.castView(findRequiredView3, R.id.batch_chapter_next_btn, "field 'mBatchChapterNextBtn'", TextView.class);
        this.f7889new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, webBookDirLayout));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WebBookDirLayout webBookDirLayout = this.f7886do;
        if (webBookDirLayout != null) {
            this.f7886do = null;
            webBookDirLayout.mTitleTv = null;
            webBookDirLayout.mDirListView = null;
            webBookDirLayout.mDirSortView = null;
            webBookDirLayout.mLoadingView = null;
            webBookDirLayout.mBatchChapterLayout = null;
            webBookDirLayout.mBatchChapterPreBtn = null;
            webBookDirLayout.mBatchChapterListBtn = null;
            webBookDirLayout.mBatchChapterNextBtn = null;
            this.f7888if.setOnClickListener(null);
            this.f7888if = null;
            this.f7887for.setOnClickListener(null);
            this.f7887for = null;
            this.f7889new.setOnClickListener(null);
            this.f7889new = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
