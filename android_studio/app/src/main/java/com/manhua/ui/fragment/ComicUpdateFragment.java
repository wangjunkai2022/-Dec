package com.manhua.ui.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.dg;
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
public class ComicUpdateFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public ComicRankListAdapter f10093do;

    /* renamed from: for  reason: not valid java name */
    public String f10094for;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.comic_update_recyclerview)
    public RecyclerView mRecyclerView;

    /* renamed from: try  reason: not valid java name */
    public z2 f10097try;

    /* renamed from: if  reason: not valid java name */
    public int f10095if = 1;

    /* renamed from: new  reason: not valid java name */
    public JSONObject f10096new = null;

    /* renamed from: case  reason: not valid java name */
    public final r5 f10092case = new Cnew();

    /* renamed from: com.manhua.ui.fragment.ComicUpdateFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            ComicUpdateFragment.m3631synchronized(ComicUpdateFragment.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(ComicUpdateFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicUpdateFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComicUpdateFragment.this.mPtrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicUpdateFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            ComicUpdateFragment.a(ComicUpdateFragment.this);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicUpdateFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends r5 {
        public Cnew() {
        }

        @Override // com.apk.r5
        /* renamed from: new */
        public void mo2239new(List<ComicBean> list, boolean z, int i) {
            ComicUpdateFragment.this.i(false);
            if (i == 1) {
                if (ComicUpdateFragment.this.f10096new != null && list != null && list.size() > 0) {
                    int nextInt = dg.f857do.nextInt(3);
                    ComicBean comicBean = new ComicBean();
                    comicBean.setItemType(2);
                    if (list.size() > nextInt) {
                        list.add(nextInt, comicBean);
                    } else {
                        list.add(comicBean);
                    }
                }
                ComicUpdateFragment.h(ComicUpdateFragment.this, true, list, z, i);
                return;
            }
            ComicUpdateFragment.h(ComicUpdateFragment.this, false, list, z, i);
        }

        @Override // com.apk.r5
        /* renamed from: throw */
        public void mo2242throw() {
            ComicUpdateFragment.this.i(false);
            ComicRankListAdapter comicRankListAdapter = ComicUpdateFragment.this.f10093do;
            if (comicRankListAdapter != null) {
                comicRankListAdapter.loadMoreFail();
            }
        }
    }

    public static void a(ComicUpdateFragment comicUpdateFragment) {
        if (comicUpdateFragment != null) {
            try {
                if (comicUpdateFragment.f10097try != null) {
                    comicUpdateFragment.f10097try.m3142public(w.m2837break(comicUpdateFragment.f10094for, comicUpdateFragment.f10095if), comicUpdateFragment.f10095if);
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

    public static void h(ComicUpdateFragment comicUpdateFragment, boolean z, List list, boolean z2, int i) {
        if (comicUpdateFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                comicUpdateFragment.f10093do.setNewData(list);
                if (z2) {
                    comicUpdateFragment.f10093do.setEnableLoadMore(true);
                    comicUpdateFragment.f10095if = i + 1;
                    return;
                }
                comicUpdateFragment.f10093do.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                comicUpdateFragment.f10093do.addData((Collection) list);
            }
            if (z2) {
                comicUpdateFragment.f10093do.loadMoreComplete();
                comicUpdateFragment.f10095if = i + 1;
                return;
            }
            comicUpdateFragment.f10093do.loadMoreEnd();
            return;
        }
        throw null;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3631synchronized(ComicUpdateFragment comicUpdateFragment) {
        if (comicUpdateFragment != null) {
            try {
                if (comicUpdateFragment.f10097try != null) {
                    comicUpdateFragment.f10095if = 1;
                    comicUpdateFragment.f10097try.m3142public(w.m2837break(comicUpdateFragment.f10094for, 1), comicUpdateFragment.f10095if);
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
        return R.layout.comic_update_fragment;
    }

    public final void i(boolean z) {
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
        this.f10097try = new z2(getSupportActivity(), this.f10092case);
        if (Cfinally.m797else().m818public()) {
            this.f10096new = Cfinally.m797else().h;
        }
        ComicRankListAdapter comicRankListAdapter = new ComicRankListAdapter(getSupportActivity(), this.f10096new, "categorylist", false, true);
        this.f10093do = comicRankListAdapter;
        this.mRecyclerView.setAdapter(comicRankListAdapter);
        this.f10093do.setOnItemClickListener(this);
        this.f10093do.setOnLoadMoreListener(new Cif(), this.mRecyclerView);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f10094for = arguments.getString("UPDATE_DATE_KEY");
        }
        i(true);
    }

    @Override // com.apk.g6
    public void initView() {
        ze.m3165else(this.mRecyclerView);
        ze.m3177new(getSupportActivity(), this.mRecyclerView);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        this.mRecyclerView.setHasFixedSize(true);
        this.mPtrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ComicBean comicBean = (ComicBean) this.f10093do.getItem(i);
            if (comicBean == null || comicBean.getItemType() != 1) {
                return;
            }
            Intent intent = new Intent(getSupportActivity(), ComicDetailActivity.class);
            intent.putExtra("book", comicBean);
            startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
