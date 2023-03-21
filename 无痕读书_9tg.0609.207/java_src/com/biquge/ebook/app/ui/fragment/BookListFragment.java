package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.b40;
import com.apk.e40;
import com.apk.eg;
import com.apk.g6;
import com.apk.nz;
import com.apk.q0;
import com.apk.wa;
import com.apk.y30;
import com.apk.ze;
import com.apk.zu;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookListFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public BookListChildFragment f7249do;

    /* renamed from: for  reason: not valid java name */
    public BookListChildFragment f7250for;

    /* renamed from: if  reason: not valid java name */
    public BookListChildFragment f7251if;
    @BindView(R.id.fragment_city_element_indicator)
    public b40 mIndicator;
    @BindView(R.id.fragment_city_element_sex_indicator)
    public ScrollIndicatorView mSexIndicator;
    @BindView(R.id.fragment_city_element_viewPager)
    public ViewPager mViewPager;

    /* renamed from: new  reason: not valid java name */
    public BookListChildFragment f7252new;

    /* renamed from: try  reason: not valid java name */
    public final b40.Cnew f7253try = new Cdo();

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookListFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements b40.Cnew {
        public Cdo() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            boolean z = BookListFragment.this.mSexIndicator.getCurrentItem() == 0;
            BookListChildFragment bookListChildFragment = BookListFragment.this.f7249do;
            if (bookListChildFragment != null) {
                bookListChildFragment.f7240if = z;
                bookListChildFragment.i(true);
            }
            BookListChildFragment bookListChildFragment2 = BookListFragment.this.f7251if;
            if (bookListChildFragment2 != null) {
                bookListChildFragment2.f7240if = z;
                bookListChildFragment2.i(true);
            }
            BookListChildFragment bookListChildFragment3 = BookListFragment.this.f7250for;
            if (bookListChildFragment3 != null) {
                bookListChildFragment3.f7240if = z;
                bookListChildFragment3.i(true);
            }
            BookListChildFragment bookListChildFragment4 = BookListFragment.this.f7252new;
            if (bookListChildFragment4 != null) {
                bookListChildFragment4.f7240if = z;
                bookListChildFragment4.i(true);
            }
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_city_element;
    }

    @Override // com.apk.g6
    public void initData() {
        this.mSexIndicator.setOnItemSelectListener(this.f7253try);
        this.mSexIndicator.setAdapter(new nz(getSupportActivity(), q0.f3776goto, eg.m614switch() / 4));
        ArrayList arrayList = new ArrayList();
        BookListChildFragment j = BookListChildFragment.j("new");
        this.f7249do = j;
        arrayList.add(j);
        BookListChildFragment j2 = BookListChildFragment.j("hot");
        this.f7251if = j2;
        arrayList.add(j2);
        BookListChildFragment j3 = BookListChildFragment.j("collect");
        this.f7250for = j3;
        arrayList.add(j3);
        BookListChildFragment j4 = BookListChildFragment.j("commend");
        this.f7252new = j4;
        arrayList.add(j4);
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getChildFragmentManager(), q0.m2101new(), arrayList));
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
    }

    @Override // com.apk.g6
    public void initView() {
        this.mSexIndicator.setSplitAuto(false);
        ze.v(getSupportActivity(), this.mSexIndicator);
        ze.v(getSupportActivity(), this.mIndicator);
    }

    @OnClick({R.id.fragment_element_menu_bt})
    public void menuClick() {
        new zu.Cdo(getSupportActivity()).m3255for(null, new String[]{ze.q(R.string.element_create_element_txt), ze.q(R.string.element_my_element_txt)}, new int[]{R.drawable.menu_create_booklist_icon, R.drawable.menu_mybooklist_icon}, new wa(this)).show();
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        BookListChildFragment bookListChildFragment;
        super.setUserVisibleHint(z);
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null) {
            int currentItem = viewPager.getCurrentItem();
            if (currentItem == 0) {
                BookListChildFragment bookListChildFragment2 = this.f7249do;
                if (bookListChildFragment2 != null) {
                    bookListChildFragment2.setUserVisibleHint(z);
                }
            } else if (currentItem == 1) {
                BookListChildFragment bookListChildFragment3 = this.f7251if;
                if (bookListChildFragment3 != null) {
                    bookListChildFragment3.setUserVisibleHint(z);
                }
            } else if (currentItem != 2) {
                if (currentItem == 3 && (bookListChildFragment = this.f7252new) != null) {
                    bookListChildFragment.setUserVisibleHint(z);
                }
            } else {
                BookListChildFragment bookListChildFragment4 = this.f7250for;
                if (bookListChildFragment4 != null) {
                    bookListChildFragment4.setUserVisibleHint(z);
                }
            }
        }
    }
}
