package com.biquge.ebook.app.ui.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.Cgoto;
import com.apk.b1;
import com.apk.ft;
import com.apk.g6;
import com.apk.l4;
import com.apk.m4;
import com.apk.mf;
import com.apk.u5;
import com.apk.v3;
import com.apk.w;
import com.apk.x3;
import com.apk.x4;
import com.apk.xw;
import com.apk.ze;
import com.biquge.ebook.app.adapter.BookListAdapter;
import com.biquge.ebook.app.bean.BookElement;
import com.biquge.ebook.app.bean.CreateBookList;
import com.biquge.ebook.app.ui.activity.BookListDetailActivity;
import com.biquge.ebook.app.ui.activity.CreateBookListActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hjq.toast.ToastUtils;
import com.qq.e.comm.constants.ErrorCode;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.litepal.LitePal;

/* loaded from: classes8.dex */
public class BookMyListChildFragment extends g6 implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemLongClickListener {

    /* renamed from: do  reason: not valid java name */
    public String f7287do;

    /* renamed from: for  reason: not valid java name */
    public v3 f7288for;

    /* renamed from: if  reason: not valid java name */
    public BookListAdapter f7289if;
    @BindView(R.id.fragment_booklist_chaild_recyclerview)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public final u5 f7290new = new Cdo();

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMyListChildFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends u5 {
        public Cdo() {
        }

        @Override // com.apk.u5
        /* renamed from: break */
        public void mo2669break(boolean z, CreateBookList createBookList) {
            try {
                if (z) {
                    BookListDetailActivity.k(BookMyListChildFragment.this.getSupportActivity(), createBookList.getBookListId(), createBookList.getTitle());
                } else if (createBookList != null && createBookList.isCheck()) {
                    Intent intent = new Intent(BookMyListChildFragment.this.getSupportActivity(), CreateBookListActivity.class);
                    intent.putExtra("type", "my_release");
                    intent.putExtra("createBookList", createBookList);
                    BookMyListChildFragment.this.getSupportActivity().startActivityForResult(intent, ErrorCode.INIT_ERROR);
                } else {
                    ToastUtils.show((int) R.string.element_my_booklist_check_txt);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.apk.u5
        /* renamed from: this */
        public void mo2688this(int i) {
            BookListAdapter bookListAdapter = BookMyListChildFragment.this.f7289if;
            if (bookListAdapter != null) {
                bookListAdapter.remove(i);
                BookMyListChildFragment.this.f7289if.notifyDataSetChanged();
            }
        }

        @Override // com.apk.u5
        /* renamed from: throw */
        public void mo2689throw(List<BookElement> list, String str) {
            if (list == null || BookMyListChildFragment.this.f7289if == null) {
                return;
            }
            for (BookElement bookElement : list) {
                if ("commend".equals(str)) {
                    bookElement.setItemType(2);
                } else {
                    bookElement.setItemType(1);
                }
            }
            BookMyListChildFragment.this.f7289if.setNewData(list);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMyListChildFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ int f7292do;

        public Cfor(int i) {
            this.f7292do = i;
        }

        @Override // com.apk.ft
        public void onClick() {
            BookElement bookElement = (BookElement) BookMyListChildFragment.this.f7289if.getItem(this.f7292do);
            v3 v3Var = BookMyListChildFragment.this.f7288for;
            if (v3Var != null) {
                v3Var.m2764const(false, bookElement.getListId(), null, this.f7292do);
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookMyListChildFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ int f7294do;

        public Cif(int i) {
            this.f7294do = i;
        }

        @Override // com.apk.ft
        public void onClick() {
            try {
                LitePal.deleteAll(CreateBookList.class, "bookListId = ?", ((BookElement) BookMyListChildFragment.this.f7289if.getItem(this.f7294do)).getListId());
                BookMyListChildFragment.this.f7289if.remove(this.f7294do);
                BookMyListChildFragment.this.f7289if.notifyDataSetChanged();
                ToastUtils.show((int) R.string.main_delete_finish_txt);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static BookMyListChildFragment a(String str) {
        BookMyListChildFragment bookMyListChildFragment = new BookMyListChildFragment();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        bookMyListChildFragment.setArguments(bundle);
        return bookMyListChildFragment;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_mybooklist_child;
    }

    @Override // com.apk.g6
    public void initData() {
        BookListAdapter bookListAdapter = new BookListAdapter(getSupportActivity(), null, null);
        this.f7289if = bookListAdapter;
        this.mRecyclerView.setAdapter(bookListAdapter);
        this.f7289if.setOnItemClickListener(this);
        if ("my_draftBox".equals(this.f7287do) || "my_collect".equals(this.f7287do)) {
            this.f7289if.setOnItemLongClickListener(this);
        }
        this.f7288for = new v3(getSupportActivity(), this.f7290new);
        m3367synchronized();
    }

    @Override // com.apk.g6
    public void initView() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f7287do = arguments.getString("type");
        }
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.mRecyclerView);
        ze.m3177new(getSupportActivity(), this.mRecyclerView);
        registerEventBus(this);
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("my_collect".equals(this.f7287do)) {
            m3367synchronized();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            BookElement bookElement = (BookElement) this.f7289if.getItem(i);
            if (bookElement != null) {
                if ("my_release".equals(this.f7287do)) {
                    if (this.f7288for != null) {
                        v3 v3Var = this.f7288for;
                        String listId = bookElement.getListId();
                        if (v3Var == null) {
                            throw null;
                        }
                        x4.m2957import(w.m2857static(listId), 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new x3(v3Var, "SP_HOST_SHUC_XS_KEY", listId));
                    }
                } else if ("my_draftBox".equals(this.f7287do)) {
                    Intent intent = new Intent(getSupportActivity(), CreateBookListActivity.class);
                    intent.putExtra("type", "my_draftBox");
                    intent.putExtra("bookListId", bookElement.getListId());
                    intent.putExtra("cover", bookElement.getCover());
                    getSupportActivity().startActivityForResult(intent, ErrorCode.INIT_ERROR);
                } else {
                    BookListDetailActivity.k(getSupportActivity(), bookElement.getListId(), bookElement.getTitle());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemLongClickListener
    public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if ("my_draftBox".equals(this.f7287do)) {
            showTipDialog(getSupportActivity(), ze.q(R.string.element_my_booklist_delete_draft_txt), new Cif(i), null, true);
            return true;
        }
        showTipDialog(getSupportActivity(), ze.q(R.string.element_my_booklist_cancel_collect_txt), new Cfor(i), null, true);
        return true;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public void m3367synchronized() {
        v3 v3Var;
        if (this.mRecyclerView == null || (v3Var = this.f7288for) == null) {
            return;
        }
        String str = this.f7287do;
        if (v3Var != null) {
            if (!"my_release".equals(str) && !"my_collect".equals(str)) {
                new b1().m141do(new m4(v3Var));
                return;
            } else {
                x4.m2957import(Cgoto.m988break(new StringBuilder(), "/UserBookList.aspx?type=personallist"), 300000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new l4(v3Var, str));
                return;
            }
        }
        throw null;
    }
}
