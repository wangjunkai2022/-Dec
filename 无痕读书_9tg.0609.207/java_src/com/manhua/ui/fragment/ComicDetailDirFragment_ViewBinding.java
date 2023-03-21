package com.manhua.ui.fragment;

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
public class ComicDetailDirFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicDetailDirFragment f9916do;

    /* renamed from: if  reason: not valid java name */
    public View f9917if;

    /* renamed from: com.manhua.ui.fragment.ComicDetailDirFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicDetailDirFragment f9918do;

        public Cdo(ComicDetailDirFragment_ViewBinding comicDetailDirFragment_ViewBinding, ComicDetailDirFragment comicDetailDirFragment) {
            this.f9918do = comicDetailDirFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            ComicDetailDirFragment comicDetailDirFragment = this.f9918do;
            if (comicDetailDirFragment != null) {
                if (view.getId() == R.id.novel_dirs_actionbar_collection) {
                    if (comicDetailDirFragment.mDirSortView.getTag().equals("top")) {
                        comicDetailDirFragment.m3623synchronized(0);
                        comicDetailDirFragment.mDirSortView.setImageResource(R.drawable.reader_category);
                        comicDetailDirFragment.mDirSortView.setTag("bottom");
                        return;
                    } else if (comicDetailDirFragment.mDirSortView.getTag().equals("bottom")) {
                        comicDetailDirFragment.m3623synchronized(1);
                        comicDetailDirFragment.mDirSortView.setImageResource(R.drawable.reader_category_asc);
                        comicDetailDirFragment.mDirSortView.setTag("top");
                        return;
                    } else {
                        return;
                    }
                }
                return;
            }
            throw null;
        }
    }

    @UiThread
    public ComicDetailDirFragment_ViewBinding(ComicDetailDirFragment comicDetailDirFragment, View view) {
        this.f9916do = comicDetailDirFragment;
        View findRequiredView = Utils.findRequiredView(view, R.id.novel_dirs_actionbar_collection, "field 'mDirSortView' and method 'menuClick'");
        comicDetailDirFragment.mDirSortView = (ImageView) Utils.castView(findRequiredView, R.id.novel_dirs_actionbar_collection, "field 'mDirSortView'", ImageView.class);
        this.f9917if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicDetailDirFragment));
        comicDetailDirFragment.mDirListView = (SectionPinListView) Utils.findRequiredViewAsType(view, R.id.comic_novel_dirs_recyclerview, "field 'mDirListView'", SectionPinListView.class);
        comicDetailDirFragment.mDirCountTv = (TextView) Utils.findRequiredViewAsType(view, R.id.novel_dirs_count_tv, "field 'mDirCountTv'", TextView.class);
        comicDetailDirFragment.mLoadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.public_loading_view, "field 'mLoadingView'", PublicLoadingView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicDetailDirFragment comicDetailDirFragment = this.f9916do;
        if (comicDetailDirFragment != null) {
            this.f9916do = null;
            comicDetailDirFragment.mDirSortView = null;
            comicDetailDirFragment.mDirListView = null;
            comicDetailDirFragment.mDirCountTv = null;
            comicDetailDirFragment.mLoadingView = null;
            this.f9917if.setOnClickListener(null);
            this.f9917if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
