package com.manhua.ui.fragment;

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
import com.apk.r10;
import com.apk.y30;
import com.apk.ze;
import com.apk.zu;
import com.shizhefei.view.indicator.ScrollIndicatorView;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicListFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public ComicListChildFragment f9952do;

    /* renamed from: for  reason: not valid java name */
    public ComicListChildFragment f9953for;

    /* renamed from: if  reason: not valid java name */
    public ComicListChildFragment f9954if;
    @BindView(R.id.fragment_city_element_indicator)
    public ScrollIndicatorView mIndicator;
    @BindView(R.id.fragment_city_sex_indicator)
    public ScrollIndicatorView mSexIView;
    @BindView(R.id.fragment_city_element_viewPager)
    public ViewPager mViewPager;

    /* renamed from: new  reason: not valid java name */
    public ComicListChildFragment f9955new;

    /* renamed from: try  reason: not valid java name */
    public final b40.Cnew f9956try = new Cdo();

    /* renamed from: com.manhua.ui.fragment.ComicListFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements b40.Cnew {
        public Cdo() {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            boolean z = ComicListFragment.this.mSexIView.getCurrentItem() == 0;
            ComicListChildFragment comicListChildFragment = ComicListFragment.this.f9952do;
            if (comicListChildFragment != null) {
                comicListChildFragment.f9944new = z;
                comicListChildFragment.i(true);
            }
            ComicListChildFragment comicListChildFragment2 = ComicListFragment.this.f9954if;
            if (comicListChildFragment2 != null) {
                comicListChildFragment2.f9944new = z;
                comicListChildFragment2.i(true);
            }
            ComicListChildFragment comicListChildFragment3 = ComicListFragment.this.f9953for;
            if (comicListChildFragment3 != null) {
                comicListChildFragment3.f9944new = z;
                comicListChildFragment3.i(true);
            }
            ComicListChildFragment comicListChildFragment4 = ComicListFragment.this.f9955new;
            if (comicListChildFragment4 != null) {
                comicListChildFragment4.f9944new = z;
                comicListChildFragment4.i(true);
            }
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.comic_fragment_list;
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        ArrayList arrayList = new ArrayList();
        ComicListChildFragment j = ComicListChildFragment.j("new");
        this.f9952do = j;
        arrayList.add(j);
        ComicListChildFragment j2 = ComicListChildFragment.j("hot");
        this.f9954if = j2;
        arrayList.add(j2);
        ComicListChildFragment j3 = ComicListChildFragment.j("collect");
        this.f9953for = j3;
        arrayList.add(j3);
        ComicListChildFragment j4 = ComicListChildFragment.j("commend");
        this.f9955new = j4;
        arrayList.add(j4);
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getFragmentManager(), q0.m2101new(), arrayList));
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        this.mSexIView.setSplitAuto(false);
        this.mSexIView.setOnItemSelectListener(this.f9956try);
        this.mSexIView.setAdapter(new nz(getSupportActivity(), q0.f3776goto, eg.m614switch() / 4));
        ze.v(getSupportActivity(), this.mSexIView);
        ze.v(getSupportActivity(), this.mIndicator);
        this.mViewPager.setOffscreenPageLimit(4);
    }

    @OnClick({R.id.fragment_element_menu_bt})
    public void menuClick() {
        new zu.Cdo(getSupportActivity()).m3255for(null, new String[]{ze.q(R.string.element_create_element_txt), ze.q(R.string.element_my_element_txt)}, new int[]{R.drawable.menu_create_booklist_icon, R.drawable.menu_mybooklist_icon}, new r10(this)).show();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        m3625synchronized(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m3625synchronized(true);
    }

    /* renamed from: synchronized  reason: not valid java name */
    public void m3625synchronized(boolean z) {
        ComicListChildFragment comicListChildFragment;
        ViewPager viewPager = this.mViewPager;
        if (viewPager != null) {
            int currentItem = viewPager.getCurrentItem();
            if (currentItem == 0) {
                ComicListChildFragment comicListChildFragment2 = this.f9952do;
                if (comicListChildFragment2 != null) {
                    comicListChildFragment2.setUserVisibleHint(z);
                }
            } else if (currentItem == 1) {
                ComicListChildFragment comicListChildFragment3 = this.f9954if;
                if (comicListChildFragment3 != null) {
                    comicListChildFragment3.setUserVisibleHint(z);
                }
            } else if (currentItem != 2) {
                if (currentItem == 3 && (comicListChildFragment = this.f9955new) != null) {
                    comicListChildFragment.setUserVisibleHint(z);
                }
            } else {
                ComicListChildFragment comicListChildFragment4 = this.f9953for;
                if (comicListChildFragment4 != null) {
                    comicListChildFragment4.setUserVisibleHint(z);
                }
            }
        }
    }
}
