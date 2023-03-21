package com.biquge.ebook.app.ui.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.eg;
import com.apk.g6;
import com.apk.ss;
import com.apk.ts;
import com.apk.u5;
import com.apk.v3;
import com.apk.w;
import com.apk.ze;
import com.biquge.ebook.app.adapter.NovelRankListAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.fragment.BookCategoryRankFragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class BookCategoryRankFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public NovelRankListAdapter f7182case;

    /* renamed from: do  reason: not valid java name */
    public Book f7183do;

    /* renamed from: for  reason: not valid java name */
    public String f7185for;

    /* renamed from: if  reason: not valid java name */
    public String f7186if;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: try  reason: not valid java name */
    public v3 f7188try;

    /* renamed from: new  reason: not valid java name */
    public int f7187new = 1;

    /* renamed from: else  reason: not valid java name */
    public final u5 f7184else = new Cfor();

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookCategoryRankFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            BookCategoryRankFragment bookCategoryRankFragment = BookCategoryRankFragment.this;
            if (bookCategoryRankFragment.f7188try != null) {
                bookCategoryRankFragment.f7187new = 1;
                bookCategoryRankFragment.f7188try.m2772switch(w.m2848for(bookCategoryRankFragment.f7186if, bookCategoryRankFragment.f7185for, 1), bookCategoryRankFragment.f7187new);
            }
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(BookCategoryRankFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookCategoryRankFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends u5 {
        public Cfor() {
        }

        @Override // com.apk.u5
        /* renamed from: switch */
        public void mo2687switch() {
            BookCategoryRankFragment.this.i(false);
            NovelRankListAdapter novelRankListAdapter = BookCategoryRankFragment.this.f7182case;
            if (novelRankListAdapter != null) {
                novelRankListAdapter.loadMoreFail();
            }
        }

        @Override // com.apk.u5
        /* renamed from: try */
        public void mo2690try(List<Book> list, boolean z, int i) {
            BookCategoryRankFragment.this.i(false);
            if (i == 1) {
                if (BookCategoryRankFragment.this.f7183do != null && list.size() > 0) {
                    if (list.size() < 3) {
                        list.add(BookCategoryRankFragment.this.f7183do);
                    } else {
                        list.add(2, BookCategoryRankFragment.this.f7183do);
                    }
                }
                BookCategoryRankFragment.a(BookCategoryRankFragment.this, true, list, z);
                return;
            }
            BookCategoryRankFragment.a(BookCategoryRankFragment.this, false, list, z);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookCategoryRankFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            BookCategoryRankFragment bookCategoryRankFragment = BookCategoryRankFragment.this;
            if (bookCategoryRankFragment.f7188try != null) {
                bookCategoryRankFragment.f7188try.m2772switch(w.m2848for(bookCategoryRankFragment.f7186if, bookCategoryRankFragment.f7185for, bookCategoryRankFragment.f7187new), bookCategoryRankFragment.f7187new);
            }
        }
    }

    public static void a(BookCategoryRankFragment bookCategoryRankFragment, boolean z, List list, boolean z2) {
        if (bookCategoryRankFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                bookCategoryRankFragment.f7182case.setNewData(list);
                if (z2) {
                    bookCategoryRankFragment.f7182case.setEnableLoadMore(true);
                    bookCategoryRankFragment.f7187new++;
                    return;
                }
                bookCategoryRankFragment.f7182case.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                bookCategoryRankFragment.f7182case.addData((Collection) list);
            }
            if (z2) {
                bookCategoryRankFragment.f7182case.loadMoreComplete();
                bookCategoryRankFragment.f7187new++;
                return;
            }
            bookCategoryRankFragment.f7182case.loadMoreEnd();
            return;
        }
        throw null;
    }

    public static BookCategoryRankFragment h(String str, String str2) {
        BookCategoryRankFragment bookCategoryRankFragment = new BookCategoryRankFragment();
        Bundle bundle = new Bundle();
        bundle.putString("categoryId", str);
        bundle.putString("type", str2);
        bookCategoryRankFragment.setArguments(bundle);
        return bookCategoryRankFragment;
    }

    public /* synthetic */ void f() {
        this.mPtrClassicFrameLayout.m2541if();
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_category;
    }

    public final void i(boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Runnable() { // from class: com.apk.fa
                    @Override // java.lang.Runnable
                    public final void run() {
                        BookCategoryRankFragment.this.f();
                    }
                });
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
            this.f7186if = arguments.getString("categoryId");
            this.f7185for = arguments.getString("type");
        }
        JSONObject jSONObject = null;
        if ("hot".equals(this.f7185for) && Cfinally.m797else().m818public()) {
            jSONObject = Cfinally.m797else().h;
            Book book = new Book();
            this.f7183do = book;
            book.setItemType(2);
        }
        NovelRankListAdapter novelRankListAdapter = new NovelRankListAdapter(getSupportActivity(), jSONObject, "categorylist", true);
        this.f7182case = novelRankListAdapter;
        this.mRecyclerView.setAdapter(novelRankListAdapter);
        this.f7182case.setOnLoadMoreListener(new Cif(), this.mRecyclerView);
        this.f7182case.setOnItemClickListener(this);
        this.f7188try = new v3(getSupportActivity(), this.f7184else);
        i(true);
    }

    @Override // com.apk.g6
    public void initView() {
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.mRecyclerView);
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        NovelRankListAdapter novelRankListAdapter = this.f7182case;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3287do();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Book book = (Book) this.f7182case.getItem(i);
        if (book == null || book.getItemType() != 1) {
            return;
        }
        BookDetailActivity.t(getSupportActivity(), null, book);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        NovelRankListAdapter novelRankListAdapter = this.f7182case;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3289if();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        NovelRankListAdapter novelRankListAdapter = this.f7182case;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3288for();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            NovelRankListAdapter novelRankListAdapter = this.f7182case;
            if (novelRankListAdapter != null) {
                novelRankListAdapter.m3288for();
                return;
            }
            return;
        }
        NovelRankListAdapter novelRankListAdapter2 = this.f7182case;
        if (novelRankListAdapter2 != null) {
            novelRankListAdapter2.m3289if();
        }
    }
}
