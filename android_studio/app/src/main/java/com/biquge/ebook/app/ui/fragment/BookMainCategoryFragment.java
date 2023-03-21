package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cfinally;
import com.apk.b40;
import com.apk.eg;
import com.apk.g6;
import com.apk.i6;
import com.apk.lq0;
import com.apk.nt;
import com.apk.nz;
import com.apk.ot;
import com.apk.q0;
import com.apk.ss;
import com.apk.tr0;
import com.apk.ts;
import com.apk.u5;
import com.apk.v;
import com.apk.v3;
import com.apk.w;
import com.apk.ze;
import com.biquge.ebook.app.adapter.BookParentCategoryAdapter;
import com.biquge.ebook.app.adapter.LeftCategoryAdapter;
import com.biquge.ebook.app.adapter.NovelRankListAdapter;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.NovelCategory;
import com.biquge.ebook.app.bean.RankListBean;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.activity.BookListCategoryActivity;
import com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.google.gson.internal.bind.TypeAdapters;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class BookMainCategoryFragment extends g6 {

    /* renamed from: throw  reason: not valid java name */
    public static final String[] f7258throw = {"week", TypeAdapters.AnonymousClass27.MONTH, "total"};

    /* renamed from: break  reason: not valid java name */
    public NovelRankListAdapter f7259break;

    /* renamed from: catch  reason: not valid java name */
    public JSONObject f7261catch;
    @BindView(R.id.fragment_category_recyclerview)
    public RecyclerView categoryRecyclerView;

    /* renamed from: class  reason: not valid java name */
    public boolean f7262class;
    @BindView(R.id.rv_list)
    public RecyclerView dataRecyclerView;

    /* renamed from: else  reason: not valid java name */
    public String f7265else;

    /* renamed from: for  reason: not valid java name */
    public int f7267for;

    /* renamed from: goto  reason: not valid java name */
    public BookParentCategoryAdapter f7268goto;

    /* renamed from: if  reason: not valid java name */
    public v3 f7269if;
    @BindView(R.id.category_sex_indicatorview)
    public ScrollIndicatorView mSexIView;

    /* renamed from: new  reason: not valid java name */
    public int f7270new;
    @BindView(R.id.parent_category_layout)
    public FrameLayout parentCategoryLayout;
    @BindView(R.id.parent_category_rv_list)
    public RecyclerView parentCategoryRecyclerView;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout ptrClassicFrameLayout;

    /* renamed from: this  reason: not valid java name */
    public LeftCategoryAdapter f7272this;
    @BindView(R.id.time_choose)
    public TextView time_choose;

    /* renamed from: do  reason: not valid java name */
    public final String[] f7264do = q0.m2102try();

    /* renamed from: try  reason: not valid java name */
    public int f7273try = 1;

    /* renamed from: case  reason: not valid java name */
    public String f7260case = "week";

    /* renamed from: const  reason: not valid java name */
    public final u5 f7263const = new Ccase();

    /* renamed from: final  reason: not valid java name */
    public final b40.Cnew f7266final = new Cgoto();

    /* renamed from: super  reason: not valid java name */
    public nt.Cdo f7271super = new Cthis();

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment$break  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cbreak extends RecyclerView.OnScrollListener {
        public Cbreak(Cdo cdo) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0) {
                int i2 = BookMainCategoryFragment.this.f7267for;
                if (i2 != 1 && i2 != 2 && i2 != 3 && i2 == 4) {
                }
                BookMainCategoryFragment.this.mSexIView.getCurrentItem();
                int i3 = BookMainCategoryFragment.this.f7270new;
                if (v.m2734do() == null) {
                    throw null;
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase extends u5 {
        public Ccase() {
        }

        @Override // com.apk.u5
        /* renamed from: for */
        public void mo2677for(List<NovelCategory> list) {
            BookParentCategoryAdapter bookParentCategoryAdapter = BookMainCategoryFragment.this.f7268goto;
            if (bookParentCategoryAdapter != null) {
                bookParentCategoryAdapter.setNewData(list);
            }
        }

        @Override // com.apk.u5
        /* renamed from: switch */
        public void mo2687switch() {
            BookMainCategoryFragment.this.m(false);
            NovelRankListAdapter novelRankListAdapter = BookMainCategoryFragment.this.f7259break;
            if (novelRankListAdapter != null) {
                novelRankListAdapter.loadMoreFail();
            }
        }

        @Override // com.apk.u5
        /* renamed from: try */
        public void mo2690try(List<Book> list, boolean z, int i) {
            BookMainCategoryFragment.this.m(false);
            if (i == 1) {
                if (BookMainCategoryFragment.this.f7262class && list != null && list.size() > 0) {
                    Book book = new Book();
                    book.setItemType(2);
                    if (list.size() < 3) {
                        list.add(book);
                    } else {
                        list.add(2, book);
                    }
                }
                BookMainCategoryFragment.f(BookMainCategoryFragment.this, true, list, z);
                return;
            }
            BookMainCategoryFragment.f(BookMainCategoryFragment.this, false, list, z);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemClickListener {
        public Cdo() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            BookMainCategoryFragment.this.l(i);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements Runnable {
        public Celse() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PtrClassicFrameLayout ptrClassicFrameLayout = BookMainCategoryFragment.this.ptrClassicFrameLayout;
            ptrClassicFrameLayout.f4550do = (byte) 1;
            ptrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements BaseQuickAdapter.OnItemClickListener {
        public Cfor() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            RankListBean item;
            try {
                if (BookMainCategoryFragment.this.f7272this == null || (item = BookMainCategoryFragment.this.f7272this.getItem(BookMainCategoryFragment.this.f7267for)) == null) {
                    return;
                }
                BookDetailActivity.t(BookMainCategoryFragment.this.getSupportActivity(), "分类|" + item.getTitle() + "|" + (i + 1), (Book) BookMainCategoryFragment.this.f7259break.getItem(i));
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto implements b40.Cnew {
        public Cgoto() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            BookMainCategoryFragment bookMainCategoryFragment = BookMainCategoryFragment.this;
            bookMainCategoryFragment.f7265else = q0.f3779this[bookMainCategoryFragment.mSexIView.getCurrentItem()];
            BookMainCategoryFragment.this.m(true);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.OnItemClickListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            BookListCategoryActivity.i(BookMainCategoryFragment.this.getSupportActivity(), (NovelCategory) BookMainCategoryFragment.this.f7268goto.getItem(i));
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cnew() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            BookMainCategoryFragment.h(BookMainCategoryFragment.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthis implements nt.Cdo {
        public Cthis() {
        }

        @Override // com.apk.nt.Cdo
        public void onDismiss() {
        }

        @Override // com.apk.nt.Cdo
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            BookMainCategoryFragment bookMainCategoryFragment = BookMainCategoryFragment.this;
            bookMainCategoryFragment.f7270new = i;
            bookMainCategoryFragment.f7260case = BookMainCategoryFragment.f7258throw[i];
            bookMainCategoryFragment.time_choose.setText(bookMainCategoryFragment.f7264do[i]);
            BookMainCategoryFragment.this.m(true);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMainCategoryFragment$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements ts {
        public Ctry() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            try {
                if (BookMainCategoryFragment.this.f7269if != null) {
                    BookMainCategoryFragment.this.f7273try = 1;
                    RankListBean item = BookMainCategoryFragment.this.f7272this.getItem(BookMainCategoryFragment.this.f7267for);
                    if (item != null) {
                        BookMainCategoryFragment.this.f7269if.m2772switch(w.m2859switch(BookMainCategoryFragment.this.f7265else, item.getId(), BookMainCategoryFragment.this.f7260case, BookMainCategoryFragment.this.f7273try), BookMainCategoryFragment.this.f7273try);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(BookMainCategoryFragment.this.dataRecyclerView);
        }
    }

    public static void f(BookMainCategoryFragment bookMainCategoryFragment, boolean z, List list, boolean z2) {
        if (bookMainCategoryFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                bookMainCategoryFragment.f7259break.setNewData(list);
                if (z2) {
                    bookMainCategoryFragment.f7259break.setEnableLoadMore(true);
                    bookMainCategoryFragment.f7273try++;
                    return;
                }
                bookMainCategoryFragment.f7259break.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                bookMainCategoryFragment.f7259break.addData((Collection) list);
            }
            if (z2) {
                bookMainCategoryFragment.f7259break.loadMoreComplete();
                bookMainCategoryFragment.f7273try++;
                return;
            }
            bookMainCategoryFragment.f7259break.loadMoreEnd();
            return;
        }
        throw null;
    }

    public static void h(BookMainCategoryFragment bookMainCategoryFragment) {
        RankListBean item;
        if (bookMainCategoryFragment != null) {
            try {
                if (bookMainCategoryFragment.f7269if == null || (item = bookMainCategoryFragment.f7272this.getItem(bookMainCategoryFragment.f7267for)) == null) {
                    return;
                }
                bookMainCategoryFragment.f7269if.m2772switch(w.m2859switch(bookMainCategoryFragment.f7265else, item.getId(), bookMainCategoryFragment.f7260case, bookMainCategoryFragment.f7273try), bookMainCategoryFragment.f7273try);
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
        return R.layout.fragment_book_home_rank;
    }

    public final ot i(String str, int i) {
        ot otVar = new ot();
        otVar.f3498if = str;
        otVar.f3497for = lq0.m1660do(AppContext.f6392case, tr0.m2617do(R.color.color_333333));
        otVar.f3499new = this.f7270new == i;
        return otVar;
    }

    @Override // com.apk.g6
    public void initData() {
        this.f7269if = new v3(getSupportActivity(), this.f7263const);
        this.parentCategoryLayout.post(new Runnable() { // from class: com.apk.ga
            @Override // java.lang.Runnable
            public final void run() {
                BookMainCategoryFragment.this.j();
            }
        });
        k();
    }

    @Override // com.apk.g6
    public void initView() {
        if (Cfinally.m797else().b()) {
            this.f7261catch = Cfinally.m797else().c;
            this.f7262class = true;
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
        this.f7272this = leftCategoryAdapter;
        this.categoryRecyclerView.setAdapter(leftCategoryAdapter);
        this.f7272this.setOnItemClickListener(new Cdo());
        this.parentCategoryRecyclerView.setLayoutManager(new GridLayoutManager(getSupportActivity(), 2));
        this.parentCategoryRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.parentCategoryRecyclerView);
        BookParentCategoryAdapter bookParentCategoryAdapter = new BookParentCategoryAdapter();
        this.f7268goto = bookParentCategoryAdapter;
        this.parentCategoryRecyclerView.setAdapter(bookParentCategoryAdapter);
        this.f7268goto.setOnItemClickListener(new Cif());
        this.dataRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        this.dataRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.dataRecyclerView);
        NovelRankListAdapter novelRankListAdapter = new NovelRankListAdapter(getSupportActivity(), this.f7261catch, "topweek", false);
        this.f7259break = novelRankListAdapter;
        this.dataRecyclerView.setAdapter(novelRankListAdapter);
        this.dataRecyclerView.addOnScrollListener(new Cbreak(null));
        this.f7259break.setOnItemClickListener(new Cfor());
        this.f7259break.setOnLoadMoreListener(new Cnew(), this.dataRecyclerView);
        int m587catch = eg.m587catch(60.0f);
        int m614switch = eg.m614switch() / q0.f3770break.length;
        if (m614switch > m587catch && m614switch < eg.m587catch(75.0f)) {
            m587catch = m614switch;
        }
        this.mSexIView.setSplitAuto(false);
        this.f7265else = q0.f3779this[0];
        ScrollIndicatorView scrollIndicatorView = this.mSexIView;
        String[] strArr = q0.f3776goto;
        b40.Cnew cnew = this.f7266final;
        if (strArr != null && strArr.length > 0) {
            scrollIndicatorView.setAdapter(new nz(getSupportActivity(), strArr, m587catch));
            ze.u(getSupportActivity(), scrollIndicatorView, 25, 14);
            scrollIndicatorView.setOnItemSelectListener(cnew);
        } else {
            scrollIndicatorView.setVisibility(8);
        }
        this.ptrClassicFrameLayout.setPtrHandler(new Ctry());
    }

    public /* synthetic */ void j() {
        l(1);
    }

    public final void k() {
        BookParentCategoryAdapter bookParentCategoryAdapter;
        if (this.f7269if != null && (bookParentCategoryAdapter = this.f7268goto) != null && bookParentCategoryAdapter.getItemCount() == 0) {
            this.f7269if.m2769return();
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
                this.f7270new = 0;
                this.f7260case = f7258throw[0];
                this.time_choose.setText(this.f7264do[0]);
                m(true);
                if (this.parentCategoryLayout.getVisibility() != 8) {
                    this.parentCategoryLayout.setVisibility(8);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f7267for = i;
        LeftCategoryAdapter leftCategoryAdapter = this.f7272this;
        leftCategoryAdapter.f6356do = i;
        leftCategoryAdapter.notifyDataSetChanged();
    }

    public final void m(boolean z) {
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

    @OnClick({R.id.time_choose})
    public void menuClick() {
        i6 supportActivity = getSupportActivity();
        ArrayList arrayList = new ArrayList();
        arrayList.add(i(ze.q(R.string.rank_week_txt), 0));
        arrayList.add(i(ze.q(R.string.rank_month_txt), 1));
        arrayList.add(i(ze.q(R.string.rank_all_txt), 2));
        nt ntVar = new nt(supportActivity, arrayList, this.f7271super, false, true);
        ntVar.m1915if(eg.m587catch(100.0f));
        ntVar.m1913do(8388613);
        ntVar.f3309for = true;
        ntVar.m1914for(this.time_choose);
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        NovelRankListAdapter novelRankListAdapter = this.f7259break;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3287do();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        NovelRankListAdapter novelRankListAdapter = this.f7259break;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3289if();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        NovelRankListAdapter novelRankListAdapter = this.f7259break;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3288for();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            NovelRankListAdapter novelRankListAdapter = this.f7259break;
            if (novelRankListAdapter != null) {
                novelRankListAdapter.m3288for();
                return;
            }
            return;
        }
        NovelRankListAdapter novelRankListAdapter2 = this.f7259break;
        if (novelRankListAdapter2 != null) {
            novelRankListAdapter2.m3289if();
        }
    }
}
