package com.biquge.ebook.app.ui.fragment;

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
public class NewStoreFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public NewStoreFragment f7573do;

    /* renamed from: if  reason: not valid java name */
    public View f7574if;

    /* renamed from: com.biquge.ebook.app.ui.fragment.NewStoreFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ NewStoreFragment f7575do;

        public Cdo(NewStoreFragment_ViewBinding newStoreFragment_ViewBinding, NewStoreFragment newStoreFragment) {
            this.f7575do = newStoreFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f7575do.menuClick();
        }
    }

    @UiThread
    public NewStoreFragment_ViewBinding(NewStoreFragment newStoreFragment, View view) {
        this.f7573do = newStoreFragment;
        newStoreFragment.ptrRefreshLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'ptrRefreshLayout'", PtrClassicFrameLayout.class);
        newStoreFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_store_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
        newStoreFragment.loadingView = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.public_loadingview, "field 'loadingView'", PublicLoadingView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.lv_to_top_iv, "field 'mTopView' and method 'menuClick'");
        newStoreFragment.mTopView = (ImageView) Utils.castView(findRequiredView, R.id.lv_to_top_iv, "field 'mTopView'", ImageView.class);
        this.f7574if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, newStoreFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        NewStoreFragment newStoreFragment = this.f7573do;
        if (newStoreFragment != null) {
            this.f7573do = null;
            newStoreFragment.ptrRefreshLayout = null;
            newStoreFragment.mRecyclerView = null;
            newStoreFragment.loadingView = null;
            newStoreFragment.mTopView = null;
            this.f7574if.setOnClickListener(null);
            this.f7574if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
