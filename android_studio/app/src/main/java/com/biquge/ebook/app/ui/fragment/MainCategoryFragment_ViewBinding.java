package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.ui.activity.BookSearchActivity;
import com.biquge.ebook.app.widget.TitleIndicatorView;
import com.shizhefei.view.viewpager.SViewPager;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MainCategoryFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public MainCategoryFragment f7533do;

    /* renamed from: if  reason: not valid java name */
    public View f7534if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.MainCategoryFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ MainCategoryFragment f7535do;

        public Cdo(MainCategoryFragment_ViewBinding mainCategoryFragment_ViewBinding, MainCategoryFragment mainCategoryFragment) {
            this.f7535do = mainCategoryFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            MainCategoryFragment mainCategoryFragment = this.f7535do;
            if (mainCategoryFragment != null) {
                if (view.getId() == R.id.fragment_category_search_bt) {
                    BookSearchActivity.i(mainCategoryFragment.getSupportActivity(), mainCategoryFragment.mTitleIndicatorView.getTabModule());
                    return;
                }
                return;
            }
            throw null;
        }
    }

    @UiThread
    public MainCategoryFragment_ViewBinding(MainCategoryFragment mainCategoryFragment, View view) {
        this.f7533do = mainCategoryFragment;
        mainCategoryFragment.mTitleIndicatorView = (TitleIndicatorView) Utils.findRequiredViewAsType(view, R.id.title_indicator_view, "field 'mTitleIndicatorView'", TitleIndicatorView.class);
        mainCategoryFragment.mViewPager = (SViewPager) Utils.findRequiredViewAsType(view, R.id.fragment_category_viewPager, "field 'mViewPager'", SViewPager.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.fragment_category_search_bt, "method 'menuClick'");
        this.f7534if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, mainCategoryFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MainCategoryFragment mainCategoryFragment = this.f7533do;
        if (mainCategoryFragment != null) {
            this.f7533do = null;
            mainCategoryFragment.mTitleIndicatorView = null;
            mainCategoryFragment.mViewPager = null;
            this.f7534if.setOnClickListener(null);
            this.f7534if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
