package com.manhua.ui.fragment;

import android.view.View;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.ui.widget.PublicLoadingView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicNewStoreFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public ComicNewStoreFragment f10035do;

    /* renamed from: if  reason: not valid java name */
    public View f10036if;

    /* renamed from: com.manhua.ui.fragment.ComicNewStoreFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicNewStoreFragment f10037do;

        public Cdo(ComicNewStoreFragment_ViewBinding comicNewStoreFragment_ViewBinding, ComicNewStoreFragment comicNewStoreFragment) {
            this.f10037do = comicNewStoreFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f10037do.menuClick();
        }
    }

    @UiThread
    public ComicNewStoreFragment_ViewBinding(ComicNewStoreFragment comicNewStoreFragment, View view) {
        this.f10035do = comicNewStoreFragment;
        comicNewStoreFragment.ptrRefreshLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'ptrRefreshLayout'", PtrClassicFrameLayout.class);
        comicNewStoreFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_store_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
        comicNewStoreFragment.loadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.public_loadingview, "field 'loadingView'", PublicLoadingView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.lv_to_top_iv, "field 'mTopView' and method 'menuClick'");
        comicNewStoreFragment.mTopView = (ImageView) Utils.castView(findRequiredView, R.id.lv_to_top_iv, "field 'mTopView'", ImageView.class);
        this.f10036if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, comicNewStoreFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ComicNewStoreFragment comicNewStoreFragment = this.f10035do;
        if (comicNewStoreFragment != null) {
            this.f10035do = null;
            comicNewStoreFragment.ptrRefreshLayout = null;
            comicNewStoreFragment.mRecyclerView = null;
            comicNewStoreFragment.loadingView = null;
            comicNewStoreFragment.mTopView = null;
            this.f10036if.setOnClickListener(null);
            this.f10036if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
