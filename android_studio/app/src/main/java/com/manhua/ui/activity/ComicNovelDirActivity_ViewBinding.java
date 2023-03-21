package com.manhua.ui.activity;

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
public class ComicNovelDirActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicNovelDirActivity f9770do;

    /* renamed from: for  reason: not valid java name */
    public View f9771for;

    /* renamed from: if  reason: not valid java name */
    public View f9772if;

    /* renamed from: com.manhua.ui.activity.ComicNovelDirActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicNovelDirActivity f9773do;

        public Cdo(ComicNovelDirActivity_ViewBinding comicNovelDirActivity_ViewBinding, ComicNovelDirActivity comicNovelDirActivity) {
            this.f9773do = comicNovelDirActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9773do.menuClick(view);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicNovelDirActivity_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicNovelDirActivity f9774do;

        public Cif(ComicNovelDirActivity_ViewBinding comicNovelDirActivity_ViewBinding, ComicNovelDirActivity comicNovelDirActivity) {
            this.f9774do = comicNovelDirActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9774do.menuClick(view);
        }
    }

    @UiThread
    public ComicNovelDirActivity_ViewBinding(ComicNovelDirActivity comicNovelDirActivity, View view) {
        this.f9770do = comicNovelDirActivity;
        comicNovelDirActivity.mLoadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.public_loadingview, "field 'mLoadingView'", PublicLoadingView.class);
        comicNovelDirActivity.mDirTitleTView = (TextView) Utils.findRequiredViewAsType(view, R.id.novel_dirs_title_txt, "field 'mDirTitleTView'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.novel_dirs_actionbar_collection, "field 'mDirSortView' and method 'menuClick'");
        comicNovelDirActivity.mDirSortView = (ImageView) Utils.castView(findRequiredView, R.id.novel_dirs_actionbar_collection, "field 'mDirSortView'", ImageView.class);
        this.f9772if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicNovelDirActivity));
        comicNovelDirActivity.mDirListView = (SectionPinListView) Utils.findRequiredViewAsType(view, R.id.comic_novel_dirs_recyclerview, "field 'mDirListView'", SectionPinListView.class);
        View findRequiredView2 = Utils.findRequiredView(view, R.id.novel_dirs_back_image, "method 'menuClick'");
        this.f9771for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, comicNovelDirActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicNovelDirActivity comicNovelDirActivity = this.f9770do;
        if (comicNovelDirActivity != null) {
            this.f9770do = null;
            comicNovelDirActivity.mLoadingView = null;
            comicNovelDirActivity.mDirTitleTView = null;
            comicNovelDirActivity.mDirSortView = null;
            comicNovelDirActivity.mDirListView = null;
            this.f9772if.setOnClickListener(null);
            this.f9772if = null;
            this.f9771for.setOnClickListener(null);
            this.f9771for = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
