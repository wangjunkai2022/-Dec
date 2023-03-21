package com.expand.listen.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.b1;
import com.apk.eg;
import com.apk.g6;
import com.apk.q0;
import com.apk.q3;
import com.apk.s3;
import com.apk.ss;
import com.apk.t5;
import com.apk.ts;
import com.apk.ze;
import com.biquge.ebook.app.adapter.LeftCategoryAdapter;
import com.biquge.ebook.app.bean.RankListBean;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.expand.listen.adapter.ListenRankAdapter;
import com.expand.listen.bean.ListenDetail;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ListenRankChildFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public LeftCategoryAdapter f9397do;

    /* renamed from: else  reason: not valid java name */
    public String f9398else;

    /* renamed from: goto  reason: not valid java name */
    public q3 f9400goto;

    /* renamed from: if  reason: not valid java name */
    public ListenRankAdapter f9401if;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public String f9402new;

    /* renamed from: try  reason: not valid java name */
    public String f9404try;

    /* renamed from: for  reason: not valid java name */
    public int f9399for = 1;

    /* renamed from: case  reason: not valid java name */
    public boolean f9396case = true;

    /* renamed from: this  reason: not valid java name */
    public final t5 f9403this = new Ctry();

    /* renamed from: com.expand.listen.fragment.ListenRankChildFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemClickListener {
        public Cdo() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            try {
                LeftCategoryAdapter leftCategoryAdapter = ListenRankChildFragment.this.f9397do;
                leftCategoryAdapter.f6356do = i;
                leftCategoryAdapter.notifyDataSetChanged();
                RankListBean item = ListenRankChildFragment.this.f9397do.getItem(i);
                ListenRankChildFragment.this.f9404try = item != null ? item.getId() : "";
                ListenRankChildFragment.this.l(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.expand.listen.fragment.ListenRankChildFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cfor() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            ListenRankChildFragment.f(ListenRankChildFragment.this);
        }
    }

    /* renamed from: com.expand.listen.fragment.ListenRankChildFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ts {
        public Cif() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            ListenRankChildFragment.a(ListenRankChildFragment.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(ListenRankChildFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.expand.listen.fragment.ListenRankChildFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements Runnable {
        public Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrClassicFrameLayout ptrClassicFrameLayout = ListenRankChildFragment.this.mPtrClassicFrameLayout;
            ptrClassicFrameLayout.f4550do = (byte) 1;
            ptrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.expand.listen.fragment.ListenRankChildFragment$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends t5 {
        public Ctry() {
        }

        @Override // com.apk.t5
        /* renamed from: do */
        public void mo2572do(List<ListenDetail> list, boolean z, int i) {
            ListenRankChildFragment.this.l(false);
            if (i == 1) {
                ListenRankChildFragment.h(ListenRankChildFragment.this, true, list, z);
            } else {
                ListenRankChildFragment.h(ListenRankChildFragment.this, false, list, z);
            }
        }

        @Override // com.apk.t5
        /* renamed from: try */
        public void mo2576try() {
            ListenRankChildFragment.this.l(false);
            ListenRankAdapter listenRankAdapter = ListenRankChildFragment.this.f9401if;
            if (listenRankAdapter != null) {
                listenRankAdapter.loadMoreFail();
                ListenRankChildFragment listenRankChildFragment = ListenRankChildFragment.this;
                if (listenRankChildFragment.f9399for == 1) {
                    listenRankChildFragment.f9401if.setNewData(null);
                }
            }
        }
    }

    public static void a(ListenRankChildFragment listenRankChildFragment) {
        if (listenRankChildFragment != null) {
            try {
                listenRankChildFragment.f9399for = 1;
                listenRankChildFragment.j(q0.f3779this[!listenRankChildFragment.f9396case ? 1 : 0], listenRankChildFragment.f9404try, listenRankChildFragment.f9402new, 1);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void f(ListenRankChildFragment listenRankChildFragment) {
        if (listenRankChildFragment != null) {
            try {
                listenRankChildFragment.j(q0.f3779this[listenRankChildFragment.f9396case ? (char) 0 : (char) 1], listenRankChildFragment.f9404try, listenRankChildFragment.f9402new, listenRankChildFragment.f9399for);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void h(ListenRankChildFragment listenRankChildFragment, boolean z, List list, boolean z2) {
        if (listenRankChildFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                listenRankChildFragment.f9401if.setNewData(list);
                if (z2) {
                    listenRankChildFragment.f9401if.setEnableLoadMore(true);
                    listenRankChildFragment.f9399for++;
                    return;
                }
                listenRankChildFragment.f9401if.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                listenRankChildFragment.f9401if.addData((Collection) list);
            }
            if (z2) {
                listenRankChildFragment.f9401if.loadMoreComplete();
                listenRankChildFragment.f9399for++;
                return;
            }
            listenRankChildFragment.f9401if.loadMoreEnd();
            return;
        }
        throw null;
    }

    public static ListenRankChildFragment k(String str, String str2) {
        ListenRankChildFragment listenRankChildFragment = new ListenRankChildFragment();
        Bundle bundle = new Bundle();
        bundle.putString("week", str);
        bundle.putString("sourceType", str2);
        listenRankChildFragment.setArguments(bundle);
        return listenRankChildFragment;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_listen_store_rank_child;
    }

    public void i(boolean z) {
        if (this.mRecyclerView == null || this.f9401if == null) {
            return;
        }
        if (z) {
            this.f9403this.mo2572do(new ArrayList(), true, 1);
        }
        this.mPtrClassicFrameLayout.f4550do = (byte) 1;
        l(true);
    }

    @Override // com.apk.g6
    public void initData() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f9402new = arguments.getString("week");
            this.f9398else = arguments.getString("sourceType");
        }
        this.f9400goto = new q3(getSupportActivity(), this.f9403this);
        try {
            if (this.f9397do != null && this.f9397do.getItemCount() > 0) {
                if (!TextUtils.isEmpty(null)) {
                    int itemCount = this.f9397do.getItemCount();
                    for (int i = 0; i < itemCount; i++) {
                        RankListBean item = this.f9397do.getItem(i);
                        if (item != null) {
                            item.getTitle();
                            throw null;
                        }
                    }
                } else {
                    RankListBean item2 = this.f9397do.getItem(0);
                    if (item2 != null) {
                        this.f9404try = item2.getId();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        ListenRankAdapter listenRankAdapter = new ListenRankAdapter(getSupportActivity());
        this.f9401if = listenRankAdapter;
        this.mRecyclerView.setAdapter(listenRankAdapter);
        this.f9401if.setOnItemClickListener(this);
        this.f9401if.setOnLoadMoreListener(new Cfor(), this.mRecyclerView);
        l(true);
    }

    @Override // com.apk.g6
    public void initView() {
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.fragment_rank_category_recyclerview);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(recyclerView);
        LeftCategoryAdapter leftCategoryAdapter = new LeftCategoryAdapter(q0.m2100if());
        this.f9397do = leftCategoryAdapter;
        recyclerView.setAdapter(leftCategoryAdapter);
        this.f9397do.setOnItemClickListener(new Cdo());
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.mRecyclerView);
        this.mPtrClassicFrameLayout.setPtrHandler(new Cif());
    }

    public final void j(String str, String str2, String str3, int i) {
        q3 q3Var = this.f9400goto;
        if (q3Var != null) {
            if (q3Var == null) {
                throw null;
            }
            new b1().m141do(new s3(q3Var, str, str2, str3, i));
        }
    }

    public final void l(boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Cnew());
                return;
            }
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = this.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.m2532break();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ListenDetail item = this.f9401if.getItem(i);
            if (item != null) {
                eg.d(getSupportActivity(), this.f9398else, eg.m589const(), item);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
