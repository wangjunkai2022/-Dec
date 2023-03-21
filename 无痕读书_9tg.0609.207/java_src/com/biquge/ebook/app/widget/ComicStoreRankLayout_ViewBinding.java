package com.biquge.ebook.app.widget;

import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.manhua.ui.activity.ComicRankActivity;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicStoreRankLayout_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicStoreRankLayout f8033do;

    /* renamed from: if  reason: not valid java name */
    public View f8034if;

    /* renamed from: com.biquge.ebook.app.widget.ComicStoreRankLayout_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicStoreRankLayout f8035do;

        public Cdo(ComicStoreRankLayout_ViewBinding comicStoreRankLayout_ViewBinding, ComicStoreRankLayout comicStoreRankLayout) {
            this.f8035do = comicStoreRankLayout;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            ComicStoreRankLayout comicStoreRankLayout = this.f8035do;
            ComicRankActivity.j(comicStoreRankLayout.getContext(), comicStoreRankLayout.f8024else.replace("榜", ""));
        }
    }

    @UiThread
    public ComicStoreRankLayout_ViewBinding(ComicStoreRankLayout comicStoreRankLayout, View view) {
        this.f8033do = comicStoreRankLayout;
        comicStoreRankLayout.topRankLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.store_top_rank_layout, "field 'topRankLayout'", LinearLayout.class);
        comicStoreRankLayout.listLayout = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.store_list_layout, "field 'listLayout'", LinearLayout.class);
        comicStoreRankLayout.topIndicatorView = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.store_top_indicator, "field 'topIndicatorView'", ScrollIndicatorView.class);
        comicStoreRankLayout.topRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.store_top_rv, "field 'topRecyclerView'", RecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.store_top_see_total_rank, "method 'menuClick'");
        this.f8034if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicStoreRankLayout));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicStoreRankLayout comicStoreRankLayout = this.f8033do;
        if (comicStoreRankLayout != null) {
            this.f8033do = null;
            comicStoreRankLayout.topRankLayout = null;
            comicStoreRankLayout.listLayout = null;
            comicStoreRankLayout.topIndicatorView = null;
            comicStoreRankLayout.topRecyclerView = null;
            this.f8034if.setOnClickListener(null);
            this.f8034if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
