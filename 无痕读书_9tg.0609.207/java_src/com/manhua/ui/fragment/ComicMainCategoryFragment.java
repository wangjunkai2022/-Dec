package com.manhua.ui.fragment;

import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.b40;
import com.apk.eg;
import com.apk.g6;
import com.apk.lq0;
import com.apk.nt;
import com.apk.nz;
import com.apk.ot;
import com.apk.q0;
import com.apk.r5;
import com.apk.ss;
import com.apk.tr0;
import com.apk.ts;
import com.apk.w;
import com.apk.z2;
import com.apk.ze;
import com.biquge.ebook.app.adapter.LeftCategoryAdapter;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.RankListBean;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.google.gson.internal.bind.TypeAdapters;
import com.manhua.adapter.ComicParentCategoryAdapter;
import com.manhua.adapter.ComicRankListAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicCategory;
import com.manhua.ui.activity.ComicDetailActivity;
import com.manhua.ui.activity.ComicListCategoryActivity;
import com.manhua.ui.fragment.ComicMainCategoryFragment;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class ComicMainCategoryFragment extends g6 {

    /* renamed from: while  reason: not valid java name */
    public static final String[] f9961while = {"week", TypeAdapters.AnonymousClass27.MONTH, "total"};

    /* renamed from: break  reason: not valid java name */
    public LeftCategoryAdapter f9962break;

    /* renamed from: catch  reason: not valid java name */
    public ComicRankListAdapter f9964catch;
    @BindView(R.id.fragment_category_recyclerview)
    public RecyclerView categoryRecyclerView;

    /* renamed from: class  reason: not valid java name */
    public JSONObject f9965class;

    /* renamed from: const  reason: not valid java name */
    public boolean f9966const;
    @BindView(R.id.rv_list)
    public RecyclerView dataRecyclerView;

    /* renamed from: else  reason: not valid java name */
    public String f9968else;

    /* renamed from: for  reason: not valid java name */
    public int f9970for;

    /* renamed from: goto  reason: not valid java name */
    public String f9971goto;

    /* renamed from: if  reason: not valid java name */
    public z2 f9972if;
    @BindView(R.id.header_ranking_area_indicator)
    public ScrollIndicatorView mAreaIView;
    @BindView(R.id.category_sex_indicatorview)
    public ScrollIndicatorView mSexIView;

    /* renamed from: new  reason: not valid java name */
    public int f9973new;
    @BindView(R.id.parent_category_layout)
    public FrameLayout parentCategoryLayout;
    @BindView(R.id.parent_category_rv_list)
    public RecyclerView parentCategoryRecyclerView;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout ptrClassicFrameLayout;

    /* renamed from: this  reason: not valid java name */
    public ComicParentCategoryAdapter f9975this;
    @BindView(R.id.time_choose)
    public TextView time_choose;

    /* renamed from: do  reason: not valid java name */
    public final String[] f9967do = q0.m2102try();

    /* renamed from: try  reason: not valid java name */
    public int f9977try = 1;

    /* renamed from: case  reason: not valid java name */
    public String f9963case = "week";

    /* renamed from: final  reason: not valid java name */
    public final r5 f9969final = new Ccase();

    /* renamed from: super  reason: not valid java name */
    public final b40.Cnew f9974super = new Cgoto();

    /* renamed from: throw  reason: not valid java name */
    public final nt.Cdo f9976throw = new Cthis();

    /* renamed from: com.manhua.ui.fragment.ComicMainCategoryFragment$break  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cbreak extends GridLayoutManager.SpanSizeLookup {

        /* renamed from: do  reason: not valid java name */
        public ComicParentCategoryAdapter f9978do;

        public Cbreak(ComicParentCategoryAdapter comicParentCategoryAdapter, Cdo cdo) {
            this.f9978do = comicParentCategoryAdapter;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int i) {
            return this.f9978do.getItemViewType(i) == 1 ? 1 : 2;
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicMainCategoryFragment$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends r5 {
        public Ccase() {
        }

        @Override // com.apk.r5
        /* renamed from: case */
        public void mo2229case(List<ComicCategory> list) {
            ComicParentCategoryAdapter comicParentCategoryAdapter = ComicMainCategoryFragment.this.f9975this;
            if (comicParentCategoryAdapter != null) {
                comicParentCategoryAdapter.setNewData(list);
            }
        }

        @Override // com.apk.r5
        /* renamed from: new */
        public void mo2239new(List<ComicBean> list, boolean z, int i) {
            ComicMainCategoryFragment.this.n(false);
            if (i == 1) {
                if (ComicMainCategoryFragment.this.f9966const && list != null && list.size() > 0) {
                    ComicBean comicBean = new ComicBean();
                    comicBean.setItemType(2);
                    if (list.size() < 3) {
                        list.add(comicBean);
                    } else {
                        list.add(2, comicBean);
                    }
                }
                ComicMainCategoryFragment.f(ComicMainCategoryFragment.this, true, list, z, i);
                return;
            }
            ComicMainCategoryFragment.f(ComicMainCategoryFragment.this, false, list, z, i);
        }

        @Override // com.apk.r5
        /* renamed from: throw */
        public void mo2242throw() {
            ComicMainCategoryFragment.this.n(false);
            ComicRankListAdapter comicRankListAdapter = ComicMainCategoryFragment.this.f9964catch;
            if (comicRankListAdapter != null) {
                comicRankListAdapter.loadMoreFail();
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicMainCategoryFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemClickListener {
        public Cdo() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            ComicMainCategoryFragment.this.l(i);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicMainCategoryFragment$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements Runnable {
        public Celse() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrClassicFrameLayout ptrClassicFrameLayout = ComicMainCategoryFragment.this.ptrClassicFrameLayout;
            ptrClassicFrameLayout.f4550do = (byte) 1;
            ptrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicMainCategoryFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements BaseQuickAdapter.OnItemClickListener {
        public Cfor() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            try {
                ComicBean comicBean = (ComicBean) ComicMainCategoryFragment.this.f9964catch.getItem(i);
                if (comicBean != null) {
                    ComicDetailActivity.n(ComicMainCategoryFragment.this.getSupportActivity(), comicBean);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicMainCategoryFragment$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto implements b40.Cnew {
        public Cgoto() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            ComicMainCategoryFragment comicMainCategoryFragment = ComicMainCategoryFragment.this;
            comicMainCategoryFragment.f9968else = q0.f3779this[comicMainCategoryFragment.mSexIView.getCurrentItem()];
            ComicMainCategoryFragment comicMainCategoryFragment2 = ComicMainCategoryFragment.this;
            comicMainCategoryFragment2.f9971goto = q0.f3772catch[comicMainCategoryFragment2.mAreaIView.getCurrentItem()];
            ComicMainCategoryFragment.this.n(true);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicMainCategoryFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.OnItemClickListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            ComicCategory comicCategory = (ComicCategory) ComicMainCategoryFragment.this.f9975this.getItem(i);
            if (comicCategory == null || comicCategory.getItemType() != 1) {
                return;
            }
            ComicListCategoryActivity.i(ComicMainCategoryFragment.this.getSupportActivity(), (ComicCategory) ComicMainCategoryFragment.this.f9975this.getItem(i));
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicMainCategoryFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cnew() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            ComicMainCategoryFragment.h(ComicMainCategoryFragment.this);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicMainCategoryFragment$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthis implements nt.Cdo {
        public Cthis() {
        }

        @Override // com.apk.nt.Cdo
        public void onDismiss() {
        }

        @Override // com.apk.nt.Cdo
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ComicMainCategoryFragment comicMainCategoryFragment = ComicMainCategoryFragment.this;
            comicMainCategoryFragment.f9973new = i;
            comicMainCategoryFragment.f9963case = ComicMainCategoryFragment.f9961while[i];
            comicMainCategoryFragment.time_choose.setText(comicMainCategoryFragment.f9967do[i]);
            ComicMainCategoryFragment.this.n(true);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicMainCategoryFragment$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements ts {
        public Ctry() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            try {
                ComicMainCategoryFragment.this.f9977try = 1;
                RankListBean item = ComicMainCategoryFragment.this.f9962break.getItem(ComicMainCategoryFragment.this.f9970for);
                if (item == null || ComicMainCategoryFragment.this.f9972if == null) {
                    return;
                }
                ComicMainCategoryFragment.this.f9972if.m3142public(w.m2860this(ComicMainCategoryFragment.this.f9968else, item.getId(), ComicMainCategoryFragment.this.f9963case, ComicMainCategoryFragment.this.f9971goto, ComicMainCategoryFragment.this.f9977try), ComicMainCategoryFragment.this.f9977try);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(ComicMainCategoryFragment.this.dataRecyclerView);
        }
    }

    public static void f(ComicMainCategoryFragment comicMainCategoryFragment, boolean z, List list, boolean z2, int i) {
        if (comicMainCategoryFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                comicMainCategoryFragment.f9964catch.setNewData(list);
                if (z2) {
                    comicMainCategoryFragment.f9964catch.setEnableLoadMore(true);
                    comicMainCategoryFragment.f9977try = i + 1;
                    return;
                }
                comicMainCategoryFragment.f9964catch.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                comicMainCategoryFragment.f9964catch.addData((Collection) list);
            }
            if (z2) {
                comicMainCategoryFragment.f9964catch.loadMoreComplete();
                comicMainCategoryFragment.f9977try = i + 1;
                return;
            }
            comicMainCategoryFragment.f9964catch.loadMoreEnd();
            return;
        }
        throw null;
    }

    public static void h(ComicMainCategoryFragment comicMainCategoryFragment) {
        if (comicMainCategoryFragment != null) {
            try {
                RankListBean item = comicMainCategoryFragment.f9962break.getItem(comicMainCategoryFragment.f9970for);
                if (item == null || comicMainCategoryFragment.f9972if == null) {
                    return;
                }
                comicMainCategoryFragment.f9972if.m3142public(w.m2860this(comicMainCategoryFragment.f9968else, item.getId(), comicMainCategoryFragment.f9963case, comicMainCategoryFragment.f9971goto, comicMainCategoryFragment.f9977try), comicMainCategoryFragment.f9977try);
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
        return R.layout.fragment_main_comic_category;
    }

    public final ot i(String str, int i) {
        ot otVar = new ot();
        otVar.f3498if = str;
        otVar.f3497for = lq0.m1660do(AppContext.f6392case, tr0.m2617do(R.color.color_333333));
        otVar.f3499new = this.f9973new == i;
        return otVar;
    }

    @Override // com.apk.g6
    public void initData() {
        this.f9972if = new z2(getSupportActivity(), this.f9969final);
        this.parentCategoryLayout.post(new Runnable() { // from class: com.apk.j10
            @Override // java.lang.Runnable
            public final void run() {
                ComicMainCategoryFragment.this.j();
            }
        });
        k();
    }

    @Override // com.apk.g6
    public void initView() {
        if (Cfinally.m797else().b()) {
            this.f9965class = Cfinally.m797else().c;
            this.f9966const = true;
        }
        this.categoryRecyclerView.setHasFixedSize(true);
        this.categoryRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.categoryRecyclerView);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new RankListBean("all", ze.q(R.string.rank_category_all)));
        arrayList.add(new RankListBean("hot", ze.q(R.string.rank_category_hot)));
        arrayList.add(new RankListBean("over", ze.q(R.string.rank_category_finish)));
        arrayList.add(new RankListBean("commend", ze.q(R.string.rank_category_recommend)));
        arrayList.add(new RankListBean("new", ze.q(R.string.rank_category_new)));
        arrayList.add(new RankListBean("vote", ze.q(R.string.rank_category_grade)));
        arrayList.add(new RankListBean("collect", ze.q(R.string.rank_category_collect)));
        LeftCategoryAdapter leftCategoryAdapter = new LeftCategoryAdapter(arrayList);
        this.f9962break = leftCategoryAdapter;
        this.categoryRecyclerView.setAdapter(leftCategoryAdapter);
        this.f9962break.setOnItemClickListener(new Cdo());
        GridLayoutManager gridLayoutManager = new GridLayoutManager(getSupportActivity(), 2);
        this.parentCategoryRecyclerView.setLayoutManager(gridLayoutManager);
        this.parentCategoryRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.parentCategoryRecyclerView);
        ComicParentCategoryAdapter comicParentCategoryAdapter = new ComicParentCategoryAdapter();
        this.f9975this = comicParentCategoryAdapter;
        gridLayoutManager.setSpanSizeLookup(new Cbreak(comicParentCategoryAdapter, null));
        this.parentCategoryRecyclerView.setAdapter(this.f9975this);
        this.f9975this.setOnItemClickListener(new Cif());
        this.dataRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        this.dataRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.dataRecyclerView);
        ComicRankListAdapter comicRankListAdapter = new ComicRankListAdapter(getSupportActivity(), this.f9965class, "topweek", false, false);
        this.f9964catch = comicRankListAdapter;
        this.dataRecyclerView.setAdapter(comicRankListAdapter);
        this.f9964catch.setOnItemClickListener(new Cfor());
        this.f9964catch.setOnLoadMoreListener(new Cnew(), this.dataRecyclerView);
        int m587catch = eg.m587catch(60.0f);
        int m614switch = eg.m614switch() / q0.f3770break.length;
        if (m614switch > m587catch && m614switch < eg.m587catch(75.0f)) {
            m587catch = m614switch;
        }
        this.mSexIView.setSplitAuto(false);
        this.f9968else = q0.f3779this[0];
        m(this.mSexIView, q0.f3776goto, this.f9974super, m587catch);
        this.mAreaIView.setSplitAuto(false);
        this.f9971goto = q0.f3772catch[0];
        m(this.mAreaIView, q0.f3770break, this.f9974super, m587catch);
        this.ptrClassicFrameLayout.setPtrHandler(new Ctry());
    }

    public /* synthetic */ void j() {
        l(1);
    }

    public final void k() {
        z2 z2Var;
        ComicParentCategoryAdapter comicParentCategoryAdapter = this.f9975this;
        if (comicParentCategoryAdapter != null && comicParentCategoryAdapter.getItemCount() == 0 && (z2Var = this.f9972if) != null) {
            z2Var.m3145while(true, true);
        }
        if (this.parentCategoryLayout.getVisibility() != 0) {
            this.parentCategoryLayout.setVisibility(0);
        }
    }

    public final void l(int i) {
        try {
            if (i == 0) {
                k();
            } else {
                this.f9970for = i;
                LeftCategoryAdapter leftCategoryAdapter = this.f9962break;
                leftCategoryAdapter.f6356do = i;
                leftCategoryAdapter.notifyDataSetChanged();
                this.f9973new = 0;
                this.f9963case = f9961while[0];
                this.time_choose.setText(this.f9967do[0]);
                n(true);
                if (this.parentCategoryLayout.getVisibility() != 8) {
                    this.parentCategoryLayout.setVisibility(8);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f9970for = i;
        LeftCategoryAdapter leftCategoryAdapter2 = this.f9962break;
        leftCategoryAdapter2.f6356do = i;
        leftCategoryAdapter2.notifyDataSetChanged();
    }

    public final void m(ScrollIndicatorView scrollIndicatorView, String[] strArr, b40.Cnew cnew, int i) {
        if (strArr != null && strArr.length > 0) {
            scrollIndicatorView.setAdapter(new nz(getSupportActivity(), strArr, i));
            ze.u(getSupportActivity(), scrollIndicatorView, 25, 14);
            scrollIndicatorView.setOnItemSelectListener(cnew);
            return;
        }
        scrollIndicatorView.setVisibility(8);
    }

    public final void n(boolean z) {
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

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ComicRankListAdapter comicRankListAdapter = this.f9964catch;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3616do();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        ComicRankListAdapter comicRankListAdapter = this.f9964catch;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3618if();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ComicRankListAdapter comicRankListAdapter = this.f9964catch;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3617for();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            ComicRankListAdapter comicRankListAdapter = this.f9964catch;
            if (comicRankListAdapter != null) {
                comicRankListAdapter.m3617for();
                return;
            }
            return;
        }
        ComicRankListAdapter comicRankListAdapter2 = this.f9964catch;
        if (comicRankListAdapter2 != null) {
            comicRankListAdapter2.m3618if();
        }
    }
}
