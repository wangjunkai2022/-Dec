package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.b1;
import com.apk.g6;
import com.apk.n2;
import com.apk.u5;
import com.apk.v3;
import com.apk.z3;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.adapter.BookFootprintAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.Footprint;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookFootprintFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public BookFootprintAdapter f7228do;

    /* renamed from: for  reason: not valid java name */
    public v3 f7229for;

    /* renamed from: if  reason: not valid java name */
    public Footprint f7230if;
    @BindView(R.id.my_footprint_rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public final u5 f7231new = new Cdo();

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookFootprintFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends u5 {
        public Cdo() {
        }

        @Override // com.apk.u5
        /* renamed from: new */
        public void mo2682new(List<Footprint> list) {
            Footprint footprint;
            if (list != null) {
                if (list.size() > 0 && (footprint = BookFootprintFragment.this.f7230if) != null) {
                    list.add(1, footprint);
                }
                BookFootprintFragment.this.f7228do.setNewData(list);
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
        BookFootprintAdapter bookFootprintAdapter = new BookFootprintAdapter(getActivity(), m815package, "myfootprint");
        this.f7228do = bookFootprintAdapter;
        this.mRecyclerView.setAdapter(bookFootprintAdapter);
        if (m815package) {
            Footprint footprint = new Footprint();
            this.f7230if = footprint;
            footprint.setItemType(2);
        }
        v3 v3Var = new v3(getSupportActivity(), this.f7231new);
        this.f7229for = v3Var;
        new b1().m141do(new z3(v3Var));
        this.f7228do.setOnItemClickListener(this);
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
        BookFootprintAdapter bookFootprintAdapter = this.f7228do;
        if (bookFootprintAdapter == null || (adViewBangDan = bookFootprintAdapter.f6329for) == null) {
            return;
        }
        adViewBangDan.m3269try();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Footprint footprint = (Footprint) this.f7228do.getItem(i);
        if (footprint != null) {
            Book m1811catch = n2.m1811catch(footprint.getNovelId(), footprint.getName(), footprint.getIcon());
            m1811catch.setDesc(footprint.getContent());
            BookDetailActivity.o(getActivity(), m1811catch);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        AdViewBangDan adViewBangDan;
        super.onPause();
        BookFootprintAdapter bookFootprintAdapter = this.f7228do;
        if (bookFootprintAdapter == null || (adViewBangDan = bookFootprintAdapter.f6329for) == null) {
            return;
        }
        adViewBangDan.f6294break = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        AdViewBangDan adViewBangDan;
        super.onResume();
        BookFootprintAdapter bookFootprintAdapter = this.f7228do;
        if (bookFootprintAdapter == null || (adViewBangDan = bookFootprintAdapter.f6329for) == null) {
            return;
        }
        adViewBangDan.f6294break = false;
    }
}
