package com.manhua.ui.activity;

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
public class ComicCategoryActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicCategoryActivity f9677do;

    /* renamed from: if  reason: not valid java name */
    public View f9678if;

    /* renamed from: com.manhua.ui.activity.ComicCategoryActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicCategoryActivity f9679do;

        public Cdo(ComicCategoryActivity_ViewBinding comicCategoryActivity_ViewBinding, ComicCategoryActivity comicCategoryActivity) {
            this.f9679do = comicCategoryActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9679do.menuClick();
        }
    }

    @UiThread
    public ComicCategoryActivity_ViewBinding(ComicCategoryActivity comicCategoryActivity, View view) {
        this.f9677do = comicCategoryActivity;
        comicCategoryActivity.mPtrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'mPtrClassicFrameLayout'", PtrClassicFrameLayout.class);
        comicCategoryActivity.mRecyclerView = (PageRecyclerView) Utils.findRequiredViewAsType(view, R.id.comic_category_recyclerview, "field 'mRecyclerView'", PageRecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.comic_category_header_txt, "field 'mHeaderTxt' and method 'menuClick'");
        comicCategoryActivity.mHeaderTxt = (TextView) Utils.castView(findRequiredView, R.id.comic_category_header_txt, "field 'mHeaderTxt'", TextView.class);
        this.f9678if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicCategoryActivity));
        comicCategoryActivity.mPublicLoadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.public_loadingview, "field 'mPublicLoadingView'", PublicLoadingView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicCategoryActivity comicCategoryActivity = this.f9677do;
        if (comicCategoryActivity != null) {
            this.f9677do = null;
            comicCategoryActivity.mPtrClassicFrameLayout = null;
            comicCategoryActivity.mRecyclerView = null;
            comicCategoryActivity.mHeaderTxt = null;
            comicCategoryActivity.mPublicLoadingView = null;
            this.f9678if.setOnClickListener(null);
            this.f9678if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
