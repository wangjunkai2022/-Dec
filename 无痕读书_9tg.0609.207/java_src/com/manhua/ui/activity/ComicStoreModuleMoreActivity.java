package com.manhua.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cfinally;
import com.apk.eg;
import com.apk.f6;
import com.apk.r5;
import com.apk.ss;
import com.apk.ts;
import com.apk.z2;
import com.apk.ze;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.adapter.ComicRankListAdapter;
import com.manhua.data.bean.ComicBean;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class ComicStoreModuleMoreActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public String f9845case;

    /* renamed from: do  reason: not valid java name */
    public PtrClassicFrameLayout f9846do;

    /* renamed from: else  reason: not valid java name */
    public JSONObject f9847else;

    /* renamed from: for  reason: not valid java name */
    public ComicRankListAdapter f9848for;

    /* renamed from: if  reason: not valid java name */
    public RecyclerView f9850if;

    /* renamed from: new  reason: not valid java name */
    public z2 f9851new;

    /* renamed from: try  reason: not valid java name */
    public int f9852try = 1;

    /* renamed from: goto  reason: not valid java name */
    public final r5 f9849goto = new Cnew();

    /* renamed from: com.manhua.ui.activity.ComicStoreModuleMoreActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            ComicStoreModuleMoreActivity.i(ComicStoreModuleMoreActivity.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(ComicStoreModuleMoreActivity.this.f9850if);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicStoreModuleMoreActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ComicStoreModuleMoreActivity.this.f9846do.m2541if();
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicStoreModuleMoreActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            ComicStoreModuleMoreActivity.j(ComicStoreModuleMoreActivity.this);
        }
    }

    /* renamed from: com.manhua.ui.activity.ComicStoreModuleMoreActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends r5 {
        public Cnew() {
        }

        @Override // com.apk.r5
        /* renamed from: new */
        public void mo2239new(List<ComicBean> list, boolean z, int i) {
            ComicStoreModuleMoreActivity.this.n(false);
            if (i == 1) {
                if (ComicStoreModuleMoreActivity.this.f9847else != null && list != null && list.size() > 0) {
                    ComicBean comicBean = new ComicBean();
                    comicBean.setItemType(2);
                    if (list.size() < 3) {
                        list.add(comicBean);
                    } else {
                        list.add(2, comicBean);
                    }
                }
                ComicStoreModuleMoreActivity.l(ComicStoreModuleMoreActivity.this, true, list, z, i);
                return;
            }
            ComicStoreModuleMoreActivity.l(ComicStoreModuleMoreActivity.this, false, list, z, i);
        }

        @Override // com.apk.r5
        /* renamed from: throw */
        public void mo2242throw() {
            ComicStoreModuleMoreActivity.this.n(false);
            ComicRankListAdapter comicRankListAdapter = ComicStoreModuleMoreActivity.this.f9848for;
            if (comicRankListAdapter != null) {
                comicRankListAdapter.loadMoreFail();
            }
        }
    }

    public static void i(ComicStoreModuleMoreActivity comicStoreModuleMoreActivity) {
        if (comicStoreModuleMoreActivity != null) {
            try {
                if (comicStoreModuleMoreActivity.f9851new != null) {
                    comicStoreModuleMoreActivity.f9852try = 1;
                    comicStoreModuleMoreActivity.f9851new.m3142public(comicStoreModuleMoreActivity.f9845case, 1);
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

    public static void j(ComicStoreModuleMoreActivity comicStoreModuleMoreActivity) {
        if (comicStoreModuleMoreActivity != null) {
            try {
                if (comicStoreModuleMoreActivity.f9851new != null) {
                    comicStoreModuleMoreActivity.f9851new.m3142public(comicStoreModuleMoreActivity.f9845case, comicStoreModuleMoreActivity.f9852try);
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

    public static void l(ComicStoreModuleMoreActivity comicStoreModuleMoreActivity, boolean z, List list, boolean z2, int i) {
        if (comicStoreModuleMoreActivity != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                comicStoreModuleMoreActivity.f9848for.setNewData(list);
                if (z2) {
                    comicStoreModuleMoreActivity.f9848for.setEnableLoadMore(true);
                    comicStoreModuleMoreActivity.f9852try = i + 1;
                    return;
                }
                comicStoreModuleMoreActivity.f9848for.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                comicStoreModuleMoreActivity.f9848for.addData((Collection) list);
            }
            if (z2) {
                comicStoreModuleMoreActivity.f9848for.loadMoreComplete();
                comicStoreModuleMoreActivity.f9852try = i + 1;
                return;
            }
            comicStoreModuleMoreActivity.f9848for.loadMoreEnd();
            return;
        }
        throw null;
    }

    public static void m(Context context, String str, String str2) {
        Intent intent = new Intent(context, ComicStoreModuleMoreActivity.class);
        intent.putExtra("EXTRA_TITLE_KEY", str);
        intent.putExtra("EXTRA_URL_KEY", str2);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_store_module_more;
    }

    @Override // com.apk.f6
    public void initData() {
        if (Cfinally.m797else().b()) {
            this.f9847else = Cfinally.m797else().c;
        }
        this.f9851new = new z2(this, this.f9849goto);
        ComicRankListAdapter comicRankListAdapter = new ComicRankListAdapter(this, this.f9847else, "topweek", false, true);
        this.f9848for = comicRankListAdapter;
        this.f9850if.setAdapter(comicRankListAdapter);
        this.f9848for.setOnItemClickListener(this);
        this.f9848for.setOnLoadMoreListener(new Cif(), this.f9850if);
        n(true);
    }

    @Override // com.apk.f6
    public void initView() {
        Intent intent = getIntent();
        if (intent != null) {
            initTopBarOnlyTitle(R.id.activity_module_more_toolbar, intent.getStringExtra("EXTRA_TITLE_KEY"));
            this.f9845case = intent.getStringExtra("EXTRA_URL_KEY");
        }
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_list);
        this.f9850if = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.f9850if.setLayoutManager(new LinearLayoutManager(this));
        ze.m3165else(this.f9850if);
        ze.m3177new(this, this.f9850if);
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) findViewById(R.id.refresh_rv_layout);
        this.f9846do = ptrClassicFrameLayout;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    public final void n(boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = this.f9846do;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Cfor());
                return;
            }
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = this.f9846do;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.m2532break();
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ComicRankListAdapter comicRankListAdapter = this.f9848for;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3616do();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ComicBean comicBean = (ComicBean) this.f9848for.getItem(i);
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

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        ComicRankListAdapter comicRankListAdapter = this.f9848for;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3618if();
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        ComicRankListAdapter comicRankListAdapter = this.f9848for;
        if (comicRankListAdapter != null) {
            comicRankListAdapter.m3617for();
        }
    }
}
