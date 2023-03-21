package com.biquge.ebook.app.ui.fragment;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
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
import com.apk.ac;
import com.apk.b1;
import com.apk.bc;
import com.apk.bg;
import com.apk.bh;
import com.apk.c4;
import com.apk.cc0;
import com.apk.eg;
import com.apk.g6;
import com.apk.gg;
import com.apk.i6;
import com.apk.mg;
import com.apk.mu;
import com.apk.n2;
import com.apk.p0;
import com.apk.u5;
import com.apk.v;
import com.apk.v3;
import com.apk.x4;
import com.apk.xw;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.biquge.ebook.app.adapter.NewStoreAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.biquge.ebook.app.bean.StoreBean;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.activity.BookListDetailActivity;
import com.biquge.ebook.app.ui.activity.BookStoreModuleMoreActivity;
import com.biquge.ebook.app.ui.activity.FragmentManagerActivity;
import com.biquge.ebook.app.ui.activity.WebViewActivity;
import com.biquge.ebook.app.ui.fragment.NewStoreFragment;
import com.biquge.ebook.app.widget.ScrollHeaderLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicDetailActivity;
import com.manhua.ui.activity.ComicStoreModuleMoreActivity;
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
public class NewStoreFragment extends g6 implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: break  reason: not valid java name */
    public List<StoreBean.TopTabsBean> f7545break;

    /* renamed from: case  reason: not valid java name */
    public String f7546case;

    /* renamed from: catch  reason: not valid java name */
    public List<Book> f7547catch;

    /* renamed from: class  reason: not valid java name */
    public String f7548class;

    /* renamed from: const  reason: not valid java name */
    public int f7549const;

    /* renamed from: else  reason: not valid java name */
    public boolean f7551else;

    /* renamed from: final  reason: not valid java name */
    public int f7552final;

    /* renamed from: for  reason: not valid java name */
    public ScrollHeaderLayout f7553for;

    /* renamed from: goto  reason: not valid java name */
    public StoreBean f7554goto;

    /* renamed from: if  reason: not valid java name */
    public NewStoreAdapter f7555if;
    @BindView(R.id.public_loadingview)
    @SuppressLint({"NonConstantResourceId"})
    public PublicLoadingView loadingView;
    @BindView(R.id.fragment_store_recyclerview)
    @SuppressLint({"NonConstantResourceId"})
    public RecyclerView mRecyclerView;
    @BindView(R.id.lv_to_top_iv)
    @SuppressLint({"NonConstantResourceId"})
    public ImageView mTopView;

    /* renamed from: new  reason: not valid java name */
    public boolean f7558new;
    @BindView(R.id.refresh_rv_layout)
    @SuppressLint({"NonConstantResourceId"})
    public PtrClassicFrameLayout ptrRefreshLayout;

    /* renamed from: public  reason: not valid java name */
    public boolean f7559public;

    /* renamed from: return  reason: not valid java name */
    public Banner f7560return;

    /* renamed from: super  reason: not valid java name */
    public int f7562super;

    /* renamed from: this  reason: not valid java name */
    public List<StoreBean.BannerBean> f7564this;

    /* renamed from: throw  reason: not valid java name */
    public AdViewBangDan f7565throw;

    /* renamed from: try  reason: not valid java name */
    public boolean f7567try;

    /* renamed from: while  reason: not valid java name */
    public v3 f7568while;

    /* renamed from: do  reason: not valid java name */
    public final List<Book> f7550do = new ArrayList();

    /* renamed from: import  reason: not valid java name */
    public final bg f7556import = new Cdo();

    /* renamed from: native  reason: not valid java name */
    public final u5 f7557native = new Cif();

    /* renamed from: static  reason: not valid java name */
    public final cc0 f7561static = new Cfor();

    /* renamed from: switch  reason: not valid java name */
    public int f7563switch = -1;

    /* renamed from: throws  reason: not valid java name */
    public boolean f7566throws = true;

    /* renamed from: com.biquge.ebook.app.ui.fragment.NewStoreFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.store_top_tab_category) {
                FragmentManagerActivity.i(NewStoreFragment.this.getSupportActivity(), ze.q(R.string.main_tab_book_city_category_txt), "1");
            } else if (view.getId() == R.id.store_top_tab_rank) {
                FragmentManagerActivity.j(NewStoreFragment.this.getSupportActivity(), ze.q(R.string.main_tab_book_list), "2", null, NewStoreFragment.this.f7567try);
            } else if (view.getId() == R.id.store_top_tab_list) {
                FragmentManagerActivity.i(NewStoreFragment.this.getSupportActivity(), ze.q(R.string.main_tab_book_city_element_txt), "3");
            } else if (view.getId() == R.id.store_hot_tab_list) {
                FragmentManagerActivity.j(NewStoreFragment.this.getSupportActivity(), ze.q(R.string.main_tab_book_city_hot_txt), RedBgImageBean.RED_BG_TYPE_CUSTOM_IMAGE, null, NewStoreFragment.this.f7567try);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.NewStoreFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements cc0 {
        public Cfor() {
        }

        @Override // com.apk.cc0
        /* renamed from: do */
        public void mo330do(int i) {
            try {
                StoreBean.BannerBean bannerBean = NewStoreFragment.this.f7564this.get(i);
                if (bannerBean != null) {
                    String type = bannerBean.getType();
                    if (ak.aw.equals(type)) {
                        WebViewActivity.i(NewStoreFragment.this.getSupportActivity(), null, bannerBean.getParam());
                    } else if ("book".equals(type)) {
                        i6 supportActivity = NewStoreFragment.this.getSupportActivity();
                        BookDetailActivity.t(supportActivity, "顶部轮播Banner|" + (i + 1), n2.m1811catch(bannerBean.getParam(), "", ""));
                    } else if ("booklist".equals(type)) {
                        BookListDetailActivity.k(NewStoreFragment.this.getSupportActivity(), bannerBean.getParam(), null);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.NewStoreFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends u5 {
        public Cif() {
        }

        @Override // com.apk.u5
        /* renamed from: do */
        public void mo2674do() {
            PtrClassicFrameLayout ptrClassicFrameLayout = NewStoreFragment.this.ptrRefreshLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.m2532break();
            }
        }

        @Override // com.apk.u5
        /* renamed from: import */
        public void mo2680import(StoreBean storeBean) {
            if (storeBean != null) {
                NewStoreFragment newStoreFragment = NewStoreFragment.this;
                newStoreFragment.f7554goto = storeBean;
                if (newStoreFragment == null) {
                    throw null;
                }
                new b1().m141do(new bc(newStoreFragment));
                return;
            }
            PublicLoadingView publicLoadingView = NewStoreFragment.this.loadingView;
            if (publicLoadingView != null) {
                publicLoadingView.setError(null);
            }
        }

        @Override // com.apk.u5
        /* renamed from: try */
        public void mo2690try(List<Book> list, boolean z, int i) {
            if (list != null && list.size() > 0) {
                for (Book book : list) {
                    book.setItemType(9);
                }
            }
            NewStoreFragment.f(NewStoreFragment.this, list, z);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.NewStoreFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends RecyclerView.OnScrollListener {
        public Cnew(ac acVar) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            NewStoreAdapter newStoreAdapter;
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0) {
                Banner banner = NewStoreFragment.this.f7560return;
                if (banner != null) {
                    banner.setEffective(true);
                }
                NewStoreAdapter newStoreAdapter2 = NewStoreFragment.this.f7555if;
                if (newStoreAdapter2 != null) {
                    newStoreAdapter2.m3284for();
                }
                AdViewBangDan adViewBangDan = NewStoreFragment.this.f7565throw;
                if (adViewBangDan != null) {
                    adViewBangDan.f6294break = false;
                }
                NewStoreFragment newStoreFragment = NewStoreFragment.this;
                if (!newStoreFragment.f7566throws && (newStoreAdapter = newStoreFragment.f7555if) != null && newStoreFragment.f7563switch > newStoreAdapter.getItemCount() / 6) {
                    NewStoreFragment.this.o(true);
                }
                if (!TextUtils.isEmpty(NewStoreFragment.this.f7546case)) {
                    if (v.m2734do() == null) {
                        throw null;
                    }
                    return;
                } else if (NewStoreFragment.this.f7567try) {
                    if (v.m2734do() == null) {
                        throw null;
                    }
                    return;
                } else if (v.m2734do() == null) {
                    throw null;
                } else {
                    return;
                }
            }
            Banner banner2 = NewStoreFragment.this.f7560return;
            if (banner2 != null) {
                banner2.setEffective(false);
            }
            NewStoreAdapter newStoreAdapter3 = NewStoreFragment.this.f7555if;
            if (newStoreAdapter3 != null) {
                newStoreAdapter3.m3285if();
            }
            AdViewBangDan adViewBangDan2 = NewStoreFragment.this.f7565throw;
            if (adViewBangDan2 != null) {
                adViewBangDan2.f6294break = true;
            }
            if (recyclerView.canScrollVertically(1) && recyclerView.canScrollVertically(-1)) {
                NewStoreFragment newStoreFragment2 = NewStoreFragment.this;
                if (newStoreFragment2.f7566throws) {
                    newStoreFragment2.o(false);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            int findFirstVisibleItemPosition;
            super.onScrolled(recyclerView, i, i2);
            try {
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                if (!(layoutManager instanceof LinearLayoutManager) || NewStoreFragment.this.f7563switch == (findFirstVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition())) {
                    return;
                }
                NewStoreFragment.this.f7563switch = findFirstVisibleItemPosition;
            } catch (Exception unused) {
            }
        }
    }

    public static void f(NewStoreFragment newStoreFragment, List list, boolean z) {
        int size;
        if (newStoreFragment == null) {
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
            newStoreFragment.f7555if.addData((Collection) list);
        }
        if (z) {
            newStoreFragment.f7555if.loadMoreComplete();
            newStoreFragment.f7549const++;
            return;
        }
        newStoreFragment.f7555if.loadMoreEnd();
    }

    public static NewStoreFragment h(boolean z, String str, boolean z2) {
        NewStoreFragment newStoreFragment = new NewStoreFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("isMan", z);
        bundle.putString("sourceUrl", str);
        bundle.putBoolean("isShowBangdanAd", z2);
        newStoreFragment.setArguments(bundle);
        return newStoreFragment;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3383synchronized(NewStoreFragment newStoreFragment) {
        if (newStoreFragment != null) {
            try {
                if (newStoreFragment.f7564this != null) {
                    if (newStoreFragment.f7560return == null) {
                        Banner banner = (Banner) newStoreFragment.f7553for.findViewById(R.id.store_top_banner);
                        newStoreFragment.f7560return = banner;
                        banner.setVisibility(0);
                        newStoreFragment.f7560return.f10505goto = 1;
                        newStoreFragment.f7560return.m3724for(6);
                        newStoreFragment.f7560return.f10495catch = true;
                        newStoreFragment.f7560return.f10523this = 5000;
                        newStoreFragment.f7560return.c = newStoreFragment.f7561static;
                        newStoreFragment.f7560return.setVisibility(0);
                    } else {
                        newStoreFragment.f7560return.f.f285do.removeCallbacksAndMessages(null);
                        newStoreFragment.f7560return.m3723else();
                    }
                    newStoreFragment.n(newStoreFragment.f7564this);
                    return;
                } else if (newStoreFragment.f7560return != null) {
                    newStoreFragment.f7560return.setVisibility(8);
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
        return R.layout.fragment_new_store;
    }

    /* JADX WARN: Code restructure failed: missing block: B:318:0x04c9, code lost:
        if (r5 != false) goto L63;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.biquge.ebook.app.bean.Book> i(java.util.List<com.biquge.ebook.app.bean.StoreBean.ListBean> r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 1255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.fragment.NewStoreFragment.i(java.util.List, java.lang.String):java.util.List");
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        this.f7558new = getWidthDpi() > 500;
        NewStoreAdapter newStoreAdapter = new NewStoreAdapter(getSupportActivity(), this.f7550do, Cfinally.m797else().m805continue() ? Ccontinue.m379if().f726throw : 0);
        this.f7555if = newStoreAdapter;
        newStoreAdapter.f6360for = this.f7558new;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getContext(), 12);
        gridLayoutManager.setSpanSizeLookup(new bh(this.f7555if, 12));
        this.mRecyclerView.setLayoutManager(gridLayoutManager);
        this.mRecyclerView.setAdapter(this.f7555if);
        this.f7555if.setOnItemClickListener(this);
        this.f7555if.setOnItemChildClickListener(this);
        this.f7568while = new v3(getSupportActivity(), this.f7557native);
        try {
            ScrollHeaderLayout scrollHeaderLayout = (ScrollHeaderLayout) View.inflate(getSupportActivity(), R.layout.header_new_store_rank, null);
            this.f7553for = scrollHeaderLayout;
            if (this.f7555if != null) {
                this.f7555if.addHeaderView(scrollHeaderLayout);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        j();
        try {
            if (Cfinally.m797else().m811import() && this.f7551else) {
                AdViewBangDan adViewBangDan = (AdViewBangDan) this.f7553for.findViewById(R.id.adview_bangdan);
                this.f7565throw = adViewBangDan;
                adViewBangDan.setAutoRefresh(false);
                this.f7565throw.setAdWidth(eg.m614switch() - eg.m587catch(20.0f));
                this.f7565throw.m3268new(getSupportActivity(), "bshomelist");
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
            this.f7567try = arguments.getBoolean("isMan", true);
            this.f7546case = arguments.getString("sourceUrl");
            this.f7551else = arguments.getBoolean("isShowBangdanAd");
        }
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.addOnScrollListener(new Cnew(null));
        ze.m3165else(this.mRecyclerView);
        PtrClassicFrameLayout ptrClassicFrameLayout = this.ptrRefreshLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new ac(this));
        this.loadingView.setReloadListener(new PublicLoadingView.Cdo() { // from class: com.apk.na
            @Override // com.manhua.ui.widget.PublicLoadingView.Cdo
            /* renamed from: do */
            public final void mo1847do() {
                NewStoreFragment.this.j();
            }
        });
        this.mTopView.post(new Runnable() { // from class: com.apk.oa
            @Override // java.lang.Runnable
            public final void run() {
                NewStoreFragment.this.k();
            }
        });
    }

    public /* synthetic */ void k() {
        o(false);
    }

    /* renamed from: l */
    public final void j() {
        String sb;
        if (this.f7568while != null) {
            if (TextUtils.isEmpty(this.f7546case)) {
                boolean z = this.f7567try;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(p0.m1999class());
                sb2.append("/");
                sb2.append("ver9/base");
                sb2.append("/fq");
                sb2.append(z ? "/scxs_man.html" : "/scxs_lady.html");
                sb = sb2.toString();
            } else {
                sb = this.f7546case;
            }
            v3 v3Var = this.f7568while;
            if (v3Var == null) {
                throw null;
            }
            x4.m2957import(sb, 7200000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new c4(v3Var, "SP_HOST_SHUC_XS_KEY"));
        }
    }

    public void m(boolean z) {
        if (z) {
            if (this.f7559public) {
                NewStoreAdapter newStoreAdapter = this.f7555if;
                if (newStoreAdapter != null) {
                    newStoreAdapter.m3284for();
                }
                AdViewBangDan adViewBangDan = this.f7565throw;
                if (adViewBangDan != null) {
                    adViewBangDan.f6294break = false;
                    adViewBangDan.mo139do();
                    return;
                }
                return;
            }
            return;
        }
        NewStoreAdapter newStoreAdapter2 = this.f7555if;
        if (newStoreAdapter2 != null) {
            newStoreAdapter2.m3285if();
        }
        AdViewBangDan adViewBangDan2 = this.f7565throw;
        if (adViewBangDan2 != null) {
            adViewBangDan2.f6294break = true;
        }
    }

    @OnClick({R.id.lv_to_top_iv})
    public void menuClick() {
        try {
            if (this.mRecyclerView != null) {
                ze.K(this.mRecyclerView, 0);
            }
            o(false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void n(List<StoreBean.BannerBean> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (StoreBean.BannerBean bannerBean : list) {
            arrayList.add("");
            arrayList2.add(bannerBean.getImgurl());
        }
        Banner banner = this.f7560return;
        int size = arrayList2.size();
        BannerViewPager bannerViewPager = banner.f10492abstract;
        if (bannerViewPager != null) {
            bannerViewPager.setOffscreenPageLimit(size);
        }
        this.f7560return.m3726if(new mg(true));
        Banner banner2 = this.f7560return;
        banner2.f10501extends = arrayList2;
        banner2.f10516public = arrayList2.size();
        Banner banner3 = this.f7560return;
        banner3.f10499default = arrayList;
        banner3.m3728try();
    }

    public final void o(boolean z) {
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
        this.f7566throws = !this.f7566throws;
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration != null) {
            boolean z = configuration.screenWidthDp > 500;
            this.f7558new = z;
            NewStoreAdapter newStoreAdapter = this.f7555if;
            if (newStoreAdapter != null) {
                newStoreAdapter.f6360for = z;
            }
            j();
        }
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        gg<String, AdViewRectangle> ggVar;
        super.onDestroy();
        NewStoreAdapter newStoreAdapter = this.f7555if;
        if (newStoreAdapter != null && (ggVar = newStoreAdapter.f6363new) != null) {
            Iterator it = ((HashSet) ggVar.entrySet()).iterator();
            while (it.hasNext()) {
                AdViewRectangle adViewRectangle = (AdViewRectangle) ((Map.Entry) it.next()).getValue();
                if (adViewRectangle != null) {
                    adViewRectangle.m3275new();
                }
            }
        }
        AdViewBangDan adViewBangDan = this.f7565throw;
        if (adViewBangDan != null) {
            adViewBangDan.m3269try();
            this.f7565throw = null;
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Book book = (Book) this.f7555if.getItem(i);
        if (book != null) {
            if (view.getId() == R.id.item_store_module_refresh_bt) {
                StoreBean storeBean = this.f7554goto;
                if (storeBean != null) {
                    this.f7547catch = i(storeBean.getList(), book.getCategoryTitle());
                    if (this.f7555if != null) {
                        this.f7550do.clear();
                        List<Book> list = this.f7550do;
                        if (this.f7547catch == null) {
                            this.f7547catch = new ArrayList();
                        }
                        list.addAll(this.f7547catch);
                        this.f7555if.notifyDataSetChanged();
                    }
                }
            } else if (view.getId() == R.id.item_store_module_more_bt) {
                String categoryTitle = book.getCategoryTitle();
                String more = book.getMore();
                String moreFlag = book.getMoreFlag();
                if ("web".equals(moreFlag)) {
                    WebViewActivity.i(getContext(), null, more);
                } else if ("api".equals(moreFlag)) {
                    if (book.isNovel()) {
                        BookStoreModuleMoreActivity.m(getContext(), categoryTitle, more);
                    } else {
                        ComicStoreModuleMoreActivity.m(getContext(), categoryTitle, more);
                    }
                }
            }
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Book book = (Book) this.f7555if.getItem(i);
        if (book != null) {
            int itemType = book.getItemType();
            if (2 == itemType || 21 == itemType || 3 == itemType || 20 == itemType || 5 == itemType || 6 == itemType || 7 == itemType || 8 == itemType || 9 == itemType || 10 == itemType || 11 == itemType || 16 == itemType || 17 == itemType || 18 == itemType || 19 == itemType || 22 == itemType || 24 == itemType || 25 == itemType) {
                String str = book.getCategoryTitle() + "|" + i;
                if (book.isNovel()) {
                    BookDetailActivity.t(getSupportActivity(), str, book);
                    return;
                }
                ComicBean m1765final = mu.m1765final(book.getId(), book.getName(), book.getImg());
                m1765final.setDesc(book.getDesc());
                ComicDetailActivity.n(getSupportActivity(), m1765final);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        m(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getUserVisibleHint()) {
            m(true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Banner banner = this.f7560return;
        if (banner != null) {
            banner.m3722case();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        Banner banner = this.f7560return;
        if (banner != null) {
            banner.m3723else();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        m(z);
    }
}
