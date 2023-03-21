package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.pinnedheaderlistview.SectionPinListView;
import com.manhua.ui.widget.PublicLoadingView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookNovelDirActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookNovelDirActivity f6512do;

    /* renamed from: for  reason: not valid java name */
    public View f6513for;

    /* renamed from: if  reason: not valid java name */
    public View f6514if;

    /* renamed from: com.biquge.ebook.app.ui.activity.BookNovelDirActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookNovelDirActivity f6515do;

        public Cdo(BookNovelDirActivity_ViewBinding bookNovelDirActivity_ViewBinding, BookNovelDirActivity bookNovelDirActivity) {
            this.f6515do = bookNovelDirActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6515do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookNovelDirActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookNovelDirActivity f6516do;

        public Cif(BookNovelDirActivity_ViewBinding bookNovelDirActivity_ViewBinding, BookNovelDirActivity bookNovelDirActivity) {
            this.f6516do = bookNovelDirActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f6516do.menuClick(view);
        }
    }

    @UiThread
    public BookNovelDirActivity_ViewBinding(BookNovelDirActivity bookNovelDirActivity, View view) {
        this.f6512do = bookNovelDirActivity;
        bookNovelDirActivity.mLoadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.public_loadingview, "field 'mLoadingView'", PublicLoadingView.class);
        bookNovelDirActivity.mDirTitleTView = (TextView) Utils.findRequiredViewAsType(view, R.id.novel_dirs_title_txt, "field 'mDirTitleTView'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.novel_dirs_actionbar_collection, "field 'mDirSortView' and method 'menuClick'");
        bookNovelDirActivity.mDirSortView = (ImageView) Utils.castView(findRequiredView, R.id.novel_dirs_actionbar_collection, "field 'mDirSortView'", ImageView.class);
        this.f6514if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookNovelDirActivity));
        bookNovelDirActivity.mDirListView = (SectionPinListView) Utils.findRequiredViewAsType(view, R.id.comic_novel_dirs_recyclerview, "field 'mDirListView'", SectionPinListView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.novel_dirs_back_image, "method 'menuClick'");
        this.f6513for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, bookNovelDirActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookNovelDirActivity bookNovelDirActivity = this.f6512do;
        if (bookNovelDirActivity != null) {
            this.f6512do = null;
            bookNovelDirActivity.mLoadingView = null;
            bookNovelDirActivity.mDirTitleTView = null;
            bookNovelDirActivity.mDirSortView = null;
            bookNovelDirActivity.mDirListView = null;
            this.f6514if.setOnClickListener(null);
            this.f6514if = null;
            this.f6513for.setOnClickListener(null);
            this.f6513for = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
