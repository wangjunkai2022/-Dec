package com.biquge.ebook.app.ui.fragment;

import android.os.Bundle;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.e40;
import com.apk.eg;
import com.apk.fg;
import com.apk.g40;
import com.apk.g6;
import com.apk.h40;
import com.apk.hf;
import com.apk.i40;
import com.apk.lv;
import com.apk.nz;
import com.apk.ov;
import com.apk.p0;
import com.apk.w0;
import com.apk.x10;
import com.apk.xp0;
import com.apk.y30;
import com.apk.zb;
import com.apk.ze;
import com.apk.zu;
import com.biquge.ebook.app.bean.StoreConfigBean;
import com.biquge.ebook.app.widget.StoreSearchGuidePopupView;
import com.expand.listen.fragment.ListenRankFragment;
import com.expand.videoplayer.ui.fragment.VideoFiltrateFragment;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.core.ImageViewerPopupView;
import com.manhua.ui.fragment.ComicListFragment;
import com.manhua.ui.fragment.ComicNewStoreFragment;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MainStoreFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public e40 f7536do;

    /* renamed from: for  reason: not valid java name */
    public xp0 f7537for;

    /* renamed from: if  reason: not valid java name */
    public final List<Fragment> f7538if = new ArrayList();
    @BindView(R.id.comic_update_indicator)
    public ScrollIndicatorView mIndicator;
    @BindView(R.id.comic_update_viewPager)
    public ViewPager mViewPager;
    @BindView(R.id.store_top_search_view)
    public TextView searchView;

    public final void a(boolean z) {
        try {
            if (this.f7538if != null) {
                for (Fragment fragment : this.f7538if) {
                    if (fragment instanceof NewStoreFragment) {
                        NewStoreFragment newStoreFragment = (NewStoreFragment) fragment;
                        newStoreFragment.f7559public = z;
                        newStoreFragment.m(z);
                    } else if (fragment instanceof ComicNewStoreFragment) {
                        ComicNewStoreFragment comicNewStoreFragment = (ComicNewStoreFragment) fragment;
                        comicNewStoreFragment.f10021public = z;
                        comicNewStoreFragment.l(z);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_main_store;
    }

    @Override // com.apk.g6
    public void initData() {
        boolean m3179private;
        boolean z;
        int i;
        hf hfVar = hf.BOOK_COMIC;
        super.initData();
        int m3174instanceof = ze.m3174instanceof("SP_BOOK_CITY_CURRENT_POSITION_KEY", 0);
        ArrayList arrayList = new ArrayList();
        hf hfVar2 = Ccontinue.m379if().f729while;
        if (hfVar2 != hf.BOOK && hfVar2 != hfVar) {
            arrayList.add(ze.q(R.string.main_tab_book_city_main_txt));
            arrayList.add(ze.q(R.string.cartton_type_man_txt));
            arrayList.add(ze.q(R.string.cartoon_type_lady_txt));
            arrayList.add(ze.q(R.string.main_tab_rank_txt));
            arrayList.add(ze.q(R.string.main_tab_book_city_element_txt));
            List<Fragment> list = this.f7538if;
            list.add(ComicNewStoreFragment.i(true, p0.m1998catch() + "/ver9/base/scmh_jx.html", m3174instanceof == 0));
            this.f7538if.add(ComicNewStoreFragment.i(true, null, m3174instanceof == 1));
            this.f7538if.add(ComicNewStoreFragment.i(false, null, m3174instanceof == 2));
            this.f7538if.add(x10.i(ze.q(R.string.rank_category_hot_new)));
            this.f7538if.add(new ComicListFragment());
            if (hfVar2 == hf.COMIC_BOOK) {
                arrayList.add(ze.q(R.string.ebook_txt));
                List<Fragment> list2 = this.f7538if;
                list2.add(NewStoreFragment.h(true, p0.m1999class() + "/ver9/base/fq/scxs_jx2.html", m3174instanceof == 5));
                m3179private = ze.m3179private("SP_STORE_TAB_MODEL_GUIDE_KEY", true);
                z = m3179private;
            }
            z = false;
        } else {
            arrayList.add(ze.q(R.string.main_tab_book_city_main_txt));
            arrayList.add(ze.q(R.string.novel_type_man_txt));
            arrayList.add(ze.q(R.string.novel_type_lady_txt));
            arrayList.add(ze.q(R.string.main_tab_rank_txt));
            arrayList.add(ze.q(R.string.main_tab_book_city_element_txt));
            List<Fragment> list3 = this.f7538if;
            list3.add(NewStoreFragment.h(true, p0.m1999class() + "/ver9/base/fq/scxs_jx.html", m3174instanceof == 0));
            this.f7538if.add(NewStoreFragment.h(true, null, m3174instanceof == 1));
            this.f7538if.add(NewStoreFragment.h(false, null, m3174instanceof == 2));
            this.f7538if.add(BookStoreRankFragment.m3374synchronized(null, 0, w0.m2881import()));
            this.f7538if.add(new BookListFragment());
            if (hfVar2 == hfVar) {
                arrayList.add(ze.q(R.string.comic_txt));
                List<Fragment> list4 = this.f7538if;
                list4.add(ComicNewStoreFragment.i(true, p0.m1998catch() + "/ver9/base/scmh_jx2.html", m3174instanceof == 5));
                m3179private = ze.m3179private("SP_STORE_TAB_MODEL_GUIDE_KEY", true);
                z = m3179private;
            }
            z = false;
        }
        List<StoreConfigBean> list5 = Ccontinue.m379if().f708catch;
        if (list5 != null) {
            for (int i2 = 0; i2 < list5.size(); i2++) {
                StoreConfigBean storeConfigBean = list5.get(i2);
                if (storeConfigBean != null) {
                    arrayList.add(storeConfigBean.getName());
                    this.f7538if.add(WebViewFragment.a(storeConfigBean.getName(), storeConfigBean.getUrl(), false, false, false));
                }
            }
        }
        List<StoreConfigBean> list6 = Ccontinue.m379if().f707case;
        if (list6 != null && list6.size() > 0) {
            for (StoreConfigBean storeConfigBean2 : list6) {
                String type = storeConfigBean2.getType();
                if ("movie".equals(type)) {
                    arrayList.add(storeConfigBean2.getName());
                    List<Fragment> list7 = this.f7538if;
                    VideoFiltrateFragment videoFiltrateFragment = new VideoFiltrateFragment();
                    Bundle bundle = new Bundle();
                    bundle.putString("SOURCE_TYPE_KEY", type);
                    videoFiltrateFragment.setArguments(bundle);
                    list7.add(videoFiltrateFragment);
                } else if ("tingshu".equals(type)) {
                    arrayList.add(storeConfigBean2.getName());
                    List<Fragment> list8 = this.f7538if;
                    ListenRankFragment listenRankFragment = new ListenRankFragment();
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("SOURCE_TYPE_KEY", type);
                    listenRankFragment.setArguments(bundle2);
                    list8.add(listenRankFragment);
                }
            }
        }
        this.mViewPager.setOffscreenPageLimit(this.f7538if.size());
        this.mViewPager.addOnPageChangeListener(new fg(true));
        this.mIndicator.setAdapter(new nz(getSupportActivity(), arrayList, 0));
        this.f7536do = new e40(this.mIndicator, this.mViewPager);
        if (m3174instanceof != 0 && m3174instanceof < this.f7538if.size()) {
            ze.a0(this.mViewPager, m3174instanceof);
        }
        this.f7536do.m536do(new y30(getFragmentManager(), arrayList, this.f7538if));
        boolean m3179private2 = ze.m3179private("SP_STORE_GUIDE_KEY", true);
        if (z) {
            int m587catch = eg.m587catch(18.0f);
            int m587catch2 = eg.m587catch(16.0f);
            int i3 = 0;
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                i3 += (((String) arrayList.get(i4)).length() * m587catch) + m587catch2;
            }
            i = i3 - eg.m587catch(140.0f);
        } else {
            i = 0;
        }
        if (m3179private2 || z) {
            getSupportActivity();
            lv lvVar = new lv();
            lvVar.f2940this = ov.NoAnimation;
            lvVar.f2941throw = new zb(this);
            StoreSearchGuidePopupView storeSearchGuidePopupView = new StoreSearchGuidePopupView(getSupportActivity(), m3179private2, z, i);
            if (storeSearchGuidePopupView instanceof CenterPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (storeSearchGuidePopupView instanceof BottomPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (storeSearchGuidePopupView instanceof AttachPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else if (storeSearchGuidePopupView instanceof ImageViewerPopupView) {
                lvVar.f2917continue = zu.f6266try;
            } else {
                lvVar.f2917continue = zu.f6266try;
            }
            storeSearchGuidePopupView.popupInfo = lvVar;
            storeSearchGuidePopupView.show();
        }
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        this.mIndicator.setSplitAuto(false);
        this.mIndicator.setScrollBar(new g40(getSupportActivity(), R.drawable.shape_indicator_angle, h40.Cdo.BOTTOM));
        ScrollIndicatorView scrollIndicatorView = this.mIndicator;
        i40 i40Var = new i40();
        i40Var.m1181for(R.color.color_ffffff, R.color.color_ffffff);
        i40Var.m1183new(20.0f, 16.0f);
        scrollIndicatorView.setOnTransitionListener(i40Var);
        if (ze.m3179private("SP_STORE_SEARCH_SHOW_RED_KEY", true)) {
            xp0 xp0Var = new xp0(getSupportActivity());
            this.f7537for = xp0Var;
            xp0Var.m3031do(this.searchView);
            xp0 xp0Var2 = xp0Var;
            xp0Var2.m3037this(eg.m585break(3.0f), eg.m585break(3.0f), true);
            xp0Var2.m3034goto(-1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
        if (r5.mViewPager.getCurrentItem() < 5) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r5.mViewPager.getCurrentItem() < 5) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        r0 = r1;
     */
    @butterknife.OnClick({kimi.wuhends.ebooks.R.id.store_top_search_view})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void menuClick() {
        /*
            r5 = this;
            com.apk.hf r0 = com.apk.hf.BOOK
            com.apk.hf r1 = com.apk.hf.COMIC
            com.apk.continue r2 = com.apk.Ccontinue.m379if()
            com.apk.hf r2 = r2.f729while
            com.apk.hf r3 = com.apk.hf.BOOK_COMIC
            r4 = 5
            if (r2 != r3) goto L1a
            androidx.viewpager.widget.ViewPager r2 = r5.mViewPager
            int r2 = r2.getCurrentItem()
            if (r2 >= r4) goto L18
            goto L28
        L18:
            r0 = r1
            goto L28
        L1a:
            com.apk.hf r3 = com.apk.hf.COMIC_BOOK
            if (r2 != r3) goto L27
            androidx.viewpager.widget.ViewPager r2 = r5.mViewPager
            int r2 = r2.getCurrentItem()
            if (r2 >= r4) goto L28
            goto L18
        L27:
            r0 = r2
        L28:
            com.apk.i6 r1 = r5.getSupportActivity()
            com.biquge.ebook.app.ui.activity.BookSearchActivity.i(r1, r0)
            com.apk.xp0 r0 = r5.f7537for
            if (r0 == 0) goto L44
            r1 = 0
            r0.m3034goto(r1)
            com.tencent.mmkv.MMKV r0 = com.apk.tt.f4763do
            java.lang.String r2 = "SP_STORE_SEARCH_SHOW_RED_KEY"
            r0.putBoolean(r2, r1)
            r0 = 0
            java.lang.String r1 = "REFRESH_BOOKSTORE_RED_TAG_KEY"
            com.apk.mf.m1712do(r1, r0)
        L44:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.fragment.MainStoreFragment.menuClick():void");
    }

    @Override // com.apk.g6, com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        a(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (getUserVisibleHint()) {
            a(true);
        }
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        a(z);
    }

    /* renamed from: synchronized  reason: not valid java name */
    public void m3382synchronized(hf hfVar) {
        try {
            hf hfVar2 = Ccontinue.m379if().f729while;
            if (hfVar2 == hf.BOOK_COMIC) {
                if (hfVar == hf.COMIC && this.f7536do != null) {
                    this.f7536do.m537if(5, false);
                }
            } else if (hfVar2 == hf.COMIC_BOOK && hfVar == hf.BOOK && this.f7536do != null) {
                this.f7536do.m537if(4, false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
