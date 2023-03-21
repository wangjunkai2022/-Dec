package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class MainStoreFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public MainStoreFragment f7539do;

    /* renamed from: if  reason: not valid java name */
    public View f7540if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.MainStoreFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ MainStoreFragment f7541do;

        public Cdo(MainStoreFragment_ViewBinding mainStoreFragment_ViewBinding, MainStoreFragment mainStoreFragment) {
            this.f7541do = mainStoreFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7541do.menuClick();
        }
    }

    @UiThread
    public MainStoreFragment_ViewBinding(MainStoreFragment mainStoreFragment, View view) {
        this.f7539do = mainStoreFragment;
        View findRequiredView = Utils.findRequiredView(view, R.id.store_top_search_view, "field 'searchView' and method 'menuClick'");
        mainStoreFragment.searchView = (TextView) Utils.castView(findRequiredView, R.id.store_top_search_view, "field 'searchView'", TextView.class);
        this.f7540if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, mainStoreFragment));
        mainStoreFragment.mIndicator = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.comic_update_indicator, "field 'mIndicator'", ScrollIndicatorView.class);
        mainStoreFragment.mViewPager = (ViewPager) Utils.findRequiredViewAsType(view, R.id.comic_update_viewPager, "field 'mViewPager'", ViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        MainStoreFragment mainStoreFragment = this.f7539do;
        if (mainStoreFragment != null) {
            this.f7539do = null;
            mainStoreFragment.searchView = null;
            mainStoreFragment.mIndicator = null;
            mainStoreFragment.mViewPager = null;
            this.f7540if.setOnClickListener(null);
            this.f7540if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
