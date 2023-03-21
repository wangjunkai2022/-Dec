package com.manhua.ui.fragment;

import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.apk.b40;
import com.apk.e40;
import com.apk.g6;
import com.apk.q0;
import com.apk.y30;
import com.apk.ze;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicMyListFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public ComicMyListChildFragment f10001do;

    /* renamed from: for  reason: not valid java name */
    public ComicMyListChildFragment f10002for;

    /* renamed from: if  reason: not valid java name */
    public ComicMyListChildFragment f10003if;
    @BindView(R.id.activity_my_booklist_indicator)
    public b40 mIndicator;
    @BindView(R.id.activity_my_booklist_viewPager)
    public ViewPager mViewPager;

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_comic_mylist;
    }

    @Override // com.apk.g6
    public void initData() {
        ArrayList arrayList = new ArrayList();
        try {
            ComicMyListChildFragment a2 = ComicMyListChildFragment.a("my_release");
            this.f10001do = a2;
            arrayList.add(a2);
            ComicMyListChildFragment a3 = ComicMyListChildFragment.a("my_draftBox");
            this.f10003if = a3;
            arrayList.add(a3);
            ComicMyListChildFragment a4 = ComicMyListChildFragment.a("my_collect");
            this.f10002for = a4;
            arrayList.add(a4);
            this.mViewPager.setOffscreenPageLimit(arrayList.size());
            new e40(this.mIndicator, this.mViewPager).m536do(new y30(getChildFragmentManager(), q0.f3775for, arrayList));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.g6
    public void initView() {
        ze.u(getSupportActivity(), this.mIndicator, 50, 14);
    }
}
