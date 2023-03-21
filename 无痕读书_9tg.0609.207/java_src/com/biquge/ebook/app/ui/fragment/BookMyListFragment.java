package com.biquge.ebook.app.ui.fragment;

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
public class BookMyListFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public BookMyListChildFragment f7297do;

    /* renamed from: for  reason: not valid java name */
    public BookMyListChildFragment f7298for;

    /* renamed from: if  reason: not valid java name */
    public BookMyListChildFragment f7299if;
    @BindView(R.id.activity_my_booklist_indicator)
    public b40 mIndicator;
    @BindView(R.id.activity_my_booklist_viewPager)
    public ViewPager mViewPager;

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_mylist;
    }

    @Override // com.apk.g6
    public void initData() {
        ArrayList arrayList = new ArrayList();
        BookMyListChildFragment a2 = BookMyListChildFragment.a("my_release");
        this.f7297do = a2;
        arrayList.add(a2);
        BookMyListChildFragment a3 = BookMyListChildFragment.a("my_draftBox");
        this.f7299if = a3;
        arrayList.add(a3);
        BookMyListChildFragment a4 = BookMyListChildFragment.a("my_collect");
        this.f7298for = a4;
        arrayList.add(a4);
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getChildFragmentManager(), q0.m2098do(), arrayList));
    }

    @Override // com.apk.g6
    public void initView() {
        ze.u(getSupportActivity(), this.mIndicator, 50, 14);
    }
}
