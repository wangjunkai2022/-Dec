package com.manhua.ui.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.eg;
import com.apk.g6;
import com.apk.r5;
import com.apk.ss;
import com.apk.ts;
import com.apk.w;
import com.apk.z2;
import com.apk.ze;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.adapter.ComicRankListAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicDetailActivity;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class ComicCategoryFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public ComicRankListAdapter f9884case;

    /* renamed from: do  reason: not valid java name */
    public String f9885do;

    /* renamed from: for  reason: not valid java name */
    public boolean f9887for;

    /* renamed from: if  reason: not valid java name */
    public String f9888if;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: try  reason: not valid java name */
    public z2 f9890try;

    /* renamed from: new  reason: not valid java name */
    public int f9889new = 1;

    /* renamed from: else  reason: not valid java name */
    public final r5 f9886else = new Cnew();

    /* renamed from: com.manhua.ui.fragment.ComicCategoryFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            ComicCategoryFragment comicCategoryFragment = ComicCategoryFragment.this;
            if (comicCategoryFragment.f9890try != null) {
                comicCategoryFragment.f9889new = 1;
                comicCategoryFragment.f9890try.m3142public(w.m2853new(comicCategoryFragment.f9885do, comicCategoryFragment.f9888if, 1), comicCategoryFragment.f9889new);
            }
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(ComicCategoryFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicCategoryFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComicCategoryFragment.this.mPtrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicCategoryFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            ComicCategoryFragment comicCategoryFragment = ComicCategoryFragment.this;
            if (comicCategoryFragment.f9890try != null) {
                comicCategoryFragment.f9890try.m3142public(w.m2853new(comicCategoryFragment.f9885do, comicCategoryFragment.f9888if, comicCategoryFragment.f9889new), comicCategoryFragment.f9889new);
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicCategoryFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends r5 {
        public Cnew() {
        }

        @Override // com.apk.r5
        /* renamed from: new */
        public void mo2239new(List<ComicBean> list, boolean z, int i) {
            ComicCategoryFragment.this.h(false);
            if (i == 1) {
                if (ComicCategoryFragment.this.f9887for && list != null && list.size() > 0) {
                    ComicBean comicBean = new ComicBean();
                    comicBean.setItemType(2);
                    if (list.size() > 3) {
                        list.add(3, comicBean);
                    } else {
                        list.add(comicBean);
                    }
                }
                ComicCategoryFragment.a(ComicCategoryFragment.this, true, list, z, i);
                return;
            }
            ComicCategoryFragment.a(ComicCategoryFragment.this, false, list, z, i);
        }
    }

    public static void a(ComicCategoryFragment comicCategoryFragment, boolean z, List list, boolean z2, int i) {
        if (comicCategoryFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                comicCategoryFragment.f9884case.setNewData(list);
                if (list == null) {
                    comicCategoryFragment.f9884case.loadMoreFail();
                    return;
                } else if (z2) {
                    comicCategoryFragment.f9884case.setEnableLoadMore(true);
                    comicCategoryFragment.f9889new = i + 1;
                    return;
                } else {
                    comicCategoryFragment.f9884case.setEnableLoadMore(false);
                    return;
                }
            }
            if (size > 0) {
                comicCategoryFragment.f9884case.addData((Collection) list);
            }
            if (list == null) {
                comicCategoryFragment.f9884case.loadMoreFail();
                return;
            } else if (z2) {
                comicCategoryFragment.f9884case.loadMoreComplete();
                comicCategoryFragment.f9889new = i + 1;
                return;
            } else {
                comicCategoryFragment.f9884case.loadMoreEnd();
                return;
            }
        }
        throw null;
    }

    public static ComicCategoryFragment f(String str, String str2) {
        ComicCategoryFragment comicCategoryFragment = new ComicCategoryFragment();
        Bundle bundle = new Bundle();
        bundle.putString("categoryId", str);
        bundle.putString("type", str2);
        comicCategoryFragment.setArguments(bundle);
        return comicCategoryFragment;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.comic_fragment_category;
    }

    public final void h(boolean z) {
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

    @Override // com.apk.g6
    public void initData() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f9885do = arguments.getString("categoryId");
            this.f9888if = arguments.getString("type");
        }
        JSONObject jSONObject = null;
        if (Cfinally.m797else().m818public()) {
            this.f9887for = true;
            jSONObject = Cfinally.m797else().h;
        }
        ComicRankListAdapter comicRankListAdapter = new ComicRankListAdapter(getSupportActivity(), jSONObject, "categorylist", true, true);
        this.f9884case = comicRankListAdapter;
        this.mRecyclerView.setAdapter(comicRankListAdapter);
        this.f9884case.setOnLoadMoreListener(new Cif(), this.mRecyclerView);
        this.f9884case.setOnItemClickListener(this);
        this.f9890try = new z2(getSupportActivity(), this.f9886else);
        h(true);
    }

    @Override // com.apk.g6
    public void initView() {
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.mRecyclerView);
        ze.m3177new(getSupportActivity(), this.mRecyclerView);
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ComicRankListAdapter comicRankListAdapter = this.f9884case;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3616do();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ComicBean comicBean = (ComicBean) this.f9884case.getItem(i);
        if (comicBean == null || comicBean.getItemType() != 1) {
            return;
        }
        Intent intent = new Intent(getSupportActivity(), ComicDetailActivity.class);
        intent.putExtra("book", comicBean);
        startActivity(intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        ComicRankListAdapter comicRankListAdapter = this.f9884case;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3618if();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ComicRankListAdapter comicRankListAdapter = this.f9884case;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3617for();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            ComicRankListAdapter comicRankListAdapter = this.f9884case;
            if (comicRankListAdapter != null) {
                comicRankListAdapter.m3617for();
                return;
            }
            return;
        }
        ComicRankListAdapter comicRankListAdapter2 = this.f9884case;
        if (comicRankListAdapter2 != null) {
            comicRankListAdapter2.m3618if();
        }
    }
}
