package com.manhua.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.apk.Cfinally;
import com.apk.b40;
import com.apk.eg;
import com.apk.f6;
import com.apk.nz;
import com.apk.p0;
import com.apk.q0;
import com.apk.r5;
import com.apk.ss;
import com.apk.ts;
import com.apk.z2;
import com.apk.ze;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.adapter.ComicRankListAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.widget.PageRecyclerView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class ComicNewReleaseActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public JSONObject f9752case;

    /* renamed from: do  reason: not valid java name */
    public ScrollIndicatorView f9753do;

    /* renamed from: for  reason: not valid java name */
    public PageRecyclerView f9755for;

    /* renamed from: if  reason: not valid java name */
    public PtrClassicFrameLayout f9757if;

    /* renamed from: new  reason: not valid java name */
    public ComicRankListAdapter f9758new;

    /* renamed from: try  reason: not valid java name */
    public z2 f9759try;

    /* renamed from: else  reason: not valid java name */
    public final r5 f9754else = new Cfor();

    /* renamed from: goto  reason: not valid java name */
    public final b40.Cnew f9756goto = new Cnew();

    /* renamed from: com.manhua.ui.activity.ComicNewReleaseActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            ComicNewReleaseActivity.i(ComicNewReleaseActivity.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(ComicNewReleaseActivity.this.f9755for);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicNewReleaseActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends r5 {
        public Cfor() {
        }

        @Override // com.apk.r5
        /* renamed from: new */
        public void mo2239new(List<ComicBean> list, boolean z, int i) {
            ComicNewReleaseActivity.this.l(false);
            if (ComicNewReleaseActivity.this.f9752case != null && list != null && list.size() > 0) {
                ComicBean comicBean = new ComicBean();
                comicBean.setItemType(2);
                if (list.size() > 3) {
                    list.add(3, comicBean);
                } else {
                    list.add(comicBean);
                }
            }
            ComicNewReleaseActivity comicNewReleaseActivity = ComicNewReleaseActivity.this;
            if (comicNewReleaseActivity != null) {
                if (list != null) {
                    list.size();
                }
                comicNewReleaseActivity.f9758new.setNewData(list);
                comicNewReleaseActivity.f9758new.setEnableLoadMore(false);
                return;
            }
            throw null;
        }

        @Override // com.apk.r5
        /* renamed from: throw */
        public void mo2242throw() {
            ComicNewReleaseActivity.this.l(false);
            ComicRankListAdapter comicRankListAdapter = ComicNewReleaseActivity.this.f9758new;
            if (comicRankListAdapter != null) {
                comicRankListAdapter.loadMoreFail();
            }
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicNewReleaseActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrClassicFrameLayout ptrClassicFrameLayout = ComicNewReleaseActivity.this.f9757if;
            ptrClassicFrameLayout.f4550do = (byte) 1;
            ptrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicNewReleaseActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements b40.Cnew {
        public Cnew() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            ComicNewReleaseActivity.this.l(true);
        }
    }

    public static void i(ComicNewReleaseActivity comicNewReleaseActivity) {
        if (comicNewReleaseActivity != null) {
            try {
                if (comicNewReleaseActivity.f9759try != null) {
                    boolean z = comicNewReleaseActivity.f9753do.getCurrentItem() == 0;
                    StringBuilder sb = new StringBuilder();
                    sb.append(p0.m1998catch());
                    sb.append(z ? "/StaticFiles/ManNewPublish.html" : "/StaticFiles/LadyNewPublish.html");
                    comicNewReleaseActivity.f9759try.m3143return(sb.toString(), 1, 7200000L);
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

    public static void k(Context context) {
        context.startActivity(new Intent(context, ComicNewReleaseActivity.class));
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.comic_new_release_activity;
    }

    @Override // com.apk.f6
    public void initData() {
        this.f9759try = new z2(this, this.f9754else);
        if (Cfinally.m797else().b()) {
            this.f9752case = Cfinally.m797else().c;
        }
        ComicRankListAdapter comicRankListAdapter = new ComicRankListAdapter(this, this.f9752case, "topweek", false, true);
        this.f9758new = comicRankListAdapter;
        this.f9755for.setAdapter(comicRankListAdapter);
        this.f9758new.setOnItemClickListener(this);
        l(true);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.comic_rank_actionbar, R.string.comic_store_tab_shelf);
        ScrollIndicatorView scrollIndicatorView = (ScrollIndicatorView) findViewById(R.id.fragment_city_sex_indicator);
        this.f9753do = scrollIndicatorView;
        scrollIndicatorView.setSplitAuto(false);
        this.f9753do.setAdapter(new nz(this, q0.f3776goto, eg.m587catch(80.0f)));
        this.f9753do.setOnItemSelectListener(this.f9756goto);
        ze.u(this, this.f9753do, 35, 14);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        PageRecyclerView pageRecyclerView = (PageRecyclerView) findViewById(R.id.comic_rank_recyclerview);
        this.f9755for = pageRecyclerView;
        pageRecyclerView.setLayoutManager(linearLayoutManager);
        this.f9755for.setHasFixedSize(true);
        ze.m3165else(this.f9755for);
        ze.m3177new(this, this.f9755for);
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) findViewById(R.id.refresh_rv_layout);
        this.f9757if = ptrClassicFrameLayout;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    public final void l(boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = this.f9757if;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Cif());
                return;
            }
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = this.f9757if;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.m2532break();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ComicBean comicBean = (ComicBean) this.f9758new.getItem(i);
            if (comicBean == null || comicBean.getItemType() != 1) {
                return;
            }
            Intent intent = new Intent(this, ComicDetailActivity.class);
            intent.putExtra("book", comicBean);
            startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
