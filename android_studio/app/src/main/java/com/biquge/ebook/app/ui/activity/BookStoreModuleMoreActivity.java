package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cfinally;
import com.apk.eg;
import com.apk.f6;
import com.apk.ss;
import com.apk.ts;
import com.apk.u5;
import com.apk.v3;
import com.apk.ze;
import com.biquge.ebook.app.adapter.NovelRankListAdapter;
import com.biquge.ebook.app.bean.Book;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import java.util.Collection;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;

/* loaded from: classes8.dex */
public class BookStoreModuleMoreActivity extends f6 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: case  reason: not valid java name */
    public JSONObject f6522case;

    /* renamed from: do  reason: not valid java name */
    public NovelRankListAdapter f6523do;

    /* renamed from: for  reason: not valid java name */
    public String f6525for;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout mPtrClassicFrameLayout;
    @BindView(R.id.rv_list)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public String f6527new;

    /* renamed from: try  reason: not valid java name */
    public v3 f6528try;

    /* renamed from: if  reason: not valid java name */
    public int f6526if = 1;

    /* renamed from: else  reason: not valid java name */
    public final u5 f6524else = new Cnew();

    /* renamed from: com.biquge.ebook.app.ui.activity.BookStoreModuleMoreActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            BookStoreModuleMoreActivity.i(BookStoreModuleMoreActivity.this);
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(BookStoreModuleMoreActivity.this.mRecyclerView);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookStoreModuleMoreActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {
        public Cfor() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BookStoreModuleMoreActivity.this.mPtrClassicFrameLayout.m2541if();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookStoreModuleMoreActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.RequestLoadMoreListener {
        public Cif() {
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
        public void onLoadMoreRequested() {
            BookStoreModuleMoreActivity.j(BookStoreModuleMoreActivity.this);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.BookStoreModuleMoreActivity$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew extends u5 {
        public Cnew() {
        }

        @Override // com.apk.u5
        /* renamed from: switch */
        public void mo2687switch() {
            BookStoreModuleMoreActivity.this.n(false);
            NovelRankListAdapter novelRankListAdapter = BookStoreModuleMoreActivity.this.f6523do;
            if (novelRankListAdapter != null) {
                novelRankListAdapter.loadMoreFail();
            }
        }

        @Override // com.apk.u5
        /* renamed from: try */
        public void mo2690try(List<Book> list, boolean z, int i) {
            BookStoreModuleMoreActivity.this.n(false);
            if (i == 1) {
                if (BookStoreModuleMoreActivity.this.f6522case != null && list != null && list.size() > 0) {
                    Book book = new Book();
                    book.setItemType(2);
                    if (list.size() < 3) {
                        list.add(book);
                    } else {
                        list.add(2, book);
                    }
                }
                BookStoreModuleMoreActivity.l(BookStoreModuleMoreActivity.this, true, list, z, i);
                return;
            }
            BookStoreModuleMoreActivity.l(BookStoreModuleMoreActivity.this, false, list, z, i);
        }
    }

    public static void i(BookStoreModuleMoreActivity bookStoreModuleMoreActivity) {
        if (bookStoreModuleMoreActivity != null) {
            try {
                if (bookStoreModuleMoreActivity.f6528try != null) {
                    bookStoreModuleMoreActivity.f6526if = 1;
                    bookStoreModuleMoreActivity.f6528try.m2772switch(bookStoreModuleMoreActivity.f6527new, 1);
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

    public static void j(BookStoreModuleMoreActivity bookStoreModuleMoreActivity) {
        if (bookStoreModuleMoreActivity != null) {
            try {
                if (bookStoreModuleMoreActivity.f6528try != null) {
                    bookStoreModuleMoreActivity.f6528try.m2772switch(bookStoreModuleMoreActivity.f6527new, bookStoreModuleMoreActivity.f6526if);
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

    public static void l(BookStoreModuleMoreActivity bookStoreModuleMoreActivity, boolean z, List list, boolean z2, int i) {
        if (bookStoreModuleMoreActivity != null) {
            int size = list == null ? 0 : list.size();
            if (z) {
                bookStoreModuleMoreActivity.f6523do.setNewData(list);
                if (z2) {
                    bookStoreModuleMoreActivity.f6523do.setEnableLoadMore(true);
                    bookStoreModuleMoreActivity.f6526if = i + 1;
                    return;
                }
                bookStoreModuleMoreActivity.f6523do.setEnableLoadMore(false);
                return;
            }
            if (size > 0) {
                bookStoreModuleMoreActivity.f6523do.addData((Collection) list);
            }
            if (z2) {
                bookStoreModuleMoreActivity.f6523do.loadMoreComplete();
                bookStoreModuleMoreActivity.f6526if = i + 1;
                return;
            }
            bookStoreModuleMoreActivity.f6523do.loadMoreEnd();
            return;
        }
        throw null;
    }

    public static void m(Context context, String str, String str2) {
        Intent intent = new Intent(context, BookStoreModuleMoreActivity.class);
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
        this.f6528try = new v3(this, this.f6524else);
        if (Cfinally.m797else().b()) {
            this.f6522case = Cfinally.m797else().c;
        }
        NovelRankListAdapter novelRankListAdapter = new NovelRankListAdapter(this, this.f6522case, "topweek", true);
        this.f6523do = novelRankListAdapter;
        this.mRecyclerView.setAdapter(novelRankListAdapter);
        this.f6523do.setOnItemClickListener(this);
        this.f6523do.setOnLoadMoreListener(new Cif(), this.mRecyclerView);
        n(true);
    }

    @Override // com.apk.f6
    public void initView() {
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("EXTRA_TITLE_KEY");
            this.f6525for = stringExtra;
            initTopBarOnlyTitle(R.id.activity_module_more_toolbar, stringExtra);
            this.f6527new = intent.getStringExtra("EXTRA_URL_KEY");
        }
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        ze.m3165else(this.mRecyclerView);
        this.mPtrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    public final void n(boolean z) {
        if (z) {
            PtrClassicFrameLayout ptrClassicFrameLayout = this.mPtrClassicFrameLayout;
            if (ptrClassicFrameLayout != null) {
                ptrClassicFrameLayout.post(new Cfor());
                return;
            }
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout2 = this.mPtrClassicFrameLayout;
        if (ptrClassicFrameLayout2 != null) {
            ptrClassicFrameLayout2.m2532break();
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        NovelRankListAdapter novelRankListAdapter = this.f6523do;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3287do();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            Book book = (Book) this.f6523do.getItem(i);
            if (book == null || book.getItemType() != 1) {
                return;
            }
            BookDetailActivity.t(this, "书城模块|" + this.f6525for + "|更多>|" + (i + 1), book);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        NovelRankListAdapter novelRankListAdapter = this.f6523do;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3289if();
        }
    }

    @Override // com.apk.i6, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        NovelRankListAdapter novelRankListAdapter = this.f6523do;
        if (novelRankListAdapter != null) {
            novelRankListAdapter.m3288for();
        }
    }
}
