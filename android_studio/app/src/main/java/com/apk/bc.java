package com.apk;

import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.biquge.ebook.app.adapter.NewStoreAdapter;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.HomenavmenuBean;
import com.biquge.ebook.app.bean.StoreBean;
import com.biquge.ebook.app.ui.fragment.NewStoreFragment;
import com.manhua.ui.widget.PublicLoadingView;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* compiled from: NewStoreFragment.java */
/* loaded from: classes8.dex */
public class bc extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public boolean f281do;

    /* renamed from: for  reason: not valid java name */
    public List<HomenavmenuBean> f282for;

    /* renamed from: if  reason: not valid java name */
    public boolean f283if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ NewStoreFragment f284new;

    public bc(NewStoreFragment newStoreFragment) {
        this.f284new = newStoreFragment;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        this.f281do = this.f284new.f7554goto.isSc_hide_nav();
        NewStoreFragment newStoreFragment = this.f284new;
        newStoreFragment.f7562super = newStoreFragment.f7554goto.getTopTabsIndex();
        this.f283if = "left".equals(this.f284new.f7554goto.getTopTabsStyle());
        NewStoreFragment newStoreFragment2 = this.f284new;
        newStoreFragment2.f7548class = newStoreFragment2.f7554goto.getMoreapi();
        this.f282for = this.f284new.f7554goto.getHomenavmenu();
        NewStoreFragment newStoreFragment3 = this.f284new;
        newStoreFragment3.f7564this = newStoreFragment3.f7554goto.getBanner();
        NewStoreFragment newStoreFragment4 = this.f284new;
        newStoreFragment4.f7545break = newStoreFragment4.f7554goto.getTopTabs();
        NewStoreFragment newStoreFragment5 = this.f284new;
        newStoreFragment5.f7547catch = newStoreFragment5.i(newStoreFragment5.f7554goto.getList(), null);
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        NewStoreFragment.m3383synchronized(this.f284new);
        NewStoreFragment newStoreFragment = this.f284new;
        boolean z = this.f281do;
        Book book = null;
        if (newStoreFragment != null) {
            try {
                if (z) {
                    if (newStoreFragment.f7553for != null) {
                        newStoreFragment.f7553for.findViewById(R.id.store_top_tab_layout).setVisibility(0);
                        newStoreFragment.f7553for.findViewById(R.id.store_top_tab_category).setOnClickListener(newStoreFragment.f7556import);
                        newStoreFragment.f7553for.findViewById(R.id.store_top_tab_rank).setOnClickListener(newStoreFragment.f7556import);
                        newStoreFragment.f7553for.findViewById(R.id.store_top_tab_list).setOnClickListener(newStoreFragment.f7556import);
                        newStoreFragment.f7553for.findViewById(R.id.store_hot_tab_list).setOnClickListener(newStoreFragment.f7556import);
                    }
                } else if (newStoreFragment.f7553for != null) {
                    newStoreFragment.f7553for.findViewById(R.id.store_top_tab_layout).setVisibility(8);
                }
            } catch (Exception unused) {
            }
            if (this.f284new.f7545break != null) {
                book = new Book();
                book.setItemType(12);
                NewStoreFragment newStoreFragment2 = this.f284new;
                NewStoreAdapter newStoreAdapter = newStoreFragment2.f7555if;
                boolean z2 = newStoreFragment2.f7567try;
                boolean z3 = this.f283if;
                List<StoreBean.TopTabsBean> list = newStoreFragment2.f7545break;
                newStoreAdapter.f6364this = true;
                newStoreAdapter.f6357case = z2;
                newStoreAdapter.f6359else = z3;
                newStoreAdapter.f6361goto = list;
            }
            if (!TextUtils.isEmpty(this.f284new.f7548class)) {
                NewStoreFragment newStoreFragment3 = this.f284new;
                newStoreFragment3.f7549const = 1;
                newStoreFragment3.f7555if.setOnLoadMoreListener(new cc(newStoreFragment3), newStoreFragment3.mRecyclerView);
            }
            NewStoreFragment newStoreFragment4 = this.f284new;
            if (newStoreFragment4.f7555if != null) {
                newStoreFragment4.f7550do.clear();
                NewStoreFragment newStoreFragment5 = this.f284new;
                List<Book> list2 = newStoreFragment5.f7550do;
                if (newStoreFragment5.f7547catch == null) {
                    newStoreFragment5.f7547catch = new ArrayList();
                }
                list2.addAll(newStoreFragment5.f7547catch);
                if (book != null) {
                    NewStoreFragment newStoreFragment6 = this.f284new;
                    if (newStoreFragment6.f7552final > newStoreFragment6.f7550do.size()) {
                        NewStoreFragment newStoreFragment7 = this.f284new;
                        newStoreFragment7.f7552final = newStoreFragment7.f7550do.size() - 1;
                    }
                    NewStoreFragment newStoreFragment8 = this.f284new;
                    newStoreFragment8.f7550do.add(newStoreFragment8.f7552final, book);
                }
                this.f284new.f7555if.notifyDataSetChanged();
            }
            List<HomenavmenuBean> list3 = this.f282for;
            if (list3 != null && list3.size() > 0) {
                try {
                    RecyclerView recyclerView = (RecyclerView) this.f284new.f7553for.findViewById(R.id.store_top_homeMenu_layout);
                    recyclerView.setVisibility(0);
                    ze.w(this.f284new.getSupportActivity(), recyclerView, this.f282for);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            PublicLoadingView publicLoadingView = this.f284new.loadingView;
            if (publicLoadingView != null) {
                publicLoadingView.m3666for();
                return;
            }
            return;
        }
        throw null;
    }
}
