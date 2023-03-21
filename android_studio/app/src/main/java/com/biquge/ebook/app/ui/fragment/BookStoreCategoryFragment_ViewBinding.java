package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.ui.widget.PageRecyclerView;
import com.manhua.ui.widget.PublicLoadingView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookStoreCategoryFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookStoreCategoryFragment f7407do;

    /* renamed from: if  reason: not valid java name */
    public View f7408if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreCategoryFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookStoreCategoryFragment f7409do;

        public Cdo(BookStoreCategoryFragment_ViewBinding bookStoreCategoryFragment_ViewBinding, BookStoreCategoryFragment bookStoreCategoryFragment) {
            this.f7409do = bookStoreCategoryFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7409do.menuClick();
        }
    }

    @UiThread
    public BookStoreCategoryFragment_ViewBinding(BookStoreCategoryFragment bookStoreCategoryFragment, View view) {
        this.f7407do = bookStoreCategoryFragment;
        bookStoreCategoryFragment.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        bookStoreCategoryFragment.mRecyclerView = (PageRecyclerView) Utils.findRequiredViewAsType(view, R.id.category_recyclerview, "field 'mRecyclerView'", PageRecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.comic_category_header_txt, "field 'mHeaderTxt' and method 'menuClick'");
        bookStoreCategoryFragment.mHeaderTxt = (TextView) Utils.castView(findRequiredView, R.id.comic_category_header_txt, "field 'mHeaderTxt'", TextView.class);
        this.f7408if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookStoreCategoryFragment));
        bookStoreCategoryFragment.mPublicLoadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.public_loadingview, "field 'mPublicLoadingView'", PublicLoadingView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookStoreCategoryFragment bookStoreCategoryFragment = this.f7407do;
        if (bookStoreCategoryFragment != null) {
            this.f7407do = null;
            bookStoreCategoryFragment.mPtrClassicFrameLayout = null;
            bookStoreCategoryFragment.mRecyclerView = null;
            bookStoreCategoryFragment.mHeaderTxt = null;
            bookStoreCategoryFragment.mPublicLoadingView = null;
            this.f7408if.setOnClickListener(null);
            this.f7408if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
