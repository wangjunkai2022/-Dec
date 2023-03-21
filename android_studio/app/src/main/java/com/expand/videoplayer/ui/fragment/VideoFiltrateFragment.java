package com.expand.videoplayer.ui.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.b1;
import com.apk.b40;
import com.apk.ef;
import com.apk.eg;
import com.apk.g6;
import com.apk.h40;
import com.apk.i40;
import com.apk.i6;
import com.apk.lg;
import com.apk.nz;
import com.apk.q3;
import com.apk.r3;
import com.apk.ss;
import com.apk.t3;
import com.apk.t5;
import com.apk.ts;
import com.apk.x4;
import com.apk.xw;
import com.apk.ze;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.expand.videoplayer.adapter.VideoGridAdapter;
import com.expand.videoplayer.bean.CategoryArea;
import com.expand.videoplayer.bean.CategoryYear;
import com.expand.videoplayer.bean.RankCategory;
import com.expand.videoplayer.bean.VideoDetail;
import com.google.android.material.appbar.AppBarLayout;
import com.manhua.ui.widget.PublicLoadingView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class VideoFiltrateFragment extends g6 {

    /* renamed from: native  reason: not valid java name */
    public static final String[] f9437native = {ze.q(R.string.ranking_rank_hot), ze.q(R.string.ranking_rank_good), ze.q(R.string.ranking_rank_new), ze.q(R.string.ranking_rank_collect), ze.q(R.string.ranking_rank_commend)};

    /* renamed from: public  reason: not valid java name */
    public static final String[] f9438public = {"hits", "score", "addtime", "collect", "commend"};

    /* renamed from: break  reason: not valid java name */
    public String[] f9439break;

    /* renamed from: case  reason: not valid java name */
    public String[] f9440case;

    /* renamed from: catch  reason: not valid java name */
    public String[] f9441catch;

    /* renamed from: class  reason: not valid java name */
    public q3 f9442class;

    /* renamed from: const  reason: not valid java name */
    public VideoGridAdapter f9443const;

    /* renamed from: do  reason: not valid java name */
    public int f9444do;

    /* renamed from: else  reason: not valid java name */
    public String[] f9445else;

    /* renamed from: for  reason: not valid java name */
    public List<CategoryArea> f9447for;

    /* renamed from: goto  reason: not valid java name */
    public String[] f9448goto;

    /* renamed from: if  reason: not valid java name */
    public List<RankCategory> f9449if;

    /* renamed from: import  reason: not valid java name */
    public int f9450import;
    @BindView(R.id.category_class_coorinatorlayout)
    public AppBarLayout mAppBarLayout;
    @BindView(R.id.header_ranking_category_indicator)
    public ScrollIndicatorView mAreaIc;
    @BindView(R.id.header_ranking_rank_indicator)
    public ScrollIndicatorView mCategoryIc;
    @BindView(R.id.fragment_video_filtrate_header_txt)
    public TextView mHeaderTitleTv;
    @BindView(R.id.fragment_video_filtrate_loading)
    public PublicLoadingView mLoadingLayout;
    @BindView(R.id.header_ranking_channel_indicator)
    public ScrollIndicatorView mRankIc;
    @BindView(R.id.fragment_video_filtrate_recyclerview)
    public RecyclerView mRecyclerView;
    @BindView(R.id.header_ranking_type_indicator)
    public ScrollIndicatorView mTypeIc;
    @BindView(R.id.header_ranking_week_indicator)
    public ScrollIndicatorView mYearIc;

    /* renamed from: new  reason: not valid java name */
    public List<CategoryYear> f9451new;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout ptrClassicFrameLayout;

    /* renamed from: super  reason: not valid java name */
    public boolean f9452super;

    /* renamed from: this  reason: not valid java name */
    public String[] f9453this;

    /* renamed from: throw  reason: not valid java name */
    public String f9454throw;

    /* renamed from: try  reason: not valid java name */
    public String[] f9455try;

    /* renamed from: final  reason: not valid java name */
    public int f9446final = 1;

    /* renamed from: while  reason: not valid java name */
    public final t5 f9456while = new Ccase();

    /* renamed from: com.expand.videoplayer.ui.fragment.VideoFiltrateFragment$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends t5 {
        public Ccase() {
        }

        @Override // com.apk.t5
        /* renamed from: for */
        public void mo2573for(List<RankCategory> list) {
            if (list != null) {
                VideoFiltrateFragment.this.f9449if = list;
                for (RankCategory rankCategory : list) {
                    List<RankCategory.ListsBean> lists = rankCategory.getLists();
                    if (lists != null && lists.size() > 0) {
                        String q = ze.q(R.string.ranking_category_all);
                        if (!lists.get(0).getName().equals(q)) {
                            RankCategory.ListsBean listsBean = new RankCategory.ListsBean();
                            listsBean.setId(rankCategory.getIndex());
                            listsBean.setName(q);
                            lists.add(0, listsBean);
                        }
                    }
                }
                q3 q3Var = VideoFiltrateFragment.this.f9442class;
                if (q3Var != null) {
                    if (q3Var != null) {
                        x4.m2957import(eg.m596finally() + "/whole_cs.html", 43200000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new r3(q3Var));
                        return;
                    }
                    throw null;
                }
            }
        }

        @Override // com.apk.t5
        /* renamed from: if */
        public void mo2574if(List<CategoryArea> list, List<CategoryYear> list2) {
            if (list != null && list2 != null) {
                VideoFiltrateFragment videoFiltrateFragment = VideoFiltrateFragment.this;
                videoFiltrateFragment.f9447for = list;
                videoFiltrateFragment.f9451new = list2;
                List<RankCategory> list3 = videoFiltrateFragment.f9449if;
                if (list3 != null) {
                    int size = list3.size();
                    videoFiltrateFragment.f9455try = new String[size];
                    videoFiltrateFragment.f9453this = new String[size];
                    for (int i = 0; i < size; i++) {
                        RankCategory rankCategory = videoFiltrateFragment.f9449if.get(i);
                        if (TextUtils.isEmpty(rankCategory.getNavName())) {
                            videoFiltrateFragment.f9455try[i] = rankCategory.getName();
                        } else {
                            videoFiltrateFragment.f9455try[i] = rankCategory.getNavName();
                        }
                        videoFiltrateFragment.f9453this[i] = rankCategory.getIndex();
                    }
                    videoFiltrateFragment.j(videoFiltrateFragment.mTypeIc, videoFiltrateFragment.f9455try, new Cgoto(0));
                    String[] a2 = videoFiltrateFragment.a(videoFiltrateFragment.f9444do);
                    videoFiltrateFragment.f9440case = a2;
                    if (a2 != null && a2.length > 1) {
                        videoFiltrateFragment.j(videoFiltrateFragment.mCategoryIc, a2, new Cgoto(2));
                    } else {
                        videoFiltrateFragment.mCategoryIc.setVisibility(8);
                    }
                    int size2 = videoFiltrateFragment.f9447for.size();
                    videoFiltrateFragment.f9445else = new String[size2];
                    videoFiltrateFragment.f9439break = new String[size2];
                    for (int i2 = 0; i2 < size2; i2++) {
                        CategoryArea categoryArea = videoFiltrateFragment.f9447for.get(i2);
                        videoFiltrateFragment.f9445else[i2] = categoryArea.getName();
                        videoFiltrateFragment.f9439break[i2] = categoryArea.getId();
                    }
                    videoFiltrateFragment.j(videoFiltrateFragment.mAreaIc, videoFiltrateFragment.f9445else, new Cgoto(3));
                    videoFiltrateFragment.j(videoFiltrateFragment.mRankIc, VideoFiltrateFragment.f9437native, new Cgoto(1));
                    int size3 = videoFiltrateFragment.f9451new.size();
                    videoFiltrateFragment.f9448goto = new String[size3];
                    videoFiltrateFragment.f9441catch = new String[size3];
                    for (int i3 = 0; i3 < size3; i3++) {
                        CategoryYear categoryYear = videoFiltrateFragment.f9451new.get(i3);
                        videoFiltrateFragment.f9448goto[i3] = categoryYear.getName();
                        videoFiltrateFragment.f9441catch[i3] = categoryYear.getId();
                    }
                    videoFiltrateFragment.j(videoFiltrateFragment.mYearIc, videoFiltrateFragment.f9448goto, new Cgoto(4));
                    videoFiltrateFragment.i(true);
                }
                PublicLoadingView publicLoadingView = VideoFiltrateFragment.this.mLoadingLayout;
                if (publicLoadingView != null) {
                    publicLoadingView.m3666for();
                    return;
                }
                return;
            }
            PublicLoadingView publicLoadingView2 = VideoFiltrateFragment.this.mLoadingLayout;
            if (publicLoadingView2 != null) {
                publicLoadingView2.setError(null);
            }
        }

        @Override // com.apk.t5
        /* renamed from: new */
        public void mo2575new(List<VideoDetail> list, boolean z, int i) {
            VideoFiltrateFragment.this.i(false);
            if (i == 1) {
                VideoFiltrateFragment.this.h(true, list, z);
            } else {
                VideoFiltrateFragment.this.h(false, list, z);
            }
        }
    }

    /* renamed from: com.expand.videoplayer.ui.fragment.VideoFiltrateFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends lg {
        public Cdo() {
        }

        @Override // com.apk.lg
        /* renamed from: do */
        public void mo1628do(AppBarLayout appBarLayout, lg.Cdo cdo) {
            VideoFiltrateFragment.this.f9452super = false;
            int ordinal = cdo.ordinal();
            if (ordinal == 0) {
                VideoFiltrateFragment videoFiltrateFragment = VideoFiltrateFragment.this;
                videoFiltrateFragment.f9452super = true;
                if (videoFiltrateFragment.mHeaderTitleTv.getVisibility() != 8) {
                    VideoFiltrateFragment.this.mHeaderTitleTv.setVisibility(8);
                }
            } else if (ordinal != 1) {
                if (ordinal == 2 && VideoFiltrateFragment.this.mHeaderTitleTv.getVisibility() != 8) {
                    VideoFiltrateFragment.this.mHeaderTitleTv.setVisibility(8);
                }
            } else if (VideoFiltrateFragment.this.mHeaderTitleTv.getVisibility() != 0) {
                VideoFiltrateFragment videoFiltrateFragment2 = VideoFiltrateFragment.this;
                TextView textView = videoFiltrateFragment2.mHeaderTitleTv;
                StringBuilder sb = new StringBuilder();
                if (videoFiltrateFragment2.mTypeIc.getVisibility() == 0) {
                    sb.append(videoFiltrateFragment2.f9455try[videoFiltrateFragment2.mTypeIc.getCurrentItem()]);
                }
                if (videoFiltrateFragment2.mCategoryIc.getVisibility() == 0) {
                    sb.append("  ->  ");
                    sb.append(videoFiltrateFragment2.f9440case[videoFiltrateFragment2.mCategoryIc.getCurrentItem()]);
                }
                if (videoFiltrateFragment2.mAreaIc.getVisibility() == 0) {
                    sb.append("  ->  ");
                    sb.append(videoFiltrateFragment2.f9445else[videoFiltrateFragment2.mAreaIc.getCurrentItem()]);
                }
                if (videoFiltrateFragment2.mRankIc.getVisibility() == 0) {
                    sb.append("  ->  ");
                    sb.append(VideoFiltrateFragment.f9437native[videoFiltrateFragment2.mRankIc.getCurrentItem()]);
                }
                if (videoFiltrateFragment2.mYearIc.getVisibility() == 0) {
                    sb.append("  ->  ");
                    sb.append(videoFiltrateFragment2.f9448goto[videoFiltrateFragment2.mYearIc.getCurrentItem()]);
                }
                textView.setText(sb.toString());
                VideoFiltrateFragment.this.mHeaderTitleTv.setVisibility(0);
            }
        }
    }

    /* renamed from: com.expand.videoplayer.ui.fragment.VideoFiltrateFragment$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements Runnable {
        public Celse() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrClassicFrameLayout ptrClassicFrameLayout = VideoFiltrateFragment.this.ptrClassicFrameLayout;
            ptrClassicFrameLayout.f4550do = (byte) 1;
            ptrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.expand.videoplayer.ui.fragment.VideoFiltrateFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements PublicLoadingView.Cdo {
        public Cfor() {
        }

        @Override // com.manhua.ui.widget.PublicLoadingView.Cdo
        /* renamed from: do */
        public void mo1847do() {
            q3 q3Var = VideoFiltrateFragment.this.f9442class;
            if (q3Var != null) {
                q3Var.m2104new();
            }
        }
    }

    /* renamed from: com.expand.videoplayer.ui.fragment.VideoFiltrateFragment$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto implements b40.Cnew {

        /* renamed from: do  reason: not valid java name */
        public final int f9461do;

        public Cgoto(int i) {
            this.f9461do = i;
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            if (this.f9461do == 0) {
                VideoFiltrateFragment videoFiltrateFragment = VideoFiltrateFragment.this;
                if (videoFiltrateFragment.f9449if == null || videoFiltrateFragment.f9447for == null || videoFiltrateFragment.f9451new == null) {
                    return;
                }
                videoFiltrateFragment.f9444do = i;
                videoFiltrateFragment.f9440case = videoFiltrateFragment.a(i);
                VideoFiltrateFragment videoFiltrateFragment2 = VideoFiltrateFragment.this;
                String[] strArr = videoFiltrateFragment2.f9440case;
                if (strArr != null && strArr.length > 1) {
                    videoFiltrateFragment2.j(videoFiltrateFragment2.mCategoryIc, strArr, new Cgoto(2));
                    VideoFiltrateFragment.this.mCategoryIc.setVisibility(0);
                } else {
                    VideoFiltrateFragment.this.mCategoryIc.setVisibility(8);
                }
            }
            VideoFiltrateFragment.this.i(true);
        }
    }

    /* renamed from: com.expand.videoplayer.ui.fragment.VideoFiltrateFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ts {
        public Cif() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            VideoFiltrateFragment videoFiltrateFragment = VideoFiltrateFragment.this;
            videoFiltrateFragment.f9446final = 1;
            q3 q3Var = videoFiltrateFragment.f9442class;
            if (q3Var != null) {
                new b1().m141do(new t3(q3Var, videoFiltrateFragment.f(), videoFiltrateFragment.f9446final));
            }
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(VideoFiltrateFragment.this.mRecyclerView) && VideoFiltrateFragment.this.f9452super;
        }
    }

    /* renamed from: com.expand.videoplayer.ui.fragment.VideoFiltrateFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cnew() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            VideoFiltrateFragment videoFiltrateFragment = VideoFiltrateFragment.this;
            q3 q3Var = videoFiltrateFragment.f9442class;
            if (q3Var != null) {
                new b1().m141do(new t3(q3Var, videoFiltrateFragment.f(), videoFiltrateFragment.f9446final));
            }
        }
    }

    /* renamed from: com.expand.videoplayer.ui.fragment.VideoFiltrateFragment$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements BaseQuickAdapter.OnItemClickListener {
        public Ctry() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            VideoDetail item = VideoFiltrateFragment.this.f9443const.getItem(i);
            if (item != null) {
                eg.e(VideoFiltrateFragment.this.getSupportActivity(), VideoFiltrateFragment.this.f9454throw, eg.m595final(), item);
            }
        }
    }

    public final String[] a(int i) {
        RankCategory rankCategory;
        List<RankCategory> list = this.f9449if;
        if (list == null || list.size() <= 0 || (rankCategory = this.f9449if.get(i)) == null) {
            return null;
        }
        List<RankCategory.ListsBean> lists = rankCategory.getLists();
        int size = lists.size();
        String[] strArr = new String[size];
        for (int i2 = 0; i2 < size; i2++) {
            strArr[i2] = lists.get(i2).getName();
        }
        return strArr;
    }

    public final String f() {
        List<RankCategory.ListsBean> lists;
        try {
            String str = this.mCategoryIc.getVisibility() == 8 ? this.f9453this[this.f9444do] : null;
            int currentItem = this.mRankIc.getCurrentItem();
            int currentItem2 = this.mCategoryIc.getCurrentItem();
            int currentItem3 = this.mAreaIc.getCurrentItem();
            if (this.mAreaIc.getVisibility() == 8) {
                currentItem3 = 0;
            }
            if (currentItem3 < 0) {
                currentItem3 = 0;
            }
            int currentItem4 = this.mYearIc.getCurrentItem();
            int i = currentItem4 >= 0 ? currentItem4 : 0;
            try {
                RankCategory rankCategory = this.f9449if.get(this.f9444do);
                if (rankCategory != null && (lists = rankCategory.getLists()) != null && lists.size() > 0) {
                    str = lists.get(currentItem2).getId();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return eg.m622while(this.f9453this[this.f9444do], f9438public[currentItem], str, this.f9439break[currentItem3], this.f9441catch[i], this.f9446final);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_video_filtrate;
    }

    public final void h(boolean z, List list, boolean z2) {
        try {
            if (this.f9443const != null) {
                int size = list == null ? 0 : list.size();
                if (z) {
                    this.f9443const.setNewData(list);
                    if (z2) {
                        this.f9443const.setEnableLoadMore(true);
                        this.f9446final++;
                        return;
                    }
                    this.f9443const.setEnableLoadMore(false);
                    return;
                }
                if (size > 0) {
                    this.f9443const.addData((Collection) list);
                    this.f9443const.notifyDataSetChanged();
                }
                if (z2) {
                    this.f9443const.loadMoreComplete();
                    this.f9446final++;
                    return;
                }
                this.f9443const.loadMoreEnd();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void i(boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = this.ptrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Celse());
                return;
            }
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = this.ptrClassicFrameLayout;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.m2532break();
        }
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        VideoGridAdapter videoGridAdapter = new VideoGridAdapter();
        this.f9443const = videoGridAdapter;
        this.mRecyclerView.setAdapter(videoGridAdapter);
        this.f9443const.setOnLoadMoreListener(new Cnew(), this.mRecyclerView);
        this.f9443const.setOnItemClickListener(new Ctry());
        this.mLoadingLayout.m3665do();
        q3 q3Var = new q3(getSupportActivity(), this.f9456while);
        this.f9442class = q3Var;
        q3Var.m2104new();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f9454throw = arguments.getString("SOURCE_TYPE_KEY");
        }
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        this.mTypeIc.setSplitAuto(false);
        this.mCategoryIc.setSplitAuto(false);
        this.mAreaIc.setSplitAuto(false);
        this.mRankIc.setSplitAuto(false);
        this.mYearIc.setSplitAuto(false);
        this.mAppBarLayout.addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new Cdo());
        this.ptrClassicFrameLayout.setPtrHandler(new Cif());
        this.mRecyclerView.setLayoutManager(new GridLayoutManager(getSupportActivity(), 3));
        this.mLoadingLayout.setReloadListener(new Cfor());
    }

    public final void j(ScrollIndicatorView scrollIndicatorView, String[] strArr, b40.Cnew cnew) {
        if (strArr != null && strArr.length > 0) {
            i6 supportActivity = getSupportActivity();
            if (this.f9450import == 0) {
                int m614switch = eg.m614switch() - eg.m587catch(20.0f);
                this.f9450import = m614switch / (m614switch / eg.m587catch(50.0f));
            }
            scrollIndicatorView.setAdapter(new nz(supportActivity, strArr, this.f9450import));
            scrollIndicatorView.setScrollBar(new ef(getSupportActivity(), R.drawable.shape_indicator_tab_txt_bg_bt, h40.Cdo.CENTENT_BACKGROUND));
            i40 i40Var = new i40();
            i40Var.m1181for(R.color.main_tab_txt_color, R.color.color_333333);
            i40Var.m1183new(14.5f, 14.0f);
            scrollIndicatorView.setOnTransitionListener(i40Var);
            scrollIndicatorView.setOnItemSelectListener(cnew);
            return;
        }
        scrollIndicatorView.setVisibility(8);
    }

    @OnClick({R.id.fragment_video_filtrate_header_txt})
    public void menuClick() {
        try {
            this.mRecyclerView.scrollToPosition(0);
            this.mAppBarLayout.setExpanded(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
