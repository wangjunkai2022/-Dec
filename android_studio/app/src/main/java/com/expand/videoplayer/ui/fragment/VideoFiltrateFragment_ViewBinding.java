package com.expand.videoplayer.ui.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.manhua.ui.widget.PublicLoadingView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class VideoFiltrateFragment_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public VideoFiltrateFragment f9466do;

    /* renamed from: if  reason: not valid java name */
    public View f9467if;

    /* renamed from: com.expand.videoplayer.ui.fragment.VideoFiltrateFragment_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ VideoFiltrateFragment f9468do;

        public Cdo(VideoFiltrateFragment_ViewBinding videoFiltrateFragment_ViewBinding, VideoFiltrateFragment videoFiltrateFragment) {
            this.f9468do = videoFiltrateFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f9468do.menuClick();
        }
    }

    @UiThread
    public VideoFiltrateFragment_ViewBinding(VideoFiltrateFragment videoFiltrateFragment, View view) {
        this.f9466do = videoFiltrateFragment;
        videoFiltrateFragment.ptrClassicFrameLayout = (PtrClassicFrameLayout) Utils.findRequiredViewAsType(view, R.id.refresh_rv_layout, "field 'ptrClassicFrameLayout'", PtrClassicFrameLayout.class);
        videoFiltrateFragment.mAppBarLayout = (AppBarLayout) Utils.findRequiredViewAsType(view, R.id.category_class_coorinatorlayout, "field 'mAppBarLayout'", AppBarLayout.class);
        videoFiltrateFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.fragment_video_filtrate_recyclerview, "field 'mRecyclerView'", RecyclerView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.fragment_video_filtrate_header_txt, "field 'mHeaderTitleTv' and method 'menuClick'");
        videoFiltrateFragment.mHeaderTitleTv = (TextView) Utils.castView(findRequiredView, R.id.fragment_video_filtrate_header_txt, "field 'mHeaderTitleTv'", TextView.class);
        this.f9467if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, videoFiltrateFragment));
        videoFiltrateFragment.mLoadingLayout = (PublicLoadingView) Utils.findRequiredViewAsType(view, R.id.fragment_video_filtrate_loading, "field 'mLoadingLayout'", PublicLoadingView.class);
        videoFiltrateFragment.mTypeIc = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.header_ranking_type_indicator, "field 'mTypeIc'", ScrollIndicatorView.class);
        videoFiltrateFragment.mRankIc = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.header_ranking_channel_indicator, "field 'mRankIc'", ScrollIndicatorView.class);
        videoFiltrateFragment.mCategoryIc = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.header_ranking_rank_indicator, "field 'mCategoryIc'", ScrollIndicatorView.class);
        videoFiltrateFragment.mAreaIc = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.header_ranking_category_indicator, "field 'mAreaIc'", ScrollIndicatorView.class);
        videoFiltrateFragment.mYearIc = (ScrollIndicatorView) Utils.findRequiredViewAsType(view, R.id.header_ranking_week_indicator, "field 'mYearIc'", ScrollIndicatorView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        VideoFiltrateFragment videoFiltrateFragment = this.f9466do;
        if (videoFiltrateFragment != null) {
            this.f9466do = null;
            videoFiltrateFragment.ptrClassicFrameLayout = null;
            videoFiltrateFragment.mAppBarLayout = null;
            videoFiltrateFragment.mRecyclerView = null;
            videoFiltrateFragment.mHeaderTitleTv = null;
            videoFiltrateFragment.mLoadingLayout = null;
            videoFiltrateFragment.mTypeIc = null;
            videoFiltrateFragment.mRankIc = null;
            videoFiltrateFragment.mCategoryIc = null;
            videoFiltrateFragment.mAreaIc = null;
            videoFiltrateFragment.mYearIc = null;
            this.f9467if.setOnClickListener(null);
            this.f9467if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
