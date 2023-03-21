package com.biquge.ebook.app.ui.fragment;

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
public class BookDetailDirFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookDetailDirFragment f7213do;

    /* renamed from: if  reason: not valid java name */
    public View f7214if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookDetailDirFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookDetailDirFragment f7215do;

        public Cdo(BookDetailDirFragment_ViewBinding bookDetailDirFragment_ViewBinding, BookDetailDirFragment bookDetailDirFragment) {
            this.f7215do = bookDetailDirFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            BookDetailDirFragment bookDetailDirFragment = this.f7215do;
            if (bookDetailDirFragment != null) {
                if (view.getId() == R.id.novel_dirs_actionbar_collection) {
                    if (bookDetailDirFragment.mDirSortView.getTag().equals("top")) {
                        bookDetailDirFragment.m3364synchronized(0);
                        bookDetailDirFragment.mDirSortView.setImageResource(R.drawable.reader_category);
                        bookDetailDirFragment.mDirSortView.setTag("bottom");
                        return;
                    } else if (bookDetailDirFragment.mDirSortView.getTag().equals("bottom")) {
                        bookDetailDirFragment.m3364synchronized(1);
                        bookDetailDirFragment.mDirSortView.setImageResource(R.drawable.reader_category_asc);
                        bookDetailDirFragment.mDirSortView.setTag("top");
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
    public BookDetailDirFragment_ViewBinding(BookDetailDirFragment bookDetailDirFragment, View view) {
        this.f7213do = bookDetailDirFragment;
        View findRequiredView = Utils.findRequiredView(view, R.id.novel_dirs_actionbar_collection, "field 'mDirSortView' and method 'menuClick'");
        bookDetailDirFragment.mDirSortView = (ImageView) Utils.castView(findRequiredView, R.id.novel_dirs_actionbar_collection, "field 'mDirSortView'", ImageView.class);
        this.f7214if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookDetailDirFragment));
        bookDetailDirFragment.mDirListView = (SectionPinListView) Utils.findRequiredViewAsType(view, R.id.comic_novel_dirs_recyclerview, "field 'mDirListView'", SectionPinListView.class);
        bookDetailDirFragment.mDirCountTv = (TextView) Utils.findRequiredViewAsType(view, R.id.novel_dirs_count_tv, "field 'mDirCountTv'", TextView.class);
        bookDetailDirFragment.mLoadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.public_loading_view, "field 'mLoadingView'", PublicLoadingView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookDetailDirFragment bookDetailDirFragment = this.f7213do;
        if (bookDetailDirFragment != null) {
            this.f7213do = null;
            bookDetailDirFragment.mDirSortView = null;
            bookDetailDirFragment.mDirListView = null;
            bookDetailDirFragment.mDirCountTv = null;
            bookDetailDirFragment.mLoadingView = null;
            this.f7214if.setOnClickListener(null);
            this.f7214if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
