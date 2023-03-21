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
import com.google.gson.internal.bind.TypeAdapters;
import com.manhua.adapter.ComicRankListAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicDetailActivity;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class ComicRankBookFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public z2 f10038case;

    /* renamed from: do  reason: not valid java name */
    public ComicRankListAdapter f10039do;

    /* renamed from: else  reason: not valid java name */
    public JSONObject f10040else;

    /* renamed from: for  reason: not valid java name */
    public String f10041for;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public String f10044new;

    /* renamed from: try  reason: not valid java name */
    public String f10045try;

    /* renamed from: if  reason: not valid java name */
    public int f10043if = 1;

    /* renamed from: goto  reason: not valid java name */
    public final r5 f10042goto = new Cnew();

    /* renamed from: com.manhua.ui.fragment.ComicRankBookFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            ComicRankBookFragment.m3629synchronized(ComicRankBookFragment.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(ComicRankBookFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicRankBookFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComicRankBookFragment.this.mPtrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicRankBookFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            ComicRankBookFragment.a(ComicRankBookFragment.this);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicRankBookFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends r5 {
        public Cnew() {
        }

        @Override // com.apk.r5
        /* renamed from: new */
        public void mo2239new(List<ComicBean> list, boolean z, int i) {
            ComicRankBookFragment.this.j(false);
            if (i == 1) {
                if (ComicRankBookFragment.this.f10040else != null && list != null && list.size() > 0) {
                    ComicBean comicBean = new ComicBean();
                    comicBean.setItemType(2);
                    if ("week".equals(ComicRankBookFragment.this.f10045try)) {
                        if (list.size() < 3) {
                            list.add(comicBean);
                        } else {
                            list.add(2, comicBean);
                        }
                    } else if (TypeAdapters.AnonymousClass27.MONTH.equals(ComicRankBookFragment.this.f10045try)) {
                        list.add(0, comicBean);
                    } else if ("total".equals(ComicRankBookFragment.this.f10045try)) {
                        if (list.size() > 0) {
                            list.add(1, comicBean);
                        } else {
                            list.add(comicBean);
                        }
                    }
                }
                ComicRankBookFragment.h(ComicRankBookFragment.this, true, list, z, i);
                return;
            }
            ComicRankBookFragment.h(ComicRankBookFragment.this, false, list, z, i);
        }

        @Override // com.apk.r5
        /* renamed from: throw */
        public void mo2242throw() {
            ComicRankBookFragment.this.j(false);
            ComicRankListAdapter comicRankListAdapter = ComicRankBookFragment.this.f10039do;
            if (comicRankListAdapter != null) {
                comicRankListAdapter.loadMoreFail();
            }
        }
    }

    public static void a(ComicRankBookFragment comicRankBookFragment) {
        if (comicRankBookFragment != null) {
            try {
                if (comicRankBookFragment.f10038case != null) {
                    comicRankBookFragment.f10038case.m3142public(w.m2860this(comicRankBookFragment.f10041for, comicRankBookFragment.f10044new, comicRankBookFragment.f10045try, "area/all", comicRankBookFragment.f10043if), comicRankBookFragment.f10043if);
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

    public static void h(ComicRankBookFragment comicRankBookFragment, boolean z, List list, boolean z2, int i) {
        if (comicRankBookFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                comicRankBookFragment.f10039do.setNewData(list);
                if (z2) {
                    comicRankBookFragment.f10039do.setEnableLoadMore(true);
                    comicRankBookFragment.f10043if = i + 1;
                    return;
                }
                comicRankBookFragment.f10039do.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                comicRankBookFragment.f10039do.addData((Collection) list);
            }
            if (z2) {
                comicRankBookFragment.f10039do.loadMoreComplete();
                comicRankBookFragment.f10043if = i + 1;
                return;
            }
            comicRankBookFragment.f10039do.loadMoreEnd();
            return;
        }
        throw null;
    }

    public static ComicRankBookFragment i(String str, String str2, String str3) {
        ComicRankBookFragment comicRankBookFragment = new ComicRankBookFragment();
        Bundle bundle = new Bundle();
        bundle.putString("sex", str);
        bundle.putString("category", str2);
        bundle.putString("week", str3);
        comicRankBookFragment.setArguments(bundle);
        return comicRankBookFragment;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3629synchronized(ComicRankBookFragment comicRankBookFragment) {
        if (comicRankBookFragment != null) {
            try {
                if (comicRankBookFragment.f10038case != null) {
                    comicRankBookFragment.f10043if = 1;
                    comicRankBookFragment.f10038case.m3142public(w.m2860this(comicRankBookFragment.f10041for, comicRankBookFragment.f10044new, comicRankBookFragment.f10045try, "area/all", 1), comicRankBookFragment.f10043if);
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
        return R.layout.comic_fragment_booklist;
    }

    @Override // com.apk.g6
    public void initData() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f10041for = arguments.getString("sex");
            this.f10044new = arguments.getString("category");
            this.f10045try = arguments.getString("week");
        }
        this.f10038case = new z2(getSupportActivity(), this.f10042goto);
        String str = null;
        if ("week".equals(this.f10045try) && Cfinally.m797else().b()) {
            this.f10040else = Cfinally.m797else().c;
            str = "topweek";
        } else if (TypeAdapters.AnonymousClass27.MONTH.equals(this.f10045try) && Cfinally.m797else().m809finally()) {
            this.f10040else = Cfinally.m797else().d;
            str = "topmonth";
        } else if ("total".equals(this.f10045try) && Cfinally.m797else().a()) {
            this.f10040else = Cfinally.m797else().e;
            str = "toptotal";
        }
        ComicRankListAdapter comicRankListAdapter = new ComicRankListAdapter(getSupportActivity(), this.f10040else, str, true, true);
        this.f10039do = comicRankListAdapter;
        this.mRecyclerView.setAdapter(comicRankListAdapter);
        this.f10039do.setOnItemClickListener(this);
        this.f10039do.setOnLoadMoreListener(new Cif(), this.mRecyclerView);
        j(true);
    }

    @Override // com.apk.g6
    public void initView() {
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.mRecyclerView);
        ze.m3177new(getSupportActivity(), this.mRecyclerView);
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
        ComicRankListAdapter comicRankListAdapter = this.f10039do;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3616do();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ComicBean comicBean = (ComicBean) this.f10039do.getItem(i);
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

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        ComicRankListAdapter comicRankListAdapter = this.f10039do;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3618if();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ComicRankListAdapter comicRankListAdapter = this.f10039do;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3617for();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            ComicRankListAdapter comicRankListAdapter = this.f10039do;
            if (comicRankListAdapter != null) {
                comicRankListAdapter.m3617for();
                return;
            }
            return;
        }
        ComicRankListAdapter comicRankListAdapter2 = this.f10039do;
        if (comicRankListAdapter2 != null) {
            comicRankListAdapter2.m3618if();
        }
    }
}
