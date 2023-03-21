package com.biquge.ebook.app.widget;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.b40;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class TitleIndicatorView_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public TitleIndicatorView f8260do;

    /* renamed from: for  reason: not valid java name */
    public View f8261for;

    /* renamed from: if  reason: not valid java name */
    public View f8262if;

    /* renamed from: new  reason: not valid java name */
    public View f8263new;

    /* renamed from: com.biquge.ebook.app.widget.TitleIndicatorView_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ TitleIndicatorView f8264do;

        public Cdo(TitleIndicatorView_ViewBinding titleIndicatorView_ViewBinding, TitleIndicatorView titleIndicatorView) {
            this.f8264do = titleIndicatorView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f8264do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.TitleIndicatorView_ViewBinding$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ TitleIndicatorView f8265do;

        public Cfor(TitleIndicatorView_ViewBinding titleIndicatorView_ViewBinding, TitleIndicatorView titleIndicatorView) {
            this.f8265do = titleIndicatorView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f8265do.menuClick(view);
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.TitleIndicatorView_ViewBinding$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ TitleIndicatorView f8266do;

        public Cif(TitleIndicatorView_ViewBinding titleIndicatorView_ViewBinding, TitleIndicatorView titleIndicatorView) {
            this.f8266do = titleIndicatorView;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f8266do.menuClick(view);
        }
    }

    @UiThread
    public TitleIndicatorView_ViewBinding(TitleIndicatorView titleIndicatorView, View view) {
        this.f8260do = titleIndicatorView;
        titleIndicatorView.mTitleTView = (TextView) Utils.findRequiredViewAsType(view, R.id.fragment_home_title, "field 'mTitleTView'", TextView.class);
        titleIndicatorView.mIndicator = (b40) Utils.findRequiredViewAsType(view, R.id.fragment_home_indicator, "field 'mIndicator'", b40.class);
        titleIndicatorView.switchLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.fragment_store_switch_layout, "field 'switchLayout'", LinearLayout.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.fragment_store_switch_left, "field 'mSwitchLeftLayout' and method 'menuClick'");
        titleIndicatorView.mSwitchLeftLayout = (TextView) Utils.castView(findRequiredView, R.id.fragment_store_switch_left, "field 'mSwitchLeftLayout'", TextView.class);
        this.f8262if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, titleIndicatorView));
        View findRequiredView2 = Utils.findRequiredView(view, R.id.fragment_store_switch_middle, "field 'mSwitchMiddleLayout' and method 'menuClick'");
        titleIndicatorView.mSwitchMiddleLayout = (TextView) Utils.castView(findRequiredView2, R.id.fragment_store_switch_middle, "field 'mSwitchMiddleLayout'", TextView.class);
        this.f8261for = findRequiredView2;
        findRequiredView2.setOnClickListener(new Cif(this, titleIndicatorView));
        View findRequiredView3 = Utils.findRequiredView(view, R.id.fragment_store_switch_right, "field 'mSwitchRightLayout' and method 'menuClick'");
        titleIndicatorView.mSwitchRightLayout = (TextView) Utils.castView(findRequiredView3, R.id.fragment_store_switch_right, "field 'mSwitchRightLayout'", TextView.class);
        this.f8263new = findRequiredView3;
        findRequiredView3.setOnClickListener(new Cfor(this, titleIndicatorView));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        TitleIndicatorView titleIndicatorView = this.f8260do;
        if (titleIndicatorView != null) {
            this.f8260do = null;
            titleIndicatorView.mTitleTView = null;
            titleIndicatorView.mIndicator = null;
            titleIndicatorView.switchLayout = null;
            titleIndicatorView.mSwitchLeftLayout = null;
            titleIndicatorView.mSwitchMiddleLayout = null;
            titleIndicatorView.mSwitchRightLayout = null;
            this.f8262if.setOnClickListener(null);
            this.f8262if = null;
            this.f8261for.setOnClickListener(null);
            this.f8261for = null;
            this.f8263new.setOnClickListener(null);
            this.f8263new = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
