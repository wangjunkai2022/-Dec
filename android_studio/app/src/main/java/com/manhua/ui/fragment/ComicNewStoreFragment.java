package com.manhua.ui.fragment;

import android.animation.ObjectAnimator;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Ccontinue;
import com.apk.Cfinally;
import com.apk.b1;
import com.apk.bg;
import com.apk.bh;
import com.apk.cc0;
import com.apk.e3;
import com.apk.eg;
import com.apk.g6;
import com.apk.gg;
import com.apk.mg;
import com.apk.mu;
import com.apk.n2;
import com.apk.p0;
import com.apk.r5;
import com.apk.s10;
import com.apk.t10;
import com.apk.u10;
import com.apk.v;
import com.apk.v10;
import com.apk.x4;
import com.apk.xw;
import com.apk.z2;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.ComicStoreBean;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.activity.BookStoreModuleMoreActivity;
import com.biquge.ebook.app.ui.activity.WebViewActivity;
import com.biquge.ebook.app.widget.ScrollHeaderLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.adapter.ComicNewStoreAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicCategoryActivity;
import com.manhua.ui.activity.ComicDetailActivity;
import com.manhua.ui.activity.ComicListActivity;
import com.manhua.ui.activity.ComicListDetailActivity;
import com.manhua.ui.activity.ComicNewReleaseActivity;
import com.manhua.ui.activity.ComicRankActivity;
import com.manhua.ui.activity.ComicStoreModuleMoreActivity;
import com.manhua.ui.activity.ComicUpdateActivity;
import com.manhua.ui.widget.PublicLoadingView;
import com.umeng.analytics.pro.ak;
import com.youth.banner.Banner;
import com.youth.banner.view.BannerViewPager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ComicNewStoreFragment extends g6 implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: break  reason: not valid java name */
    public List<ComicStoreBean.TopTabsBean> f10007break;

    /* renamed from: case  reason: not valid java name */
    public String f10008case;

    /* renamed from: catch  reason: not valid java name */
    public List<ComicBean> f10009catch;

    /* renamed from: class  reason: not valid java name */
    public String f10010class;

    /* renamed from: const  reason: not valid java name */
    public int f10011const;

    /* renamed from: else  reason: not valid java name */
    public boolean f10013else;

    /* renamed from: final  reason: not valid java name */
    public int f10014final;

    /* renamed from: for  reason: not valid java name */
    public ScrollHeaderLayout f10015for;

    /* renamed from: goto  reason: not valid java name */
    public ComicStoreBean f10016goto;

    /* renamed from: if  reason: not valid java name */
    public ComicNewStoreAdapter f10017if;
    @BindView(R.id.public_loadingview)
    public PublicLoadingView loadingView;
    @BindView(R.id.fragment_store_recyclerview)
    public RecyclerView mRecyclerView;
    @BindView(R.id.lv_to_top_iv)
    public ImageView mTopView;

    /* renamed from: new  reason: not valid java name */
    public boolean f10020new;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout ptrRefreshLayout;

    /* renamed from: public  reason: not valid java name */
    public boolean f10021public;

    /* renamed from: return  reason: not valid java name */
    public Banner f10022return;

    /* renamed from: super  reason: not valid java name */
    public int f10024super;

    /* renamed from: this  reason: not valid java name */
    public List<ComicStoreBean.BannerBean> f10026this;

    /* renamed from: throw  reason: not valid java name */
    public AdViewBangDan f10027throw;

    /* renamed from: try  reason: not valid java name */
    public boolean f10029try;

    /* renamed from: while  reason: not valid java name */
    public z2 f10030while;

    /* renamed from: do  reason: not valid java name */
    public final List<ComicBean> f10012do = new ArrayList();

    /* renamed from: import  reason: not valid java name */
    public final bg f10018import = new Cdo();

    /* renamed from: native  reason: not valid java name */
    public final r5 f10019native = new Cif();

    /* renamed from: static  reason: not valid java name */
    public final cc0 f10023static = new Cfor();

    /* renamed from: switch  reason: not valid java name */
    public int f10025switch = -1;

    /* renamed from: throws  reason: not valid java name */
    public boolean f10028throws = true;

    /* renamed from: com.manhua.ui.fragment.ComicNewStoreFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.item_book_city_tab_recommend_txt) {
                ComicNewStoreFragment.this.startActivity(new Intent(ComicNewStoreFragment.this.getSupportActivity(), ComicUpdateActivity.class));
            } else if (view.getId() == R.id.item_book_city_tab_collect_txt) {
                ComicNewReleaseActivity.k(ComicNewStoreFragment.this.getSupportActivity());
            } else if (view.getId() == R.id.item_book_city_tab_grade_txt) {
                ComicRankActivity.i(ComicNewStoreFragment.this.getSupportActivity());
            } else if (view.getId() == R.id.item_book_city_tab_over_txt) {
                ComicNewStoreFragment.this.startActivity(new Intent(ComicNewStoreFragment.this.getSupportActivity(), ComicListActivity.class));
            } else if (view.getId() == R.id.item_book_city_tab_hot_txt) {
                ComicNewStoreFragment.this.startActivity(new Intent(ComicNewStoreFragment.this.getSupportActivity(), ComicCategoryActivity.class));
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicNewStoreFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements cc0 {
        public Cfor() {
        }

        @Override // com.apk.cc0
        /* renamed from: do */
        public void mo330do(int i) {
            try {
                ComicStoreBean.BannerBean bannerBean = ComicNewStoreFragment.this.f10026this.get(i);
                if (bannerBean != null) {
                    String type = bannerBean.getType();
                    if (ak.aw.equals(type)) {
                        WebViewActivity.i(ComicNewStoreFragment.this.getSupportActivity(), null, bannerBean.getParam());
                    } else if ("book".equals(type)) {
                        ComicDetailActivity.n(ComicNewStoreFragment.this.getSupportActivity(), mu.m1765final(bannerBean.getParam(), "", ""));
                    } else if ("booklist".equals(type)) {
                        ComicListDetailActivity.k(ComicNewStoreFragment.this.getSupportActivity(), bannerBean.getParam(), null);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicNewStoreFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends r5 {
        public Cif() {
        }

        @Override // com.apk.r5
        /* renamed from: do */
        public void mo2233do() {
            PtrClassicFrameLayout ptrClassicFrameLayout = ComicNewStoreFragment.this.ptrRefreshLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.m2532break();
            }
        }

        @Override // com.apk.r5
        /* renamed from: final */
        public void mo2235final(ComicStoreBean comicStoreBean) {
            if (comicStoreBean != null) {
                ComicNewStoreFragment comicNewStoreFragment = ComicNewStoreFragment.this;
                comicNewStoreFragment.f10016goto = comicStoreBean;
                if (comicNewStoreFragment == null) {
                    throw null;
                }
                new b1().m141do(new v10(comicNewStoreFragment));
                return;
            }
            PublicLoadingView publicLoadingView = ComicNewStoreFragment.this.loadingView;
            if (publicLoadingView != null) {
                publicLoadingView.setError(null);
            }
        }

        @Override // com.apk.r5
        /* renamed from: new */
        public void mo2239new(List<ComicBean> list, boolean z, int i) {
            if (list != null && list.size() > 0) {
                for (ComicBean comicBean : list) {
                    comicBean.setItemType(9);
                }
            }
            ComicNewStoreFragment.h(ComicNewStoreFragment.this, list, z);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicNewStoreFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends RecyclerView.OnScrollListener {
        public Cnew(s10 s10Var) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            ComicNewStoreAdapter comicNewStoreAdapter;
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0) {
                Banner banner = ComicNewStoreFragment.this.f10022return;
                if (banner != null) {
                    banner.setEffective(true);
                }
                ComicNewStoreAdapter comicNewStoreAdapter2 = ComicNewStoreFragment.this.f10017if;
                if (comicNewStoreAdapter2 != null) {
                    comicNewStoreAdapter2.m3613for();
                }
                AdViewBangDan adViewBangDan = ComicNewStoreFragment.this.f10027throw;
                if (adViewBangDan != null) {
                    adViewBangDan.f6294break = false;
                }
                ComicNewStoreFragment comicNewStoreFragment = ComicNewStoreFragment.this;
                if (!comicNewStoreFragment.f10028throws && (comicNewStoreAdapter = comicNewStoreFragment.f10017if) != null && comicNewStoreFragment.f10025switch > comicNewStoreAdapter.getItemCount() / 6) {
                    ComicNewStoreFragment.this.n(true);
                }
                if (!TextUtils.isEmpty(ComicNewStoreFragment.this.f10008case) && v.m2734do() == null) {
                    throw null;
                }
                return;
            }
            Banner banner2 = ComicNewStoreFragment.this.f10022return;
            if (banner2 != null) {
                banner2.setEffective(false);
            }
            ComicNewStoreAdapter comicNewStoreAdapter3 = ComicNewStoreFragment.this.f10017if;
            if (comicNewStoreAdapter3 != null) {
                comicNewStoreAdapter3.m3614if();
            }
            AdViewBangDan adViewBangDan2 = ComicNewStoreFragment.this.f10027throw;
            if (adViewBangDan2 != null) {
                adViewBangDan2.f6294break = true;
            }
            if (recyclerView.canScrollVertically(1) && recyclerView.canScrollVertically(-1)) {
                ComicNewStoreFragment comicNewStoreFragment2 = ComicNewStoreFragment.this;
                if (comicNewStoreFragment2.f10028throws) {
                    comicNewStoreFragment2.n(false);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            int findFirstVisibleItemPosition;
            super.onScrolled(recyclerView, i, i2);
            try {
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                if (!(layoutManager instanceof LinearLayoutManager) || ComicNewStoreFragment.this.f10025switch == (findFirstVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition())) {
                    return;
                }
                ComicNewStoreFragment.this.f10025switch = findFirstVisibleItemPosition;
            } catch (Exception unused) {
            }
        }
    }

    public static void h(ComicNewStoreFragment comicNewStoreFragment, List list, boolean z) {
        int size;
        if (comicNewStoreFragment == null) {
            throw null;
        }
        if (list == null) {
            size = 0;
        } else {
            try {
                size = list.size();
            } catch (Exception unused) {
                return;
            }
        }
        if (size > 0) {
            comicNewStoreFragment.f10017if.addData((Collection) list);
        }
        if (z) {
            comicNewStoreFragment.f10017if.loadMoreComplete();
            comicNewStoreFragment.f10011const++;
            return;
        }
        comicNewStoreFragment.f10017if.loadMoreEnd();
    }

    public static ComicNewStoreFragment i(boolean z, String str, boolean z2) {
        ComicNewStoreFragment comicNewStoreFragment = new ComicNewStoreFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("isMan", z);
        bundle.putString("sourceUrl", str);
        bundle.putBoolean("isShowBangdanAd", z2);
        comicNewStoreFragment.setArguments(bundle);
        return comicNewStoreFragment;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3628synchronized(ComicNewStoreFragment comicNewStoreFragment) {
        if (comicNewStoreFragment != null) {
            try {
                if (comicNewStoreFragment.f10026this != null && comicNewStoreFragment.f10026this.size() > 0) {
                    if (comicNewStoreFragment.f10022return == null) {
                        Banner banner = (Banner) comicNewStoreFragment.f10015for.findViewById(R.id.store_top_banner);
                        comicNewStoreFragment.f10022return = banner;
                        banner.setVisibility(8);
                        comicNewStoreFragment.f10022return.f10505goto = 1;
                        comicNewStoreFragment.f10022return.m3724for(6);
                        comicNewStoreFragment.f10022return.f10495catch = true;
                        comicNewStoreFragment.f10022return.f10523this = 5000;
                        comicNewStoreFragment.f10022return.c = comicNewStoreFragment.f10023static;
                        comicNewStoreFragment.f10022return.setVisibility(0);
                    } else {
                        comicNewStoreFragment.f10022return.f.f285do.removeCallbacksAndMessages(null);
                        comicNewStoreFragment.f10022return.m3723else();
                    }
                    comicNewStoreFragment.m(comicNewStoreFragment.f10026this);
                    return;
                } else if (comicNewStoreFragment.f10022return != null) {
                    comicNewStoreFragment.f10022return.setVisibility(8);
                    return;
                } else {
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_new_comic_store;
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        this.f10020new = getWidthDpi() > 500;
        ComicNewStoreAdapter comicNewStoreAdapter = new ComicNewStoreAdapter(getSupportActivity(), this.f10012do, Cfinally.m797else().m805continue() ? Ccontinue.m379if().f726throw : 0);
        this.f10017if = comicNewStoreAdapter;
        comicNewStoreAdapter.f9622for = this.f10020new;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 12);
        gridLayoutManager.setSpanSizeLookup(new bh(this.f10017if, 12));
        this.mRecyclerView.setLayoutManager(gridLayoutManager);
        this.mRecyclerView.setAdapter(this.f10017if);
        this.f10017if.setOnItemClickListener(this);
        this.f10017if.setOnItemChildClickListener(this);
        this.f10030while = new z2(getSupportActivity(), this.f10019native);
        try {
            ScrollHeaderLayout scrollHeaderLayout = (ScrollHeaderLayout) View.inflate(getSupportActivity(), R.layout.header_new_comic_store_rank, null);
            this.f10015for = scrollHeaderLayout;
            if (this.f10017if != null) {
                this.f10017if.addHeaderView(scrollHeaderLayout);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        k();
        try {
            if (Cfinally.m797else().m811import() && this.f10013else) {
                AdViewBangDan adViewBangDan = (AdViewBangDan) this.f10015for.findViewById(R.id.adview_bangdan);
                this.f10027throw = adViewBangDan;
                adViewBangDan.setAutoRefresh(false);
                this.f10027throw.setAdWidth(eg.m614switch() - eg.m587catch(20.0f));
                this.f10027throw.m3268new(getSupportActivity(), "bshomelist");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f10029try = arguments.getBoolean("isMan", true);
            this.f10008case = arguments.getString("sourceUrl");
            this.f10013else = arguments.getBoolean("isShowBangdanAd");
        }
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.addOnScrollListener(new Cnew(null));
        ze.m3165else(this.mRecyclerView);
        PtrClassicFrameLayout ptrClassicFrameLayout = this.ptrRefreshLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new s10(this));
        this.loadingView.setReloadListener(new t10(this));
        this.mTopView.post(new u10(this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:282:0x0408, code lost:
        if (r5 != false) goto L49;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.manhua.data.bean.ComicBean> j(java.util.List<com.biquge.ebook.app.bean.ComicStoreBean.ListStoreBean> r18, java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 1062
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.manhua.ui.fragment.ComicNewStoreFragment.j(java.util.List, java.lang.String):java.util.List");
    }

    public final void k() {
        String sb;
        if (this.f10030while != null) {
            if (TextUtils.isEmpty(this.f10008case)) {
                boolean z = this.f10029try;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(p0.m1998catch());
                sb2.append("/");
                sb2.append("ver9/base");
                sb2.append(z ? "/scmh_man.html" : "/scmh_lady.html");
                sb = sb2.toString();
            } else {
                sb = this.f10008case;
            }
            z2 z2Var = this.f10030while;
            if (z2Var == null) {
                throw null;
            }
            x4.m2957import(sb, 7200000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new e3(z2Var, "SP_HOST_SHUC_MH_KEY"));
        }
    }

    public void l(boolean z) {
        if (z) {
            if (this.f10021public) {
                ComicNewStoreAdapter comicNewStoreAdapter = this.f10017if;
                if (comicNewStoreAdapter != null) {
                    comicNewStoreAdapter.m3613for();
                }
                AdViewBangDan adViewBangDan = this.f10027throw;
                if (adViewBangDan != null) {
                    adViewBangDan.f6294break = false;
                    adViewBangDan.mo139do();
                    return;
                }
                return;
            }
            return;
        }
        ComicNewStoreAdapter comicNewStoreAdapter2 = this.f10017if;
        if (comicNewStoreAdapter2 != null) {
            comicNewStoreAdapter2.m3614if();
        }
        AdViewBangDan adViewBangDan2 = this.f10027throw;
        if (adViewBangDan2 != null) {
            adViewBangDan2.f6294break = true;
        }
    }

    public final void m(List<ComicStoreBean.BannerBean> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (ComicStoreBean.BannerBean bannerBean : list) {
            arrayList.add("");
            arrayList2.add(bannerBean.getImgurl());
        }
        Banner banner = this.f10022return;
        int size = arrayList2.size();
        BannerViewPager bannerViewPager = banner.f10492abstract;
        if (bannerViewPager != null) {
            bannerViewPager.setOffscreenPageLimit(size);
        }
        this.f10022return.m3726if(new mg(true));
        Banner banner2 = this.f10022return;
        banner2.f10501extends = arrayList2;
        banner2.f10516public = arrayList2.size();
        Banner banner3 = this.f10022return;
        banner3.f10499default = arrayList;
        banner3.m3728try();
    }

    @OnClick({R.id.lv_to_top_iv})
    public void menuClick() {
        try {
            if (this.mRecyclerView != null) {
                ze.K(this.mRecyclerView, 0);
            }
            n(false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void n(boolean z) {
        if (z) {
            if (this.mTopView.getVisibility() != 0) {
                this.mTopView.setVisibility(0);
            }
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mTopView, "translationX", eg.m587catch(60.0f), 0.0f);
            ofFloat.setInterpolator(new DecelerateInterpolator());
            ofFloat.setDuration(300L);
            ofFloat.start();
        } else {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mTopView, "translationX", 0.0f, eg.m587catch(60.0f));
            ofFloat2.setInterpolator(new DecelerateInterpolator());
            ofFloat2.setDuration(300L);
            ofFloat2.start();
        }
        this.f10028throws = !this.f10028throws;
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration != null) {
            boolean z = configuration.screenWidthDp > 500;
            this.f10020new = z;
            ComicNewStoreAdapter comicNewStoreAdapter = this.f10017if;
            if (comicNewStoreAdapter != null) {
                comicNewStoreAdapter.f9622for = z;
            }
            k();
        }
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        gg<String, AdViewRectangle> ggVar;
        super.onDestroy();
        ComicNewStoreAdapter comicNewStoreAdapter = this.f10017if;
        if (comicNewStoreAdapter != null && (ggVar = comicNewStoreAdapter.f9625new) != null) {
            Iterator it = ((HashSet) ggVar.entrySet()).iterator();
            while (it.hasNext()) {
                AdViewRectangle adViewRectangle = (AdViewRectangle) ((Map.Entry) it.next()).getValue();
                if (adViewRectangle != null) {
                    adViewRectangle.m3275new();
                }
            }
        }
        AdViewBangDan adViewBangDan = this.f10027throw;
        if (adViewBangDan != null) {
            adViewBangDan.m3269try();
            this.f10027throw = null;
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ComicBean comicBean = (ComicBean) this.f10017if.getItem(i);
        if (comicBean != null) {
            if (view.getId() == R.id.item_store_module_refresh_bt) {
                ComicStoreBean comicStoreBean = this.f10016goto;
                if (comicStoreBean != null) {
                    this.f10009catch = j(comicStoreBean.getList(), comicBean.getCategoryTitle());
                    if (this.f10017if != null) {
                        this.f10012do.clear();
                        List<ComicBean> list = this.f10012do;
                        if (this.f10009catch == null) {
                            this.f10009catch = new ArrayList();
                        }
                        list.addAll(this.f10009catch);
                        this.f10017if.notifyDataSetChanged();
                    }
                }
            } else if (view.getId() == R.id.item_store_module_more_bt) {
                String categoryTitle = comicBean.getCategoryTitle();
                String more = comicBean.getMore();
                String moreFlag = comicBean.getMoreFlag();
                if ("web".equals(moreFlag)) {
                    WebViewActivity.i(getContext(), null, more);
                } else if ("api".equals(moreFlag)) {
                    if (comicBean.isCartton()) {
                        ComicStoreModuleMoreActivity.m(getContext(), categoryTitle, more);
                    } else {
                        BookStoreModuleMoreActivity.m(getContext(), categoryTitle, more);
                    }
                }
            }
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ComicBean comicBean = (ComicBean) this.f10017if.getItem(i);
        if (comicBean != null) {
            int itemType = comicBean.getItemType();
            if (2 == itemType || 21 == itemType || 3 == itemType || 20 == itemType || 5 == itemType || 6 == itemType || 7 == itemType || 8 == itemType || 9 == itemType || 10 == itemType || 11 == itemType || 16 == itemType || 17 == itemType || 18 == itemType || 19 == itemType || 22 == itemType || 24 == itemType || 25 == itemType) {
                String str = comicBean.getCategoryTitle() + "|" + i;
                if (comicBean.isCartton()) {
                    ComicDetailActivity.n(getSupportActivity(), comicBean);
                    return;
                }
                Book m1811catch = n2.m1811catch(comicBean.getId(), comicBean.getName(), comicBean.getImg());
                m1811catch.setDesc(comicBean.getDesc());
                BookDetailActivity.t(getSupportActivity(), str, m1811catch);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        l(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getUserVisibleHint()) {
            l(true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Banner banner = this.f10022return;
        if (banner != null) {
            banner.m3722case();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Banner banner = this.f10022return;
        if (banner != null) {
            banner.m3723else();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        l(z);
    }
}
