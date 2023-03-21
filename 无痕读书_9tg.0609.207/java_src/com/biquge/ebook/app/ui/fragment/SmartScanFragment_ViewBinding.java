package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.b1;
import com.apk.ec;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class SmartScanFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public SmartScanFragment f7597do;

    /* renamed from: if  reason: not valid java name */
    public View f7598if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.SmartScanFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ SmartScanFragment f7599do;

        public Cdo(SmartScanFragment_ViewBinding smartScanFragment_ViewBinding, SmartScanFragment smartScanFragment) {
            this.f7599do = smartScanFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            SmartScanFragment smartScanFragment = this.f7599do;
            smartScanFragment.mSearchLayout.setVisibility(8);
            b1 b1Var = new b1();
            b1Var.m143if(smartScanFragment.getSupportActivity());
            b1Var.m141do(new ec(smartScanFragment));
        }
    }

    @UiThread
    public SmartScanFragment_ViewBinding(SmartScanFragment smartScanFragment, View view) {
        this.f7597do = smartScanFragment;
        View findRequiredView = Utils.findRequiredView(view, R.id.scan_book_layout, "field 'mSearchLayout' and method 'menuClick'");
        smartScanFragment.mSearchLayout = (LinearLayout) Utils.castView(findRequiredView, R.id.scan_book_layout, "field 'mSearchLayout'", LinearLayout.class);
        this.f7598if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, smartScanFragment));
        smartScanFragment.mEmptyView = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.empty_view, "field 'mEmptyView'", LinearLayout.class);
        smartScanFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'mRecyclerView'", RecyclerView.class);
        smartScanFragment.mSmartScanTv = (TextView) Utils.findRequiredViewAsType(view, R.id.scan_book_tips_txt, "field 'mSmartScanTv'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SmartScanFragment smartScanFragment = this.f7597do;
        if (smartScanFragment != null) {
            this.f7597do = null;
            smartScanFragment.mSearchLayout = null;
            smartScanFragment.mEmptyView = null;
            smartScanFragment.mRecyclerView = null;
            smartScanFragment.mSmartScanTv = null;
            this.f7598if.setOnClickListener(null);
            this.f7598if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
