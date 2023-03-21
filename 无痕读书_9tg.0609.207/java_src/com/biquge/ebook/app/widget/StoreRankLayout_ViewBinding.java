package com.biquge.ebook.app.widget;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.apk.ze;
import com.biquge.ebook.app.ui.activity.FragmentManagerActivity;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class StoreRankLayout_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public StoreRankLayout f8169do;

    /* renamed from: if  reason: not valid java name */
    public View f8170if;

    /* renamed from: com.biquge.ebook.app.widget.StoreRankLayout_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ StoreRankLayout f8171do;

        public Cdo(StoreRankLayout_ViewBinding storeRankLayout_ViewBinding, StoreRankLayout storeRankLayout) {
            this.f8171do = storeRankLayout;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            StoreRankLayout storeRankLayout = this.f8171do;
            FragmentManagerActivity.j(storeRankLayout.getContext(), ze.q(R.string.main_tab_book_list), "2", storeRankLayout.f8159else, storeRankLayout.f8161goto);
        }
    }

    @UiThread
    public StoreRankLayout_ViewBinding(StoreRankLayout storeRankLayout, View view) {
        this.f8169do = storeRankLayout;
        storeRankLayout.topRankLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.store_top_rank_layout, "field 'topRankLayout'", LinearLayout.class);
        storeRankLayout.listLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.store_list_layout, "field 'listLayout'", LinearLayout.class);
        storeRankLayout.topIndicatorView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.store_top_indicator, "field 'topIndicatorView'", ScrollIndicatorView.class);
        storeRankLayout.topRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.store_top_rv, "field 'topRecyclerView'", RecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.store_top_see_total_rank, "method 'menuClick'");
        this.f8170if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, storeRankLayout));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        StoreRankLayout storeRankLayout = this.f8169do;
        if (storeRankLayout != null) {
            this.f8169do = null;
            storeRankLayout.topRankLayout = null;
            storeRankLayout.listLayout = null;
            storeRankLayout.topIndicatorView = null;
            storeRankLayout.topRecyclerView = null;
            this.f8170if.setOnClickListener(null);
            this.f8170if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
