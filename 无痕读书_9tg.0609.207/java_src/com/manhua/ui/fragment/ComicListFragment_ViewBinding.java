package com.manhua.ui.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicListFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicListFragment f9958do;

    /* renamed from: if  reason: not valid java name */
    public View f9959if;

    /* renamed from: com.manhua.ui.fragment.ComicListFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicListFragment f9960do;

        public Cdo(ComicListFragment_ViewBinding comicListFragment_ViewBinding, ComicListFragment comicListFragment) {
            this.f9960do = comicListFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9960do.menuClick();
        }
    }

    @UiThread
    public ComicListFragment_ViewBinding(ComicListFragment comicListFragment, View view) {
        this.f9958do = comicListFragment;
        comicListFragment.mIndicator = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.fragment_city_element_indicator, "field 'mIndicator'", ScrollIndicatorView.class);
        comicListFragment.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.fragment_city_element_viewPager, "field 'mViewPager'", ViewPager.class);
        comicListFragment.mSexIView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.fragment_city_sex_indicator, "field 'mSexIView'", ScrollIndicatorView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.fragment_element_menu_bt, "method 'menuClick'");
        this.f9959if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicListFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicListFragment comicListFragment = this.f9958do;
        if (comicListFragment != null) {
            this.f9958do = null;
            comicListFragment.mIndicator = null;
            comicListFragment.mViewPager = null;
            comicListFragment.mSexIView = null;
            this.f9959if.setOnClickListener(null);
            this.f9959if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
