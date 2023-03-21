package com.biquge.ebook.app.ui.fragment;

import butterknife.BindView;
import com.apk.Ccontinue;
import com.apk.b40;
import com.apk.e40;
import com.apk.fg;
import com.apk.g6;
import com.apk.hf;
import com.apk.w0;
import com.apk.y30;
import com.apk.ze;
import com.biquge.ebook.app.widget.TitleIndicatorView;
import com.manhua.ui.fragment.ComicMainCategoryFragment;
import com.shizhefei.view.viewpager.SViewPager;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class MainCategoryFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public b40 f7532do;
    @BindView(R.id.title_indicator_view)
    public TitleIndicatorView mTitleIndicatorView;
    @BindView(R.id.fragment_category_viewPager)
    public SViewPager mViewPager;

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_main_category;
    }

    @Override // com.apk.g6
    public void initData() {
        ArrayList arrayList = new ArrayList();
        hf hfVar = Ccontinue.m379if().f729while;
        if (hfVar == hf.BOOK) {
            arrayList.add(new BookMainCategoryFragment());
        } else if (hfVar == hf.COMIC) {
            arrayList.add(new ComicMainCategoryFragment());
        } else if (hfVar == hf.BOOK_COMIC) {
            arrayList.add(new BookMainCategoryFragment());
            arrayList.add(new ComicMainCategoryFragment());
        } else {
            arrayList.add(new ComicMainCategoryFragment());
            arrayList.add(new BookMainCategoryFragment());
        }
        e40 e40Var = new e40(this.f7532do, this.mViewPager);
        e40Var.m536do(new y30(getChildFragmentManager(), ze.e(), arrayList));
        this.mTitleIndicatorView.m3523if(e40Var, R.string.main_tab_book_city_category_txt, true);
    }

    @Override // com.apk.g6
    public void initView() {
        this.f7532do = this.mTitleIndicatorView.getIndicator();
        this.mViewPager.setOffscreenPageLimit(2);
        this.mViewPager.addOnPageChangeListener(new fg());
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m3381synchronized();
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            m3381synchronized();
        }
    }

    /* renamed from: synchronized  reason: not valid java name */
    public final void m3381synchronized() {
        int m2895throw;
        if (this.mTitleIndicatorView == null || !Ccontinue.m379if().m380case() || this.mTitleIndicatorView.getTabCurrentItem() == (m2895throw = w0.m2895throw())) {
            return;
        }
        this.mTitleIndicatorView.m3522do(m2895throw, false);
    }
}
