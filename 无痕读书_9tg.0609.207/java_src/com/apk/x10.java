package com.apk;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.b40;
import com.biquge.ebook.app.widget.ScrollHeaderLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.adapter.ComicRankListAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicDetailActivity;
import com.manhua.ui.widget.PageRecyclerView;
import com.manhua.ui.widget.PublicLoadingView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* compiled from: ComicRankFragment.java */
/* loaded from: classes8.dex */
public class x10 extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: break  reason: not valid java name */
    public ScrollIndicatorView f5424break;

    /* renamed from: case  reason: not valid java name */
    public TextView f5425case;

    /* renamed from: catch  reason: not valid java name */
    public ScrollIndicatorView f5426catch;

    /* renamed from: class  reason: not valid java name */
    public ScrollIndicatorView f5427class;

    /* renamed from: const  reason: not valid java name */
    public JSONObject f5428const;

    /* renamed from: else  reason: not valid java name */
    public PublicLoadingView f5430else;

    /* renamed from: for  reason: not valid java name */
    public PtrClassicFrameLayout f5432for;

    /* renamed from: goto  reason: not valid java name */
    public ScrollHeaderLayout f5433goto;

    /* renamed from: if  reason: not valid java name */
    public z2 f5434if;

    /* renamed from: new  reason: not valid java name */
    public PageRecyclerView f5435new;

    /* renamed from: this  reason: not valid java name */
    public ScrollIndicatorView f5437this;

    /* renamed from: try  reason: not valid java name */
    public ComicRankListAdapter f5439try;

    /* renamed from: while  reason: not valid java name */
    public static final String[] f5423while = {ze.q(R.string.rank_new_txt), ze.q(R.string.rank_category_hot_new), ze.q(R.string.rank_category_grade_new), ze.q(R.string.rank_category_finish_new), ze.q(R.string.rank_category_recommend_new), ze.q(R.string.rank_category_collect_new)};

    /* renamed from: import  reason: not valid java name */
    public static final String[] f5422import = {"new", "hot", "vote", "over", "commend", "collect"};

    /* renamed from: do  reason: not valid java name */
    public int f5429do = 1;

    /* renamed from: final  reason: not valid java name */
    public final bg f5431final = new Cfor();

    /* renamed from: super  reason: not valid java name */
    public final r5 f5436super = new Ccase();

    /* renamed from: throw  reason: not valid java name */
    public final b40.Cnew f5438throw = new Celse();

    /* compiled from: ComicRankFragment.java */
    /* renamed from: com.apk.x10$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends r5 {
        public Ccase() {
        }

        @Override // com.apk.r5
        /* renamed from: new */
        public void mo2239new(List<ComicBean> list, boolean z, int i) {
            x10.this.k(false);
            if (i == 1) {
                if (x10.this.f5428const != null && list != null && list.size() > 0) {
                    ComicBean comicBean = new ComicBean();
                    comicBean.setItemType(2);
                    if (list.size() > 3) {
                        list.add(3, comicBean);
                    } else {
                        list.add(comicBean);
                    }
                }
                x10.m2946synchronized(x10.this, true, list, z, i);
            } else {
                x10.m2946synchronized(x10.this, false, list, z, i);
            }
            PublicLoadingView publicLoadingView = x10.this.f5430else;
            if (publicLoadingView != null) {
                publicLoadingView.m3666for();
            }
        }

        @Override // com.apk.r5
        /* renamed from: throw */
        public void mo2242throw() {
            x10.this.k(false);
            PublicLoadingView publicLoadingView = x10.this.f5430else;
            if (publicLoadingView != null) {
                publicLoadingView.m3666for();
            }
            ComicRankListAdapter comicRankListAdapter = x10.this.f5439try;
            if (comicRankListAdapter != null) {
                comicRankListAdapter.loadMoreFail();
            }
        }
    }

    /* compiled from: ComicRankFragment.java */
    /* renamed from: com.apk.x10$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            x10.a(x10.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            x10 x10Var = x10.this;
            return !x10Var.f5433goto.f8118do && eg.m586case(x10Var.f5435new);
        }
    }

    /* compiled from: ComicRankFragment.java */
    /* renamed from: com.apk.x10$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements b40.Cnew {
        public Celse() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            PublicLoadingView publicLoadingView = x10.this.f5430else;
            if (publicLoadingView != null) {
                publicLoadingView.m3667if();
            }
            x10.a(x10.this);
        }
    }

    /* compiled from: ComicRankFragment.java */
    /* renamed from: com.apk.x10$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends bg {
        public Cfor() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (view.getId() == R.id.comic_rank_header_txt) {
                x10.this.f5435new.m3664if(0);
            }
        }
    }

    /* compiled from: ComicRankFragment.java */
    /* renamed from: com.apk.x10$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends RecyclerView.OnScrollListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ LinearLayoutManager f5444do;

        public Cif(LinearLayoutManager linearLayoutManager) {
            this.f5444do = linearLayoutManager;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            if (this.f5444do.findFirstVisibleItemPosition() == 0) {
                if (x10.this.f5425case.getVisibility() != 8) {
                    x10.this.f5425case.setVisibility(8);
                }
            } else if (x10.this.f5425case.getVisibility() != 0) {
                x10 x10Var = x10.this;
                TextView textView = x10Var.f5425case;
                String str = q0.f3776goto[x10Var.f5437this.getCurrentItem()];
                String str2 = x10.f5423while[x10Var.f5424break.getCurrentItem()];
                String str3 = q0.f3771case[x10Var.f5426catch.getCurrentItem()];
                String str4 = q0.f3770break[x10Var.f5427class.getCurrentItem()];
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str);
                stringBuffer.append("  ->  ");
                stringBuffer.append(str2);
                stringBuffer.append("  ->  ");
                stringBuffer.append(str3);
                stringBuffer.append("  ->  ");
                stringBuffer.append(str4);
                textView.setText(stringBuffer.toString());
                x10.this.f5425case.setVisibility(0);
            }
        }
    }

    /* compiled from: ComicRankFragment.java */
    /* renamed from: com.apk.x10$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cnew() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            x10.f(x10.this);
        }
    }

    /* compiled from: ComicRankFragment.java */
    /* renamed from: com.apk.x10$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements Runnable {
        public Ctry() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x10.this.f5432for.m2541if();
        }
    }

    public static void a(x10 x10Var) {
        if (x10Var != null) {
            String str = q0.f3779this[x10Var.f5437this.getCurrentItem()];
            String str2 = f5422import[x10Var.f5424break.getCurrentItem()];
            String str3 = q0.f3774else[x10Var.f5426catch.getCurrentItem()];
            String str4 = q0.f3772catch[x10Var.f5427class.getCurrentItem()];
            try {
                if (x10Var.f5434if != null) {
                    x10Var.f5429do = 1;
                    x10Var.f5434if.m3142public(w.m2860this(str, str2, str3, str4, 1), x10Var.f5429do);
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

    public static void f(x10 x10Var) {
        if (x10Var != null) {
            String str = q0.f3779this[x10Var.f5437this.getCurrentItem()];
            String str2 = f5422import[x10Var.f5424break.getCurrentItem()];
            String str3 = q0.f3774else[x10Var.f5426catch.getCurrentItem()];
            String str4 = q0.f3772catch[x10Var.f5427class.getCurrentItem()];
            try {
                if (x10Var.f5434if != null) {
                    x10Var.f5434if.m3142public(w.m2860this(str, str2, str3, str4, x10Var.f5429do), x10Var.f5429do);
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

    public static x10 i(String str) {
        x10 x10Var = new x10();
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("rankTypeName", str);
        }
        x10Var.setArguments(bundle);
        return x10Var;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m2946synchronized(x10 x10Var, boolean z, List list, boolean z2, int i) {
        if (x10Var != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                x10Var.f5439try.setNewData(list);
                if (z2) {
                    x10Var.f5439try.setEnableLoadMore(true);
                    x10Var.f5429do = i + 1;
                    return;
                }
                x10Var.f5439try.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                x10Var.f5439try.addData((Collection) list);
            }
            if (z2) {
                x10Var.f5439try.loadMoreComplete();
                x10Var.f5429do = i + 1;
                return;
            }
            x10Var.f5439try.loadMoreEnd();
            return;
        }
        throw null;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.comic_rank_fragment;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00f7  */
    @Override // com.apk.g6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initData() {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.x10.initData():void");
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getSupportActivity());
        PageRecyclerView pageRecyclerView = (PageRecyclerView) findViewById(R.id.comic_rank_recyclerview);
        this.f5435new = pageRecyclerView;
        pageRecyclerView.setLayoutManager(linearLayoutManager);
        this.f5435new.setHasFixedSize(true);
        ze.m3165else(this.f5435new);
        ze.m3177new(getSupportActivity(), this.f5435new);
        TextView textView = (TextView) findViewById(R.id.comic_rank_header_txt);
        this.f5425case = textView;
        textView.setOnClickListener(this.f5431final);
        this.f5430else = (PublicLoadingView) findViewById(R.id.activity_loading_view);
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) findViewById(R.id.refresh_rv_layout);
        this.f5432for = ptrClassicFrameLayout;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
        this.f5435new.addOnScrollListener(new Cif(linearLayoutManager));
    }

    public final void j(ScrollIndicatorView scrollIndicatorView, String[] strArr, b40.Cnew cnew, int i) {
        if (strArr != null && strArr.length > 0) {
            scrollIndicatorView.setAdapter(new nz(getSupportActivity(), strArr, i));
            ze.u(getSupportActivity(), scrollIndicatorView, 40, 14);
            scrollIndicatorView.setOnItemSelectListener(cnew);
            return;
        }
        scrollIndicatorView.setVisibility(8);
    }

    public final void k(boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = this.f5432for;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Ctry());
                return;
            }
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = this.f5432for;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.m2532break();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ComicBean comicBean = (ComicBean) this.f5439try.getItem(i);
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
