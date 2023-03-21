package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.biquge.ebook.app.widget.TitleIndicatorView;
import com.biquge.ebook.app.widget.TopMsgView;
import com.shizhefei.view.viewpager.SViewPager;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class HomeFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public HomeFragment f7474do;

    /* renamed from: for  reason: not valid java name */
    public View f7475for;

    /* renamed from: if  reason: not valid java name */
    public View f7476if;

    /* renamed from: new  reason: not valid java name */
    public View f7477new;

    /* renamed from: com.biquge.ebook.app.ui.fragment.HomeFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ HomeFragment f7478do;

        public Cdo(HomeFragment_ViewBinding homeFragment_ViewBinding, HomeFragment homeFragment) {
            this.f7478do = homeFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7478do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.HomeFragment_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ HomeFragment f7479do;

        public Cfor(HomeFragment_ViewBinding homeFragment_ViewBinding, HomeFragment homeFragment) {
            this.f7479do = homeFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7479do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.HomeFragment_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ HomeFragment f7480do;

        public Cif(HomeFragment_ViewBinding homeFragment_ViewBinding, HomeFragment homeFragment) {
            this.f7480do = homeFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7480do.menuClick(view);
        }
    }

    @UiThread
    public HomeFragment_ViewBinding(HomeFragment homeFragment, View view) {
        this.f7474do = homeFragment;
        View findRequiredView = Utils.findRequiredView(view, R.id.book_shelf_action_more, "field 'mShelfMoreIView' and method 'menuClick'");
        homeFragment.mShelfMoreIView = (ImageView) Utils.castView(findRequiredView, R.id.book_shelf_action_more, "field 'mShelfMoreIView'", ImageView.class);
        this.f7476if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, homeFragment));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.fragment_home_search_bt, "field 'mShelfSearchIv' and method 'menuClick'");
        homeFragment.mShelfSearchIv = (ImageView) Utils.castView(findRequiredView2, R.id.fragment_home_search_bt, "field 'mShelfSearchIv'", ImageView.class);
        this.f7475for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, homeFragment));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.book_shelf_action_edit_ok, "field 'mEditFinishTView' and method 'menuClick'");
        homeFragment.mEditFinishTView = (TextView) Utils.castView(findRequiredView3, R.id.book_shelf_action_edit_ok, "field 'mEditFinishTView'", TextView.class);
        this.f7477new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, homeFragment));
        homeFragment.mViewPager = (SViewPager) Utils.findRequiredViewAsType(view, R.id.fragment_home_viewPager, "field 'mViewPager'", SViewPager.class);
        homeFragment.mTitleIndicatorView = (TitleIndicatorView) Utils.findRequiredViewAsType(view, R.id.title_indicator_view, "field 'mTitleIndicatorView'", TitleIndicatorView.class);
        homeFragment.mTopMsgView = (TopMsgView) Utils.findRequiredViewAsType(view, R.id.home_public_tips_layout, "field 'mTopMsgView'", TopMsgView.class);
        homeFragment.mTopAdLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.adview_top_layout, "field 'mTopAdLayout'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        HomeFragment homeFragment = this.f7474do;
        if (homeFragment != null) {
            this.f7474do = null;
            homeFragment.mShelfMoreIView = null;
            homeFragment.mShelfSearchIv = null;
            homeFragment.mEditFinishTView = null;
            homeFragment.mViewPager = null;
            homeFragment.mTitleIndicatorView = null;
            homeFragment.mTopMsgView = null;
            homeFragment.mTopAdLayout = null;
            this.f7476if.setOnClickListener(null);
            this.f7476if = null;
            this.f7475for.setOnClickListener(null);
            this.f7475for = null;
            this.f7477new.setOnClickListener(null);
            this.f7477new = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
