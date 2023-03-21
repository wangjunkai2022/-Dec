package com.manhua.ui.fragment;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.b1;
import com.apk.d3;
import com.apk.g6;
import com.apk.mu;
import com.apk.r5;
import com.apk.z2;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.adapter.ComicFootprintAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicFootprint;
import com.manhua.ui.activity.ComicDetailActivity;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicFootprintFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public ComicFootprintAdapter f9931do;

    /* renamed from: for  reason: not valid java name */
    public z2 f9932for;

    /* renamed from: if  reason: not valid java name */
    public ComicFootprint f9933if;
    @BindView(R.id.my_footprint_rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public final r5 f9934new = new Cdo();

    /* renamed from: com.manhua.ui.fragment.ComicFootprintFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends r5 {
        public Cdo() {
        }

        @Override // com.apk.r5
        /* renamed from: for */
        public void mo2236for(List<ComicFootprint> list) {
            ComicFootprint comicFootprint;
            if (list != null) {
                if (list.size() > 0 && (comicFootprint = ComicFootprintFragment.this.f9933if) != null) {
                    list.add(1, comicFootprint);
                }
                ComicFootprintFragment.this.f9931do.setNewData(list);
            }
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_footprint;
    }

    @Override // com.apk.g6
    public void initData() {
        boolean m815package = Cfinally.m797else().m815package();
        ComicFootprintAdapter comicFootprintAdapter = new ComicFootprintAdapter(getActivity(), m815package, "myfootprint");
        this.f9931do = comicFootprintAdapter;
        this.mRecyclerView.setAdapter(comicFootprintAdapter);
        if (m815package) {
            ComicFootprint comicFootprint = new ComicFootprint();
            this.f9933if = comicFootprint;
            comicFootprint.setItemType(2);
        }
        z2 z2Var = new z2(getActivity(), this.f9934new);
        this.f9932for = z2Var;
        new b1().m141do(new d3(z2Var));
        this.f9931do.setOnItemClickListener(this);
    }

    @Override // com.apk.g6
    public void initView() {
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
    }

    @Override // com.apk.k6
    public boolean isUseVisible() {
        return false;
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        AdViewBangDan adViewBangDan;
        super.onDestroy();
        ComicFootprintAdapter comicFootprintAdapter = this.f9931do;
        if (comicFootprintAdapter == null || (adViewBangDan = comicFootprintAdapter.f9608for) == null) {
            return;
        }
        adViewBangDan.m3269try();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ComicFootprint comicFootprint = (ComicFootprint) this.f9931do.getItem(i);
        if (comicFootprint != null) {
            ComicBean m1765final = mu.m1765final(comicFootprint.getNovelId(), comicFootprint.getName(), comicFootprint.getIcon());
            m1765final.setDesc(comicFootprint.getContent());
            ComicDetailActivity.n(getActivity(), m1765final);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        AdViewBangDan adViewBangDan;
        super.onPause();
        ComicFootprintAdapter comicFootprintAdapter = this.f9931do;
        if (comicFootprintAdapter == null || (adViewBangDan = comicFootprintAdapter.f9608for) == null) {
            return;
        }
        adViewBangDan.f6294break = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        AdViewBangDan adViewBangDan;
        super.onResume();
        ComicFootprintAdapter comicFootprintAdapter = this.f9931do;
        if (comicFootprintAdapter == null || (adViewBangDan = comicFootprintAdapter.f9608for) == null) {
            return;
        }
        adViewBangDan.f6294break = false;
    }
}
