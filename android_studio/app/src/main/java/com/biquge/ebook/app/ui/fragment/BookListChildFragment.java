package com.biquge.ebook.app.ui.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.eg;
import com.apk.g6;
import com.apk.ss;
import com.apk.ts;
import com.apk.u5;
import com.apk.v;
import com.apk.v3;
import com.apk.ze;
import com.biquge.ebook.app.ad.ads.AdViewBangDan;
import com.biquge.ebook.app.adapter.BookListAdapter;
import com.biquge.ebook.app.bean.BookElement;
import com.biquge.ebook.app.ui.activity.BookListDetailActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class BookListChildFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public BookListAdapter f7235case;

    /* renamed from: do  reason: not valid java name */
    public String f7236do;

    /* renamed from: else  reason: not valid java name */
    public JSONObject f7237else;

    /* renamed from: for  reason: not valid java name */
    public v3 f7238for;

    /* renamed from: goto  reason: not valid java name */
    public BookElement f7239goto;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.fragment_booklist_category_recyclerview)
    public RecyclerView mRecyclerView;

    /* renamed from: this  reason: not valid java name */
    public boolean f7242this;

    /* renamed from: try  reason: not valid java name */
    public boolean f7243try;

    /* renamed from: if  reason: not valid java name */
    public boolean f7240if = true;

    /* renamed from: new  reason: not valid java name */
    public int f7241new = 1;

    /* renamed from: break  reason: not valid java name */
    public final u5 f7234break = new Cnew();

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookListChildFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            BookListChildFragment.m3365synchronized(BookListChildFragment.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(BookListChildFragment.this.mRecyclerView);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookListChildFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cfor() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            BookListChildFragment.a(BookListChildFragment.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookListChildFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BookListChildFragment.this.mPtrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookListChildFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends u5 {
        public Cnew() {
        }

        @Override // com.apk.u5
        /* renamed from: catch */
        public void mo2671catch(List<BookElement> list, boolean z, int i) {
            BookListChildFragment.this.k(false);
            try {
                if (i == 1) {
                    if (BookListChildFragment.this.f7239goto != null && list != null) {
                        if (list.size() > 0) {
                            list.add(1, BookListChildFragment.this.f7239goto);
                        } else {
                            list.add(BookListChildFragment.this.f7239goto);
                        }
                    }
                    BookListChildFragment.h(BookListChildFragment.this, true, list, z, i);
                } else {
                    BookListChildFragment.h(BookListChildFragment.this, false, list, z, i);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            BookListChildFragment bookListChildFragment = BookListChildFragment.this;
            bookListChildFragment.f7243try = true;
            bookListChildFragment.f7242this = false;
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookListChildFragment$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ctry extends RecyclerView.OnScrollListener {
        public Ctry(Cdo cdo) {
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

    public static void a(BookListChildFragment bookListChildFragment) {
        if (bookListChildFragment != null) {
            try {
                if (bookListChildFragment.f7238for != null) {
                    bookListChildFragment.f7238for.m2768public(bookListChildFragment.f7240if, bookListChildFragment.f7236do, bookListChildFragment.f7241new, bookListChildFragment.f7242this);
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

    public static void h(BookListChildFragment bookListChildFragment, boolean z, List list, boolean z2, int i) {
        if (bookListChildFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                if (list == null) {
                    bookListChildFragment.f7235case.loadMoreFail();
                    return;
                }
                bookListChildFragment.f7235case.setNewData(list);
                if (z2) {
                    bookListChildFragment.f7235case.setEnableLoadMore(true);
                    bookListChildFragment.f7241new = i + 1;
                    return;
                }
                bookListChildFragment.f7235case.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                bookListChildFragment.f7235case.addData((Collection) list);
            }
            if (list == null) {
                bookListChildFragment.f7235case.loadMoreFail();
                return;
            } else if (z2) {
                bookListChildFragment.f7235case.loadMoreComplete();
                bookListChildFragment.f7241new = i + 1;
                return;
            } else {
                bookListChildFragment.f7235case.loadMoreEnd();
                return;
            }
        }
        throw null;
    }

    public static BookListChildFragment j(String str) {
        BookListChildFragment bookListChildFragment = new BookListChildFragment();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        bookListChildFragment.setArguments(bundle);
        return bookListChildFragment;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3365synchronized(BookListChildFragment bookListChildFragment) {
        if (bookListChildFragment != null) {
            try {
                bookListChildFragment.f7241new = 1;
                if (bookListChildFragment.f7238for != null) {
                    bookListChildFragment.f7238for.m2768public(bookListChildFragment.f7240if, bookListChildFragment.f7236do, 1, bookListChildFragment.f7242this);
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
        return R.layout.fragment_booklist_category;
    }

    public void i(boolean z) {
        this.f7242this = z;
        if (this.mRecyclerView == null || this.f7235case == null) {
            return;
        }
        this.mPtrClassicFrameLayout.f4550do = (byte) 1;
        k(true);
    }

    @Override // com.apk.g6
    public void initData() {
        String str;
        if ("new".equals(this.f7236do)) {
            if (Cfinally.m797else().m824synchronized()) {
                this.f7237else = Cfinally.m797else().b;
                BookElement bookElement = new BookElement();
                this.f7239goto = bookElement;
                bookElement.setItemType(3);
                str = "topicnew";
            }
            str = null;
        } else if ("hot".equals(this.f7236do)) {
            if (Cfinally.m797else().m812instanceof()) {
                this.f7237else = Cfinally.m797else().f1356instanceof;
                BookElement bookElement2 = new BookElement();
                this.f7239goto = bookElement2;
                bookElement2.setItemType(3);
                str = "topichot";
            }
            str = null;
        } else if ("collect".equals(this.f7236do)) {
            if (Cfinally.m797else().m828transient()) {
                this.f7237else = Cfinally.m797else().f1369synchronized;
                BookElement bookElement3 = new BookElement();
                this.f7239goto = bookElement3;
                bookElement3.setItemType(3);
                str = "topiccollect";
            }
            str = null;
        } else {
            if ("commend".equals(this.f7236do) && Cfinally.m797else().m810implements()) {
                this.f7237else = Cfinally.m797else().f11100a;
                BookElement bookElement4 = new BookElement();
                this.f7239goto = bookElement4;
                bookElement4.setItemType(3);
                str = "topicrecommend";
            }
            str = null;
        }
        BookListAdapter bookListAdapter = new BookListAdapter(getSupportActivity(), this.f7237else, str);
        this.f7235case = bookListAdapter;
        this.mRecyclerView.setAdapter(bookListAdapter);
        this.f7238for = new v3(getSupportActivity(), this.f7234break);
        i(false);
        this.f7235case.setOnItemClickListener(this);
        this.f7235case.setOnLoadMoreListener(new Cfor(), this.mRecyclerView);
    }

    @Override // com.apk.g6
    public void initView() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f7236do = arguments.getString("type");
        }
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        this.mRecyclerView.addOnScrollListener(new Ctry(null));
        PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    public final void k(boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Cif());
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
        BookListAdapter bookListAdapter = this.f7235case;
        if (bookListAdapter == null || (adViewBangDan = bookListAdapter.f6338for) == null) {
            return;
        }
        adViewBangDan.m3269try();
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            BookElement bookElement = (BookElement) this.f7235case.getItem(i);
            if (bookElement == null || bookElement.getItemType() == 3) {
                return;
            }
            BookListDetailActivity.k(getSupportActivity(), bookElement.getListId(), bookElement.getTitle());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        AdViewBangDan adViewBangDan;
        super.onPause();
        BookListAdapter bookListAdapter = this.f7235case;
        if (bookListAdapter == null || (adViewBangDan = bookListAdapter.f6338for) == null) {
            return;
        }
        adViewBangDan.f6294break = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        AdViewBangDan adViewBangDan;
        super.onResume();
        BookListAdapter bookListAdapter = this.f7235case;
        if (bookListAdapter == null || (adViewBangDan = bookListAdapter.f6338for) == null) {
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
            BookListAdapter bookListAdapter = this.f7235case;
            if (bookListAdapter == null || (adViewBangDan2 = bookListAdapter.f6338for) == null) {
                return;
            }
            adViewBangDan2.f6294break = false;
            return;
        }
        BookListAdapter bookListAdapter2 = this.f7235case;
        if (bookListAdapter2 == null || (adViewBangDan = bookListAdapter2.f6338for) == null) {
            return;
        }
        adViewBangDan.f6294break = true;
    }
}
