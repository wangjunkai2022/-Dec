package com.biquge.ebook.app.ui.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.eg;
import com.apk.g6;
import com.apk.q0;
import com.apk.ss;
import com.apk.ts;
import com.apk.u5;
import com.apk.v;
import com.apk.v3;
import com.apk.w;
import com.apk.ze;
import com.biquge.ebook.app.adapter.LeftCategoryAdapter;
import com.biquge.ebook.app.adapter.NovelRankListAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.RankListBean;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.google.gson.internal.bind.TypeAdapters;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class BookStoreRankChildFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public String f7411case;

    /* renamed from: do  reason: not valid java name */
    public v3 f7412do;

    /* renamed from: else  reason: not valid java name */
    public String f7413else;

    /* renamed from: for  reason: not valid java name */
    public NovelRankListAdapter f7414for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f7415goto;

    /* renamed from: if  reason: not valid java name */
    public LeftCategoryAdapter f7416if;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: this  reason: not valid java name */
    public JSONObject f7418this;

    /* renamed from: try  reason: not valid java name */
    public String f7419try;

    /* renamed from: new  reason: not valid java name */
    public int f7417new = 1;

    /* renamed from: break  reason: not valid java name */
    public final u5 f7410break = new Ctry();

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreRankChildFragment$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ccase extends RecyclerView.OnScrollListener {
        public Ccase(Cdo cdo) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0 && v.m2734do() == null) {
                throw null;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreRankChildFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemClickListener {
        public Cdo() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            try {
                LeftCategoryAdapter leftCategoryAdapter = BookStoreRankChildFragment.this.f7416if;
                leftCategoryAdapter.f6356do = i;
                leftCategoryAdapter.notifyDataSetChanged();
                RankListBean item = BookStoreRankChildFragment.this.f7416if.getItem(i);
                if (item != null) {
                    BookStoreRankChildFragment.this.f7411case = item.getId();
                    BookStoreRankChildFragment.this.f7413else = item.getTitle();
                }
                BookStoreRankChildFragment.this.k(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreRankChildFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cfor() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            BookStoreRankChildFragment.h(BookStoreRankChildFragment.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreRankChildFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ts {
        public Cif() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            BookStoreRankChildFragment.f(BookStoreRankChildFragment.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(BookStoreRankChildFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreRankChildFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements Runnable {
        public Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrClassicFrameLayout ptrClassicFrameLayout = BookStoreRankChildFragment.this.mPtrClassicFrameLayout;
            ptrClassicFrameLayout.f4550do = (byte) 1;
            ptrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreRankChildFragment$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends u5 {
        public Ctry() {
        }

        @Override // com.apk.u5
        /* renamed from: switch */
        public void mo2687switch() {
            BookStoreRankChildFragment.this.k(false);
            NovelRankListAdapter novelRankListAdapter = BookStoreRankChildFragment.this.f7414for;
            if (novelRankListAdapter != null) {
                novelRankListAdapter.loadMoreFail();
                BookStoreRankChildFragment bookStoreRankChildFragment = BookStoreRankChildFragment.this;
                if (bookStoreRankChildFragment.f7417new == 1) {
                    bookStoreRankChildFragment.f7414for.setNewData(null);
                }
            }
        }

        @Override // com.apk.u5
        /* renamed from: try */
        public void mo2690try(List<Book> list, boolean z, int i) {
            BookStoreRankChildFragment.this.k(false);
            if (i == 1) {
                if (BookStoreRankChildFragment.this.f7418this != null && list != null && list.size() > 0) {
                    Book book = new Book();
                    book.setItemType(2);
                    if ("week".equals(BookStoreRankChildFragment.this.f7419try)) {
                        if (list.size() < 3) {
                            list.add(book);
                        } else {
                            list.add(2, book);
                        }
                    } else if (TypeAdapters.AnonymousClass27.MONTH.equals(BookStoreRankChildFragment.this.f7419try)) {
                        list.add(0, book);
                    } else if ("total".equals(BookStoreRankChildFragment.this.f7419try)) {
                        if (list.size() > 0) {
                            list.add(1, book);
                        } else {
                            list.add(book);
                        }
                    }
                }
                BookStoreRankChildFragment.m3373synchronized(BookStoreRankChildFragment.this, true, list, z, i);
                return;
            }
            BookStoreRankChildFragment.m3373synchronized(BookStoreRankChildFragment.this, false, list, z, i);
        }
    }

    public static void f(BookStoreRankChildFragment bookStoreRankChildFragment) {
        if (bookStoreRankChildFragment != null) {
            try {
                bookStoreRankChildFragment.f7417new = 1;
                bookStoreRankChildFragment.f7412do.m2772switch(w.m2859switch(q0.f3779this[!bookStoreRankChildFragment.f7415goto ? 1 : 0], bookStoreRankChildFragment.f7411case, bookStoreRankChildFragment.f7419try, 1), bookStoreRankChildFragment.f7417new);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void h(BookStoreRankChildFragment bookStoreRankChildFragment) {
        if (bookStoreRankChildFragment != null) {
            try {
                bookStoreRankChildFragment.f7412do.m2772switch(w.m2859switch(q0.f3779this[bookStoreRankChildFragment.f7415goto ? (char) 0 : (char) 1], bookStoreRankChildFragment.f7411case, bookStoreRankChildFragment.f7419try, bookStoreRankChildFragment.f7417new), bookStoreRankChildFragment.f7417new);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static BookStoreRankChildFragment j(String str, String str2, boolean z) {
        BookStoreRankChildFragment bookStoreRankChildFragment = new BookStoreRankChildFragment();
        Bundle bundle = new Bundle();
        bundle.putString("week", str);
        bundle.putString("rankTypeName", str2);
        bundle.putBoolean("isMan", z);
        bookStoreRankChildFragment.setArguments(bundle);
        return bookStoreRankChildFragment;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3373synchronized(BookStoreRankChildFragment bookStoreRankChildFragment, boolean z, List list, boolean z2, int i) {
        if (bookStoreRankChildFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                bookStoreRankChildFragment.f7414for.setNewData(list);
                if (z2) {
                    bookStoreRankChildFragment.f7414for.setEnableLoadMore(true);
                    bookStoreRankChildFragment.f7417new = i + 1;
                    return;
                }
                bookStoreRankChildFragment.f7414for.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                bookStoreRankChildFragment.f7414for.addData((Collection) list);
            }
            if (z2) {
                bookStoreRankChildFragment.f7414for.loadMoreComplete();
                bookStoreRankChildFragment.f7417new = i + 1;
                return;
            }
            bookStoreRankChildFragment.f7414for.loadMoreEnd();
            return;
        }
        throw null;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_store_rank_child;
    }

    public void i(boolean z) {
        NovelRankListAdapter novelRankListAdapter;
        if (this.mRecyclerView == null || (novelRankListAdapter = this.f7414for) == null) {
            return;
        }
        if (z) {
            this.f7417new = 1;
            novelRankListAdapter.setNewData(null);
        }
        this.mPtrClassicFrameLayout.f4550do = (byte) 1;
        k(true);
    }

    @Override // com.apk.g6
    public void initData() {
        String str;
        Bundle arguments = getArguments();
        String str2 = null;
        if (arguments != null) {
            this.f7419try = arguments.getString("week");
            str = arguments.getString("rankTypeName");
            this.f7415goto = arguments.getBoolean("isMan");
        } else {
            str = null;
        }
        try {
            if (this.f7416if != null && this.f7416if.getItemCount() > 0) {
                if (!TextUtils.isEmpty(str)) {
                    int itemCount = this.f7416if.getItemCount();
                    int i = 0;
                    while (true) {
                        if (i < itemCount) {
                            RankListBean item = this.f7416if.getItem(i);
                            if (item != null && str.equals(item.getTitle())) {
                                LeftCategoryAdapter leftCategoryAdapter = this.f7416if;
                                leftCategoryAdapter.f6356do = i;
                                leftCategoryAdapter.notifyDataSetChanged();
                                this.f7411case = item.getId();
                                this.f7413else = item.getTitle();
                                break;
                            }
                            i++;
                        } else {
                            break;
                        }
                    }
                } else {
                    RankListBean item2 = this.f7416if.getItem(0);
                    if (item2 != null) {
                        this.f7411case = item2.getId();
                        this.f7413else = item2.getTitle();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f7412do = new v3(getSupportActivity(), this.f7410break);
        if ("week".equals(this.f7419try) && Cfinally.m797else().b()) {
            this.f7418this = Cfinally.m797else().c;
            str2 = "topweek";
        } else if (TypeAdapters.AnonymousClass27.MONTH.equals(this.f7419try) && Cfinally.m797else().m809finally()) {
            this.f7418this = Cfinally.m797else().d;
            str2 = "topmonth";
        } else if ("total".equals(this.f7419try) && Cfinally.m797else().a()) {
            this.f7418this = Cfinally.m797else().e;
            str2 = "toptotal";
        }
        NovelRankListAdapter novelRankListAdapter = new NovelRankListAdapter(getSupportActivity(), this.f7418this, str2, false);
        this.f7414for = novelRankListAdapter;
        this.mRecyclerView.setAdapter(novelRankListAdapter);
        this.f7414for.setOnItemClickListener(this);
        this.f7414for.setOnLoadMoreListener(new Cfor(), this.mRecyclerView);
        k(true);
    }

    @Override // com.apk.g6
    public void initView() {
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.fragment_rank_category_rv);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(recyclerView);
        LeftCategoryAdapter leftCategoryAdapter = new LeftCategoryAdapter(q0.m2100if());
        this.f7416if = leftCategoryAdapter;
        recyclerView.setAdapter(leftCategoryAdapter);
        this.f7416if.setOnItemClickListener(new Cdo());
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        this.mRecyclerView.addOnScrollListener(new Ccase(null));
        ze.m3165else(this.mRecyclerView);
        this.mPtrClassicFrameLayout.setPtrHandler(new Cif());
    }

    public final void k(boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Cnew());
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
        NovelRankListAdapter novelRankListAdapter = this.f7414for;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3287do();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            Book book = (Book) this.f7414for.getItem(i);
            if (book == null || book.getItemType() != 1) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("书城|榜单|");
            sb.append(this.f7419try);
            sb.append("|");
            sb.append(this.f7413else);
            sb.append("|");
            sb.append(this.f7415goto ? "男生|" : "女生|");
            sb.append(i + 1);
            BookDetailActivity.t(getSupportActivity(), sb.toString(), book);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        NovelRankListAdapter novelRankListAdapter = this.f7414for;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3289if();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        NovelRankListAdapter novelRankListAdapter = this.f7414for;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3288for();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            NovelRankListAdapter novelRankListAdapter = this.f7414for;
            if (novelRankListAdapter != null) {
                novelRankListAdapter.m3288for();
                return;
            }
            return;
        }
        NovelRankListAdapter novelRankListAdapter2 = this.f7414for;
        if (novelRankListAdapter2 != null) {
            novelRankListAdapter2.m3289if();
        }
    }
}
