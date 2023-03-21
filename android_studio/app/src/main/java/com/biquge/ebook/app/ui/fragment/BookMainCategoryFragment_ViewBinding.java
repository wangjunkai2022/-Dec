package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookMainCategoryFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public BookMainCategoryFragment f7284do;

    /* renamed from: if  reason: not valid java name */
    public View f7285if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ BookMainCategoryFragment f7286do;

        public Cdo(BookMainCategoryFragment_ViewBinding bookMainCategoryFragment_ViewBinding, BookMainCategoryFragment bookMainCategoryFragment) {
            this.f7286do = bookMainCategoryFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7286do.menuClick();
        }
    }

    @UiThread
    public BookMainCategoryFragment_ViewBinding(BookMainCategoryFragment bookMainCategoryFragment, View view) {
        this.f7284do = bookMainCategoryFragment;
        bookMainCategoryFragment.categoryRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_category_recyclerview, "field 'categoryRecyclerView'", RecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.time_choose, "field 'time_choose' and method 'menuClick'");
        bookMainCategoryFragment.time_choose = (TextView) Utils.castView(findRequiredView, R.id.time_choose, "field 'time_choose'", TextView.class);
        this.f7285if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, bookMainCategoryFragment));
        bookMainCategoryFragment.mSexIView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.category_sex_indicatorview, "field 'mSexIView'", ScrollIndicatorView.class);
        bookMainCategoryFragment.parentCategoryLayout = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.parent_category_layout, "field 'parentCategoryLayout'", FrameLayout.class);
        bookMainCategoryFragment.parentCategoryRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.parent_category_rv_list, "field 'parentCategoryRecyclerView'", RecyclerView.class);
        bookMainCategoryFragment.ptrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'ptrClassicFrameLayout'", PtrClassicFrameLayout.class);
        bookMainCategoryFragment.dataRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'dataRecyclerView'", RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        BookMainCategoryFragment bookMainCategoryFragment = this.f7284do;
        if (bookMainCategoryFragment != null) {
            this.f7284do = null;
            bookMainCategoryFragment.categoryRecyclerView = null;
            bookMainCategoryFragment.time_choose = null;
            bookMainCategoryFragment.mSexIView = null;
            bookMainCategoryFragment.parentCategoryLayout = null;
            bookMainCategoryFragment.parentCategoryRecyclerView = null;
            bookMainCategoryFragment.ptrClassicFrameLayout = null;
            bookMainCategoryFragment.dataRecyclerView = null;
            this.f7285if.setOnClickListener(null);
            this.f7285if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
