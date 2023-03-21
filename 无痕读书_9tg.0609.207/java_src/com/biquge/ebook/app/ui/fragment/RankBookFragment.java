package com.biquge.ebook.app.ui.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.eg;
import com.apk.g6;
import com.apk.i6;
import com.apk.ss;
import com.apk.ts;
import com.apk.u5;
import com.apk.v3;
import com.apk.w;
import com.apk.ze;
import com.biquge.ebook.app.adapter.NovelRankListAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.google.gson.internal.bind.TypeAdapters;
import com.umeng.analytics.AnalyticsConfig;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class RankBookFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public v3 f7576case;

    /* renamed from: do  reason: not valid java name */
    public NovelRankListAdapter f7577do;

    /* renamed from: else  reason: not valid java name */
    public JSONObject f7578else;

    /* renamed from: for  reason: not valid java name */
    public String f7579for;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public String f7582new;

    /* renamed from: try  reason: not valid java name */
    public String f7583try;

    /* renamed from: if  reason: not valid java name */
    public int f7581if = 1;

    /* renamed from: goto  reason: not valid java name */
    public final u5 f7580goto = new Cnew();

    /* renamed from: com.biquge.ebook.app.ui.fragment.RankBookFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            RankBookFragment.m3384synchronized(RankBookFragment.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(RankBookFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.RankBookFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RankBookFragment.this.mPtrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.RankBookFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            RankBookFragment.a(RankBookFragment.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.RankBookFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends u5 {
        public Cnew() {
        }

        @Override // com.apk.u5
        /* renamed from: switch */
        public void mo2687switch() {
            RankBookFragment.this.j(false);
            NovelRankListAdapter novelRankListAdapter = RankBookFragment.this.f7577do;
            if (novelRankListAdapter != null) {
                novelRankListAdapter.loadMoreFail();
            }
        }

        @Override // com.apk.u5
        /* renamed from: try */
        public void mo2690try(List<Book> list, boolean z, int i) {
            RankBookFragment.this.j(false);
            if (i == 1) {
                if (RankBookFragment.this.f7578else != null && list != null && list.size() > 0) {
                    Book book = new Book();
                    book.setItemType(2);
                    if ("week".equals(RankBookFragment.this.f7583try)) {
                        if (list.size() < 3) {
                            list.add(book);
                        } else {
                            list.add(2, book);
                        }
                    } else if (TypeAdapters.AnonymousClass27.MONTH.equals(RankBookFragment.this.f7583try)) {
                        list.add(0, book);
                    } else if ("total".equals(RankBookFragment.this.f7583try)) {
                        if (list.size() > 0) {
                            list.add(1, book);
                        } else {
                            list.add(book);
                        }
                    }
                }
                RankBookFragment.h(RankBookFragment.this, true, list, z, i);
                return;
            }
            RankBookFragment.h(RankBookFragment.this, false, list, z, i);
        }
    }

    public static void a(RankBookFragment rankBookFragment) {
        if (rankBookFragment != null) {
            try {
                if (rankBookFragment.f7576case != null) {
                    rankBookFragment.f7576case.m2772switch(w.m2859switch(rankBookFragment.f7579for, rankBookFragment.f7582new, rankBookFragment.f7583try, rankBookFragment.f7581if), rankBookFragment.f7581if);
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void h(RankBookFragment rankBookFragment, boolean z, List list, boolean z2, int i) {
        if (rankBookFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                rankBookFragment.f7577do.setNewData(list);
                if (z2) {
                    rankBookFragment.f7577do.setEnableLoadMore(true);
                    rankBookFragment.f7581if = i + 1;
                    return;
                }
                rankBookFragment.f7577do.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                rankBookFragment.f7577do.addData((Collection) list);
            }
            if (z2) {
                rankBookFragment.f7577do.loadMoreComplete();
                rankBookFragment.f7581if = i + 1;
                return;
            }
            rankBookFragment.f7577do.loadMoreEnd();
            return;
        }
        throw null;
    }

    public static RankBookFragment i(String str, String str2, String str3) {
        RankBookFragment rankBookFragment = new RankBookFragment();
        Bundle bundle = new Bundle();
        bundle.putString("category", str);
        bundle.putString("type", str2);
        bundle.putString(AnalyticsConfig.RTD_PERIOD, str3);
        rankBookFragment.setArguments(bundle);
        return rankBookFragment;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3384synchronized(RankBookFragment rankBookFragment) {
        if (rankBookFragment != null) {
            try {
                if (rankBookFragment.f7576case != null) {
                    rankBookFragment.f7581if = 1;
                    rankBookFragment.f7576case.m2772switch(w.m2859switch(rankBookFragment.f7579for, rankBookFragment.f7582new, rankBookFragment.f7583try, 1), rankBookFragment.f7581if);
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_rank_book;
    }

    @Override // com.apk.g6
    public void initData() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f7579for = arguments.getString("category");
            this.f7582new = arguments.getString("type");
            this.f7583try = arguments.getString(AnalyticsConfig.RTD_PERIOD);
        }
        this.f7576case = new v3(getSupportActivity(), this.f7580goto);
        String str = null;
        if ("week".equals(this.f7583try) && Cfinally.m797else().b()) {
            this.f7578else = Cfinally.m797else().c;
            str = "topweek";
        } else if (TypeAdapters.AnonymousClass27.MONTH.equals(this.f7583try) && Cfinally.m797else().m809finally()) {
            this.f7578else = Cfinally.m797else().d;
            str = "topmonth";
        } else if ("total".equals(this.f7583try) && Cfinally.m797else().a()) {
            this.f7578else = Cfinally.m797else().e;
            str = "toptotal";
        }
        NovelRankListAdapter novelRankListAdapter = new NovelRankListAdapter(getSupportActivity(), this.f7578else, str, true);
        this.f7577do = novelRankListAdapter;
        this.mRecyclerView.setAdapter(novelRankListAdapter);
        this.f7577do.setOnItemClickListener(this);
        this.f7577do.setOnLoadMoreListener(new Cif(), this.mRecyclerView);
        j(true);
    }

    @Override // com.apk.g6
    public void initView() {
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.mRecyclerView);
        this.mPtrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    public final void j(boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Cfor());
                return;
            }
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = this.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.m2532break();
        }
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        NovelRankListAdapter novelRankListAdapter = this.f7577do;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3287do();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            Book book = (Book) this.f7577do.getItem(i);
            if (book == null || book.getItemType() != 1) {
                return;
            }
            i6 supportActivity = getSupportActivity();
            BookDetailActivity.t(supportActivity, "阅读完成更多推荐|" + (i + 1), book);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        NovelRankListAdapter novelRankListAdapter = this.f7577do;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3289if();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        NovelRankListAdapter novelRankListAdapter = this.f7577do;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3288for();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            NovelRankListAdapter novelRankListAdapter = this.f7577do;
            if (novelRankListAdapter != null) {
                novelRankListAdapter.m3288for();
                return;
            }
            return;
        }
        NovelRankListAdapter novelRankListAdapter2 = this.f7577do;
        if (novelRankListAdapter2 != null) {
            novelRankListAdapter2.m3289if();
        }
    }
}
