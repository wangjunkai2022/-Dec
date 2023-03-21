package com.apk;

import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.biquge.ebook.app.bean.ComicStoreBean;
import com.biquge.ebook.app.bean.HomenavmenuBean;
import com.manhua.adapter.ComicNewStoreAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.fragment.ComicNewStoreFragment;
import com.manhua.ui.widget.PublicLoadingView;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* compiled from: ComicNewStoreFragment.java */
/* loaded from: classes8.dex */
public class v10 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public boolean f4982do;

    /* renamed from: for  reason: not valid java name */
    public List<HomenavmenuBean> f4983for;

    /* renamed from: if  reason: not valid java name */
    public boolean f4984if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ ComicNewStoreFragment f4985new;

    public v10(ComicNewStoreFragment comicNewStoreFragment) {
        this.f4985new = comicNewStoreFragment;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        ComicStoreBean comicStoreBean = this.f4985new.f10016goto;
        if (comicStoreBean != null) {
            this.f4984if = comicStoreBean.isSc_hide_nav();
            ComicNewStoreFragment comicNewStoreFragment = this.f4985new;
            comicNewStoreFragment.f10024super = comicNewStoreFragment.f10016goto.getTopTabsIndex();
            this.f4982do = "left".equals(this.f4985new.f10016goto.getTopTabsStyle());
            ComicNewStoreFragment comicNewStoreFragment2 = this.f4985new;
            comicNewStoreFragment2.f10010class = comicNewStoreFragment2.f10016goto.getMoreapi();
            this.f4983for = this.f4985new.f10016goto.getHomenavmenu();
            ComicNewStoreFragment comicNewStoreFragment3 = this.f4985new;
            comicNewStoreFragment3.f10026this = comicNewStoreFragment3.f10016goto.getBanner();
            ComicNewStoreFragment comicNewStoreFragment4 = this.f4985new;
            comicNewStoreFragment4.f10007break = comicNewStoreFragment4.f10016goto.getTopTabs();
            ComicNewStoreFragment comicNewStoreFragment5 = this.f4985new;
            comicNewStoreFragment5.f10009catch = comicNewStoreFragment5.j(comicNewStoreFragment5.f10016goto.getList(), null);
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        List<ComicBean> list;
        super.onPostExecute(obj);
        ComicNewStoreFragment.m3628synchronized(this.f4985new);
        ComicNewStoreFragment comicNewStoreFragment = this.f4985new;
        boolean z = this.f4984if;
        ComicBean comicBean = null;
        if (comicNewStoreFragment != null) {
            try {
                if (z) {
                    if (comicNewStoreFragment.f10015for != null) {
                        comicNewStoreFragment.f10015for.findViewById(R.id.store_top_tab_layout).setVisibility(0);
                        comicNewStoreFragment.f10015for.findViewById(R.id.item_book_city_tab_recommend_txt).setOnClickListener(comicNewStoreFragment.f10018import);
                        comicNewStoreFragment.f10015for.findViewById(R.id.item_book_city_tab_collect_txt).setOnClickListener(comicNewStoreFragment.f10018import);
                        comicNewStoreFragment.f10015for.findViewById(R.id.item_book_city_tab_grade_txt).setOnClickListener(comicNewStoreFragment.f10018import);
                        comicNewStoreFragment.f10015for.findViewById(R.id.item_book_city_tab_over_txt).setOnClickListener(comicNewStoreFragment.f10018import);
                        comicNewStoreFragment.f10015for.findViewById(R.id.item_book_city_tab_hot_txt).setOnClickListener(comicNewStoreFragment.f10018import);
                    }
                } else if (comicNewStoreFragment.f10015for != null) {
                    comicNewStoreFragment.f10015for.findViewById(R.id.store_top_tab_layout).setVisibility(8);
                }
            } catch (Exception unused) {
            }
            if (this.f4985new.f10007break != null) {
                comicBean = new ComicBean();
                comicBean.setItemType(12);
                ComicNewStoreFragment comicNewStoreFragment2 = this.f4985new;
                ComicNewStoreAdapter comicNewStoreAdapter = comicNewStoreFragment2.f10017if;
                boolean z2 = comicNewStoreFragment2.f10029try;
                boolean z3 = this.f4982do;
                List<ComicStoreBean.TopTabsBean> list2 = comicNewStoreFragment2.f10007break;
                comicNewStoreAdapter.f9626this = true;
                comicNewStoreAdapter.f9619case = z2;
                comicNewStoreAdapter.f9621else = z3;
                comicNewStoreAdapter.f9623goto = list2;
            }
            if (!TextUtils.isEmpty(this.f4985new.f10010class)) {
                ComicNewStoreFragment comicNewStoreFragment3 = this.f4985new;
                comicNewStoreFragment3.f10011const = 1;
                comicNewStoreFragment3.f10017if.setOnLoadMoreListener(new w10(comicNewStoreFragment3), comicNewStoreFragment3.mRecyclerView);
            }
            ComicNewStoreFragment comicNewStoreFragment4 = this.f4985new;
            if (comicNewStoreFragment4.f10017if != null && (list = comicNewStoreFragment4.f10012do) != null) {
                list.clear();
                ComicNewStoreFragment comicNewStoreFragment5 = this.f4985new;
                List<ComicBean> list3 = comicNewStoreFragment5.f10012do;
                if (comicNewStoreFragment5.f10009catch == null) {
                    comicNewStoreFragment5.f10009catch = new ArrayList();
                }
                list3.addAll(comicNewStoreFragment5.f10009catch);
                if (comicBean != null) {
                    ComicNewStoreFragment comicNewStoreFragment6 = this.f4985new;
                    if (comicNewStoreFragment6.f10014final > comicNewStoreFragment6.f10012do.size()) {
                        ComicNewStoreFragment comicNewStoreFragment7 = this.f4985new;
                        comicNewStoreFragment7.f10014final = comicNewStoreFragment7.f10012do.size() - 1;
                    }
                    ComicNewStoreFragment comicNewStoreFragment8 = this.f4985new;
                    comicNewStoreFragment8.f10012do.add(comicNewStoreFragment8.f10014final, comicBean);
                }
                this.f4985new.f10017if.notifyDataSetChanged();
            }
            List<HomenavmenuBean> list4 = this.f4983for;
            if (list4 != null && list4.size() > 0) {
                try {
                    RecyclerView recyclerView = (RecyclerView) this.f4985new.f10015for.findViewById(R.id.store_top_homeMenu_layout);
                    recyclerView.setVisibility(0);
                    ze.w(this.f4985new.getSupportActivity(), recyclerView, this.f4983for);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            PublicLoadingView publicLoadingView = this.f4985new.loadingView;
            if (publicLoadingView != null) {
                publicLoadingView.m3666for();
                return;
            }
            return;
        }
        throw null;
    }
}
