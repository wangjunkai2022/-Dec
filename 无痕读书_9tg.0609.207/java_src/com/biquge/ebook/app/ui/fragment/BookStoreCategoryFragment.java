package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cfinally;
import com.apk.Cgoto;
import com.apk.b40;
import com.apk.eg;
import com.apk.g6;
import com.apk.gb;
import com.apk.hb;
import com.apk.i6;
import com.apk.ib;
import com.apk.lv;
import com.apk.nz;
import com.apk.pv;
import com.apk.q0;
import com.apk.ss;
import com.apk.ts;
import com.apk.u5;
import com.apk.v3;
import com.apk.w;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.adapter.NovelRankListAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.NovelCategory;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.biquge.ebook.app.ui.view.NovelCategoryThemePopupView;
import com.biquge.ebook.app.widget.ScrollHeaderLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.lxj.xpopup.core.PositionPopupView;
import com.manhua.ui.widget.PageRecyclerView;
import com.manhua.ui.widget.PublicLoadingView;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class BookStoreCategoryFragment extends g6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: const  reason: not valid java name */
    public static final String[] f7387const = {"hot", "new", "vote", "over"};

    /* renamed from: break  reason: not valid java name */
    public List<NovelCategory> f7388break;

    /* renamed from: case  reason: not valid java name */
    public v3 f7389case;

    /* renamed from: do  reason: not valid java name */
    public String[] f7392do;

    /* renamed from: else  reason: not valid java name */
    public NovelRankListAdapter f7393else;

    /* renamed from: for  reason: not valid java name */
    public ScrollHeaderLayout f7394for;

    /* renamed from: if  reason: not valid java name */
    public String[] f7396if;
    @BindView(R.id.comic_category_header_txt)
    public TextView mHeaderTxt;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.public_loadingview)
    public PublicLoadingView mPublicLoadingView;
    @BindView(R.id.category_recyclerview)
    public PageRecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public ScrollIndicatorView f7397new;

    /* renamed from: this  reason: not valid java name */
    public boolean f7398this;

    /* renamed from: try  reason: not valid java name */
    public ScrollIndicatorView f7399try;

    /* renamed from: goto  reason: not valid java name */
    public int f7395goto = 1;

    /* renamed from: catch  reason: not valid java name */
    public final u5 f7390catch = new Ctry();

    /* renamed from: class  reason: not valid java name */
    public final b40.Cnew f7391class = new Ccase();

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreCategoryFragment$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements b40.Cnew {
        public Ccase() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            BookStoreCategoryFragment.h(BookStoreCategoryFragment.this, true);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreCategoryFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements PublicLoadingView.Cdo {
        public Cdo() {
        }

        @Override // com.manhua.ui.widget.PublicLoadingView.Cdo
        /* renamed from: do */
        public void mo1847do() {
            v3 v3Var = BookStoreCategoryFragment.this.f7389case;
            if (v3Var != null) {
                v3Var.m2769return();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreCategoryFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends RecyclerView.OnScrollListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ LinearLayoutManager f7402do;

        public Cfor(LinearLayoutManager linearLayoutManager) {
            this.f7402do = linearLayoutManager;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            if (this.f7402do.findFirstVisibleItemPosition() == 0) {
                if (BookStoreCategoryFragment.this.mHeaderTxt.getVisibility() != 8) {
                    BookStoreCategoryFragment.this.mHeaderTxt.setVisibility(8);
                }
            } else if (BookStoreCategoryFragment.this.mHeaderTxt.getVisibility() != 0) {
                BookStoreCategoryFragment bookStoreCategoryFragment = BookStoreCategoryFragment.this;
                TextView textView = bookStoreCategoryFragment.mHeaderTxt;
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(bookStoreCategoryFragment.f7392do[bookStoreCategoryFragment.f7397new.getCurrentItem()]);
                stringBuffer.append("  ->  ");
                stringBuffer.append(q0.m2099for()[bookStoreCategoryFragment.f7399try.getCurrentItem()]);
                textView.setText(stringBuffer.toString());
                BookStoreCategoryFragment.this.mHeaderTxt.setVisibility(0);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreCategoryFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ts {
        public Cif() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            BookStoreCategoryFragment bookStoreCategoryFragment = BookStoreCategoryFragment.this;
            String str = bookStoreCategoryFragment.f7396if[bookStoreCategoryFragment.f7397new.getCurrentItem()];
            String str2 = BookStoreCategoryFragment.f7387const[bookStoreCategoryFragment.f7399try.getCurrentItem()];
            try {
                bookStoreCategoryFragment.f7395goto = 1;
                bookStoreCategoryFragment.f7389case.m2772switch(w.m2848for(str, str2, 1), bookStoreCategoryFragment.f7395goto);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            BookStoreCategoryFragment bookStoreCategoryFragment = BookStoreCategoryFragment.this;
            return !bookStoreCategoryFragment.f7394for.f8118do && eg.m586case(bookStoreCategoryFragment.mRecyclerView);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreCategoryFragment$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cnew() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            BookStoreCategoryFragment.f(BookStoreCategoryFragment.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreCategoryFragment$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry extends u5 {
        public Ctry() {
        }

        @Override // com.apk.u5
        /* renamed from: for */
        public void mo2677for(List<NovelCategory> list) {
            BookStoreCategoryFragment.this.f7388break = list;
            if (list != null && list.size() > 0) {
                int size = list.size();
                BookStoreCategoryFragment bookStoreCategoryFragment = BookStoreCategoryFragment.this;
                bookStoreCategoryFragment.f7392do = new String[size];
                bookStoreCategoryFragment.f7396if = new String[size];
                for (int i = 0; i < size; i++) {
                    NovelCategory novelCategory = list.get(i);
                    BookStoreCategoryFragment.this.f7392do[i] = novelCategory.getName();
                    BookStoreCategoryFragment.this.f7396if[i] = novelCategory.getCId();
                }
                BookStoreCategoryFragment bookStoreCategoryFragment2 = BookStoreCategoryFragment.this;
                ScrollHeaderLayout scrollHeaderLayout = bookStoreCategoryFragment2.f7394for;
                ScrollIndicatorView scrollIndicatorView = (ScrollIndicatorView) scrollHeaderLayout.findViewById(R.id.header_ranking_channel_indicator);
                bookStoreCategoryFragment2.f7397new = scrollIndicatorView;
                scrollIndicatorView.setSplitAuto(false);
                ScrollIndicatorView scrollIndicatorView2 = (ScrollIndicatorView) scrollHeaderLayout.findViewById(R.id.header_ranking_rank_indicator);
                bookStoreCategoryFragment2.f7399try = scrollIndicatorView2;
                scrollIndicatorView2.setSplitAuto(false);
                bookStoreCategoryFragment2.f7394for.findViewById(R.id.header_ranking_edit_menu).setOnClickListener(new gb(bookStoreCategoryFragment2));
                bookStoreCategoryFragment2.i(bookStoreCategoryFragment2.f7397new, bookStoreCategoryFragment2.f7392do, bookStoreCategoryFragment2.f7391class, eg.m587catch(75.0f));
                bookStoreCategoryFragment2.i(bookStoreCategoryFragment2.f7399try, q0.m2099for(), bookStoreCategoryFragment2.f7391class, eg.m587catch(55.0f));
                BookStoreCategoryFragment bookStoreCategoryFragment3 = BookStoreCategoryFragment.this;
                if (bookStoreCategoryFragment3.f7389case != null) {
                    BookStoreCategoryFragment.h(bookStoreCategoryFragment3, true);
                }
                PublicLoadingView publicLoadingView = BookStoreCategoryFragment.this.mPublicLoadingView;
                if (publicLoadingView != null) {
                    publicLoadingView.m3666for();
                    return;
                }
                return;
            }
            PublicLoadingView publicLoadingView2 = BookStoreCategoryFragment.this.mPublicLoadingView;
            if (publicLoadingView2 != null) {
                publicLoadingView2.setError(null);
            }
        }

        @Override // com.apk.u5
        /* renamed from: switch */
        public void mo2687switch() {
            BookStoreCategoryFragment.h(BookStoreCategoryFragment.this, false);
            NovelRankListAdapter novelRankListAdapter = BookStoreCategoryFragment.this.f7393else;
            if (novelRankListAdapter != null) {
                novelRankListAdapter.loadMoreFail();
            }
        }

        @Override // com.apk.u5
        /* renamed from: try */
        public void mo2690try(List<Book> list, boolean z, int i) {
            BookStoreCategoryFragment.h(BookStoreCategoryFragment.this, false);
            if (i == 1) {
                if (BookStoreCategoryFragment.this.f7398this && list.size() > 0) {
                    Book book = new Book();
                    book.setItemType(2);
                    if (list.size() < 3) {
                        list.add(book);
                    } else {
                        list.add(2, book);
                    }
                }
                BookStoreCategoryFragment.m3372synchronized(BookStoreCategoryFragment.this, true, list, z);
                return;
            }
            BookStoreCategoryFragment.m3372synchronized(BookStoreCategoryFragment.this, false, list, z);
        }
    }

    public static void a(BookStoreCategoryFragment bookStoreCategoryFragment) {
        bookStoreCategoryFragment.getContext();
        lv lvVar = new lv();
        lvVar.f2929native = pv.Right;
        NovelCategoryThemePopupView novelCategoryThemePopupView = new NovelCategoryThemePopupView(bookStoreCategoryFragment.getSupportActivity(), bookStoreCategoryFragment.f7397new.getCurrentItem(), bookStoreCategoryFragment.f7388break, new hb(bookStoreCategoryFragment));
        if (novelCategoryThemePopupView instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (novelCategoryThemePopupView instanceof BottomPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (novelCategoryThemePopupView instanceof AttachPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (novelCategoryThemePopupView instanceof ImageViewerPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else if (novelCategoryThemePopupView instanceof PositionPopupView) {
            lvVar.f2917continue = zu.f6266try;
        }
        novelCategoryThemePopupView.popupInfo = lvVar;
        novelCategoryThemePopupView.show();
    }

    public static void f(BookStoreCategoryFragment bookStoreCategoryFragment) {
        if (bookStoreCategoryFragment != null) {
            try {
                String str = bookStoreCategoryFragment.f7396if[bookStoreCategoryFragment.f7397new.getCurrentItem()];
                String str2 = f7387const[bookStoreCategoryFragment.f7399try.getCurrentItem()];
                bookStoreCategoryFragment.f7389case.m2772switch(w.m2848for(str, str, bookStoreCategoryFragment.f7395goto), bookStoreCategoryFragment.f7395goto);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void h(BookStoreCategoryFragment bookStoreCategoryFragment, boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = bookStoreCategoryFragment.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new ib(bookStoreCategoryFragment));
                return;
            }
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = bookStoreCategoryFragment.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.m2532break();
        }
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static void m3372synchronized(BookStoreCategoryFragment bookStoreCategoryFragment, boolean z, List list, boolean z2) {
        if (bookStoreCategoryFragment != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                bookStoreCategoryFragment.f7393else.setNewData(list);
                if (z2) {
                    bookStoreCategoryFragment.f7393else.setEnableLoadMore(true);
                    bookStoreCategoryFragment.f7395goto++;
                    return;
                }
                bookStoreCategoryFragment.f7393else.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                bookStoreCategoryFragment.f7393else.addData((Collection) list);
            }
            if (z2) {
                bookStoreCategoryFragment.f7393else.loadMoreComplete();
                bookStoreCategoryFragment.f7395goto++;
                return;
            }
            bookStoreCategoryFragment.f7393else.loadMoreEnd();
            return;
        }
        throw null;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.activity_book_store_category;
    }

    public final void i(ScrollIndicatorView scrollIndicatorView, String[] strArr, b40.Cnew cnew, int i) {
        if (strArr != null && strArr.length > 0) {
            scrollIndicatorView.setAdapter(new nz(getSupportActivity(), strArr, i));
            ze.u(getSupportActivity(), scrollIndicatorView, 30, 14);
            scrollIndicatorView.setOnItemSelectListener(cnew);
            return;
        }
        scrollIndicatorView.setVisibility(8);
    }

    @Override // com.apk.g6
    public void initData() {
        JSONObject jSONObject;
        this.f7389case = new v3(getSupportActivity(), this.f7390catch);
        if (Cfinally.m797else().m818public()) {
            this.f7398this = true;
            jSONObject = Cfinally.m797else().h;
        } else {
            jSONObject = null;
        }
        NovelRankListAdapter novelRankListAdapter = new NovelRankListAdapter(getSupportActivity(), jSONObject, "categorylist", true);
        this.f7393else = novelRankListAdapter;
        this.mRecyclerView.setAdapter(novelRankListAdapter);
        ScrollHeaderLayout scrollHeaderLayout = (ScrollHeaderLayout) View.inflate(getSupportActivity(), R.layout.book_header_category_layout, null);
        this.f7394for = scrollHeaderLayout;
        this.f7393else.addHeaderView(scrollHeaderLayout);
        this.f7389case.m2769return();
        this.f7393else.setOnLoadMoreListener(new Cnew(), this.mRecyclerView);
        this.f7393else.setOnItemClickListener(this);
    }

    @Override // com.apk.g6
    public void initView() {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getSupportActivity());
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        this.mRecyclerView.setHasFixedSize(true);
        ze.m3165else(this.mRecyclerView);
        this.mPublicLoadingView.setReloadListener(new Cdo());
        this.mPtrClassicFrameLayout.setPtrHandler(new Cif());
        this.mRecyclerView.addOnScrollListener(new Cfor(linearLayoutManager));
    }

    @OnClick({R.id.comic_category_header_txt})
    public void menuClick() {
        this.mRecyclerView.m3664if(0);
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        NovelRankListAdapter novelRankListAdapter = this.f7393else;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3287do();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Book book = (Book) this.f7393else.getItem(i);
        if (book == null || book.getItemType() != 1) {
            return;
        }
        i6 supportActivity = getSupportActivity();
        StringBuilder m1016super = Cgoto.m1016super("精选|分类页面|");
        m1016super.append(i + 1);
        BookDetailActivity.t(supportActivity, m1016super.toString(), book);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        NovelRankListAdapter novelRankListAdapter = this.f7393else;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3289if();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        NovelRankListAdapter novelRankListAdapter = this.f7393else;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3288for();
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            NovelRankListAdapter novelRankListAdapter = this.f7393else;
            if (novelRankListAdapter != null) {
                novelRankListAdapter.m3288for();
                return;
            }
            return;
        }
        NovelRankListAdapter novelRankListAdapter2 = this.f7393else;
        if (novelRankListAdapter2 != null) {
            novelRankListAdapter2.m3289if();
        }
    }
}
