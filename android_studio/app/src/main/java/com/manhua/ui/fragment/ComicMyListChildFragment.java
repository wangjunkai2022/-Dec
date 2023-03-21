package com.manhua.ui.fragment;

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
import com.apk.h3;
import com.apk.i3;
import com.apk.mf;
import com.apk.r5;
import com.apk.w;
import com.apk.x2;
import com.apk.x4;
import com.apk.xw;
import com.apk.z2;
import com.apk.ze;
import com.biquge.ebook.app.bean.CreateBookList;
import com.biquge.ebook.app.ui.activity.BookListDetailActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.hjq.toast.ToastUtils;
import com.manhua.adapter.ComicListAdapter;
import com.manhua.data.bean.ComicElement;
import com.manhua.data.bean.CreateComicList;
import com.manhua.ui.activity.ComicListDetailActivity;
import com.manhua.ui.activity.CreateComicListActivity;
import com.qq.e.comm.constants.ErrorCode;
import java.util.List;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.litepal.LitePal;

/* loaded from: classes8.dex */
public class ComicMyListChildFragment extends g6 implements BaseQuickAdapter.OnItemClickListener, BaseQuickAdapter.OnItemLongClickListener {

    /* renamed from: do  reason: not valid java name */
    public String f9991do;

    /* renamed from: for  reason: not valid java name */
    public z2 f9992for;

    /* renamed from: if  reason: not valid java name */
    public ComicListAdapter f9993if;
    @BindView(R.id.fragment_comiclist_chaild_recyclerview)
    public RecyclerView mRecyclerView;

    /* renamed from: new  reason: not valid java name */
    public final r5 f9994new = new Cdo();

    /* renamed from: com.manhua.ui.fragment.ComicMyListChildFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends r5 {
        public Cdo() {
        }

        @Override // com.apk.r5
        /* renamed from: class */
        public void mo2231class(List<ComicElement> list, String str) {
            if (list == null || ComicMyListChildFragment.this.f9993if == null) {
                return;
            }
            for (ComicElement comicElement : list) {
                if ("commend".equals(str)) {
                    comicElement.setItemType(2);
                } else {
                    comicElement.setItemType(1);
                }
            }
            ComicMyListChildFragment.this.f9993if.setNewData(list);
        }

        @Override // com.apk.r5
        /* renamed from: goto */
        public void mo2237goto(int i) {
            ComicListAdapter comicListAdapter = ComicMyListChildFragment.this.f9993if;
            if (comicListAdapter != null) {
                comicListAdapter.remove(i);
                ComicMyListChildFragment.this.f9993if.notifyDataSetChanged();
            }
        }

        @Override // com.apk.r5
        /* renamed from: this */
        public void mo2241this(boolean z, CreateComicList createComicList) {
            try {
                if (z) {
                    BookListDetailActivity.k(ComicMyListChildFragment.this.getActivity(), createComicList.getBookListId(), createComicList.getTitle());
                } else if (createComicList != null && createComicList.isCheck()) {
                    Intent intent = new Intent(ComicMyListChildFragment.this.getActivity(), CreateComicListActivity.class);
                    intent.putExtra("type", "my_release");
                    intent.putExtra("createBookList", createComicList);
                    ComicMyListChildFragment.this.getActivity().startActivityForResult(intent, ErrorCode.INNER_ERROR);
                } else {
                    ToastUtils.show((int) R.string.element_my_booklist_check_txt);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicMyListChildFragment$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ int f9996do;

        public Cfor(int i) {
            this.f9996do = i;
        }

        @Override // com.apk.ft
        public void onClick() {
            ComicElement comicElement = (ComicElement) ComicMyListChildFragment.this.f9993if.getItem(this.f9996do);
            z2 z2Var = ComicMyListChildFragment.this.f9992for;
            if (z2Var != null) {
                z2Var.m3139const(false, comicElement.getListId(), null, this.f9996do);
            }
        }
    }

    /* renamed from: com.manhua.ui.fragment.ComicMyListChildFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ft {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ int f9998do;

        public Cif(int i) {
            this.f9998do = i;
        }

        @Override // com.apk.ft
        public void onClick() {
            try {
                ComicElement comicElement = (ComicElement) ComicMyListChildFragment.this.f9993if.getItem(this.f9998do);
                if (comicElement != null) {
                    LitePal.deleteAll(CreateBookList.class, "bookListId = ?", comicElement.getListId());
                    ComicMyListChildFragment.this.f9993if.remove(this.f9998do);
                    ComicMyListChildFragment.this.f9993if.notifyDataSetChanged();
                    ToastUtils.show((int) R.string.main_delete_finish_txt);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static ComicMyListChildFragment a(String str) {
        ComicMyListChildFragment comicMyListChildFragment = new ComicMyListChildFragment();
        Bundle bundle = new Bundle();
        bundle.putString("type", str);
        comicMyListChildFragment.setArguments(bundle);
        return comicMyListChildFragment;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_mycomiclist_child;
    }

    @Override // com.apk.g6
    public void initData() {
        ComicListAdapter comicListAdapter = new ComicListAdapter(getSupportActivity(), null, null);
        this.f9993if = comicListAdapter;
        this.mRecyclerView.setAdapter(comicListAdapter);
        this.f9993if.setOnItemClickListener(this);
        if ("my_draftBox".equals(this.f9991do) || "my_collect".equals(this.f9991do)) {
            this.f9993if.setOnItemLongClickListener(this);
        }
        this.f9992for = new z2(getSupportActivity(), this.f9994new);
        m3627synchronized();
    }

    @Override // com.apk.g6
    public void initView() {
        registerEventBus(this);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f9991do = arguments.getString("type");
        }
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.mRecyclerView);
        ze.m3177new(getSupportActivity(), this.mRecyclerView);
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("my_collect".equals(this.f9991do)) {
            m3627synchronized();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ComicElement comicElement = (ComicElement) this.f9993if.getItem(i);
            if (comicElement != null) {
                if ("my_release".equals(this.f9991do)) {
                    if (this.f9992for != null) {
                        z2 z2Var = this.f9992for;
                        String listId = comicElement.getListId();
                        if (z2Var == null) {
                            throw null;
                        }
                        x4.m2957import(w.m2838case(listId), 180000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new x2(z2Var, listId));
                    }
                } else if ("my_draftBox".equals(this.f9991do)) {
                    Intent intent = new Intent(getSupportActivity(), CreateComicListActivity.class);
                    intent.putExtra("type", "my_draftBox");
                    intent.putExtra("bookListId", comicElement.getListId());
                    intent.putExtra("cover", comicElement.getCover());
                    getSupportActivity().startActivityForResult(intent, ErrorCode.INNER_ERROR);
                } else {
                    ComicListDetailActivity.k(getSupportActivity(), comicElement.getListId(), comicElement.getTitle());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemLongClickListener
    public boolean onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if ("my_draftBox".equals(this.f9991do)) {
            showTipDialog(getSupportActivity(), ze.q(R.string.element_my_booklist_delete_draft_txt), new Cif(i), null, true);
            return true;
        }
        showTipDialog(getSupportActivity(), ze.q(R.string.element_my_booklist_cancel_collect_txt), new Cfor(i), null, true);
        return true;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public void m3627synchronized() {
        z2 z2Var;
        if (this.mRecyclerView == null || (z2Var = this.f9992for) == null) {
            return;
        }
        String str = this.f9991do;
        if (z2Var != null) {
            if (!"my_release".equals(str) && !"my_collect".equals(str)) {
                new b1().m141do(new i3(z2Var));
                return;
            } else {
                x4.m2957import(Cgoto.m990catch(new StringBuilder(), "/UserBookList.aspx?type=personallist"), 300000L, xw.ALWAYS_FIRST_CACHE_THEN_REQUEST, new h3(z2Var, str));
                return;
            }
        }
        throw null;
    }
}
