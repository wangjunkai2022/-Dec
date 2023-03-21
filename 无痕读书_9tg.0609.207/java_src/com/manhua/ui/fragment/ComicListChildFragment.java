package com.manhua.ui.fragment;

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
import com.apk.z2;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.adapter.ComicListAdapter;
import com.manhua.data.bean.ComicElement;
import com.manhua.ui.activity.ComicListDetailActivity;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class ComicListChildFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public ComicListAdapter f9938case;

    /* renamed from: do  reason: not valid java name */
    public z2 f9939do;

    /* renamed from: else  reason: not valid java name */
    public JSONObject f9940else;

    /* renamed from: for  reason: not valid java name */
    public boolean f9941for;

    /* renamed from: goto  reason: not valid java name */
    public ComicElement f9942goto;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: this  reason: not valid java name */
    public boolean f9945this;

    /* renamed from: try  reason: not valid java name */
    public String f9946try;

    /* renamed from: if  reason: not valid java name */
    public int f9943if = 1;

    /* renamed from: new  reason: not valid java name */
    public boolean f9944new = true;

    /* renamed from: break  reason: not valid java name */
    public final r5 f9937break = new Cnew();

    /* renamed from: com.manhua.ui.fragment.ComicListChildFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            ComicListChildFragment.m3624synchronized(ComicListChildFragment.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(ComicListChildFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicListChildFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComicListChildFragment.this.mPtrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicListChildFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            ComicListChildFragment.a(ComicListChildFragment.this);
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicListChildFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends r5 {
        public Cnew() {
        }

        @Override // com.apk.r5
        /* renamed from: break */
        public void mo2228break(List<ComicElement> list, boolean z, int i) {
            ComicListChildFragment.this.k(false);
            try {
                if (i == 1) {
                    ComicListChildFragment.h(ComicListChildFragment.this, true, list, z, i);
                } else {
                    ComicListChildFragment.h(ComicListChildFragment.this, false, list, z, i);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            ComicListChildFragment comicListChildFragment = ComicListChildFragment.this;
            comicListChildFragment.f9941for = true;
            comicListChildFragment.f9945this = false;
        }
    }

    public static void a(ComicListChildFragment comicListChildFragment) {
        if (comicListChildFragment != null) {
            try {
                if (comicListChildFragment.f9939do != null) {
                    comicListChildFragment.f9939do.m3141native(comicListChildFragment.f9944new, comicListChildFragment.f9946try, comicListChildFragment.f9943if, comicListChildFragment.f9945this);
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

    public static void h(ComicListChildFragment comicListChildFragment, boolean z, List list, boolean z2, int i) {
        if (comicListChildFragment != null) {
            int size = list == null ? 0 : list.size();
            if (!z) {
                if (size > 0) {
                    comicListChildFragment.f9938case.addData((Collection) list);
                }
                if (list == null) {
                    comicListChildFragment.f9938case.loadMoreFail();
                    return;
                } else if (z2) {
                    comicListChildFragment.f9938case.loadMoreComplete();
                    comicListChildFragment.f9943if++;
                    return;
                } else {
                    comicListChildFragment.f9938case.loadMoreEnd();
                    return;
                }
            }
            if (comicListChildFragment.f9942goto != null) {
                int nextInt = dg.f857do.nextInt(3);
                if (list != null && list.size() > 0) {
                    if (list.size() > nextInt) {
                        list.add(nextInt, comicListChildFragment.f9942goto);
                    } else {
                        list.add(comicListChildFragment.f9942goto);
                    }
                }
            }
            if (list == null) {
                comicListChildFragment.f9938case.loadMoreFail();
                return;
            }
            comicListChildFragment.f9938case.setNewData(list);
            if (z2) {
                comicListChildFragment.f9938case.setEnableLoadMore(true);
                comicListChildFragment.f9943if = i + 1;
                return;
            }
            comicListChildFragment.f9938case.setEnableLoadMore(false);
            return;
        }
        throw null;
    }

    public static ComicListChildFragment j(String str) {
        ComicListChildFragment comicListChildFragment = new ComicListChildFragment();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        comicListChildFragment.setArguments(bundle);
        return comicListChildFragment;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3624synchronized(ComicListChildFragment comicListChildFragment) {
        if (comicListChildFragment != null) {
            try {
                comicListChildFragment.f9943if = 1;
                if (comicListChildFragment.f9939do != null) {
                    comicListChildFragment.f9939do.m3141native(comicListChildFragment.f9944new, comicListChildFragment.f9946try, 1, comicListChildFragment.f9945this);
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

    public void i(boolean z) {
        this.f9945this = z;
        if (this.mRecyclerView == null || this.f9938case == null) {
            return;
        }
        this.mPtrClassicFrameLayout.f4550do = (byte) 1;
        k(true);
    }

    @Override // com.apk.g6
    public void initData() {
        String str;
        if ("new".equals(this.f9946try)) {
            if (Cfinally.m797else().m824synchronized()) {
                this.f9940else = Cfinally.m797else().b;
                ComicElement comicElement = new ComicElement();
                this.f9942goto = comicElement;
                comicElement.setItemType(3);
                str = "topicnew";
            }
            str = null;
        } else if ("hot".equals(this.f9946try)) {
            if (Cfinally.m797else().m812instanceof()) {
                this.f9940else = Cfinally.m797else().f1356instanceof;
                ComicElement comicElement2 = new ComicElement();
                this.f9942goto = comicElement2;
                comicElement2.setItemType(3);
                str = "topichot";
            }
            str = null;
        } else if ("collect".equals(this.f9946try)) {
            if (Cfinally.m797else().m828transient()) {
                this.f9940else = Cfinally.m797else().f1369synchronized;
                ComicElement comicElement3 = new ComicElement();
                this.f9942goto = comicElement3;
                comicElement3.setItemType(3);
                str = "topiccollect";
            }
            str = null;
        } else {
            if ("commend".equals(this.f9946try) && Cfinally.m797else().m810implements()) {
                this.f9940else = Cfinally.m797else().f11100a;
                ComicElement comicElement4 = new ComicElement();
                this.f9942goto = comicElement4;
                comicElement4.setItemType(3);
                str = "topicrecommend";
            }
            str = null;
        }
        ComicListAdapter comicListAdapter = new ComicListAdapter(getSupportActivity(), this.f9940else, str);
        this.f9938case = comicListAdapter;
        this.mRecyclerView.setAdapter(comicListAdapter);
        this.f9939do = new z2(getSupportActivity(), this.f9937break);
        i(false);
        this.f9938case.setOnItemClickListener(this);
        this.f9938case.setOnLoadMoreListener(new Cif(), this.mRecyclerView);
    }

    @Override // com.apk.g6
    public void initView() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f9946try = arguments.getString("type");
        }
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    public final void k(boolean z) {
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
        AdViewBangDan adViewBangDan;
        super.onDestroy();
        ComicListAdapter comicListAdapter = this.f9938case;
        if (comicListAdapter == null || (adViewBangDan = comicListAdapter.f9617for) == null) {
            return;
        }
        adViewBangDan.m3269try();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ComicElement comicElement = (ComicElement) this.f9938case.getItem(i);
            if (comicElement == null || comicElement.getItemType() == 3) {
                return;
            }
            ComicListDetailActivity.k(getSupportActivity(), comicElement.getListId(), comicElement.getTitle());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        AdViewBangDan adViewBangDan;
        super.onPause();
        ComicListAdapter comicListAdapter = this.f9938case;
        if (comicListAdapter == null || (adViewBangDan = comicListAdapter.f9617for) == null) {
            return;
        }
        adViewBangDan.f6294break = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        AdViewBangDan adViewBangDan;
        super.onResume();
        ComicListAdapter comicListAdapter = this.f9938case;
        if (comicListAdapter == null || (adViewBangDan = comicListAdapter.f9617for) == null) {
            return;
        }
        adViewBangDan.f6294break = false;
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        AdViewBangDan adViewBangDan;
        AdViewBangDan adViewBangDan2;
        super.setUserVisibleHint(z);
        if (z) {
            ComicListAdapter comicListAdapter = this.f9938case;
            if (comicListAdapter == null || (adViewBangDan2 = comicListAdapter.f9617for) == null) {
                return;
            }
            adViewBangDan2.f6294break = false;
            return;
        }
        ComicListAdapter comicListAdapter2 = this.f9938case;
        if (comicListAdapter2 == null || (adViewBangDan = comicListAdapter2.f9617for) == null) {
            return;
        }
        adViewBangDan.f6294break = true;
    }
}
