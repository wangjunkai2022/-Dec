package com.biquge.ebook.app.ui.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.apk.b40;
import com.apk.e40;
import com.apk.g6;
import com.apk.nt;
import com.apk.q0;
import com.apk.y30;
import com.apk.ze;
import com.google.gson.internal.bind.TypeAdapters;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookStoreRankFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public boolean f7426do;

    /* renamed from: for  reason: not valid java name */
    public BookStoreRankChildFragment f7427for;

    /* renamed from: if  reason: not valid java name */
    public BookStoreRankChildFragment f7428if;
    @BindView(R.id.fragment_book_rank_indicator)
    public b40 mIndicator;
    @BindView(R.id.fragment_book_rank_viewPager)
    public ViewPager mViewPager;

    /* renamed from: new  reason: not valid java name */
    public BookStoreRankChildFragment f7429new;
    @BindView(R.id.time_choose)
    public TextView time_choose;

    /* renamed from: try  reason: not valid java name */
    public final nt.Cdo f7430try = new Cdo();

    /* renamed from: com.biquge.ebook.app.ui.fragment.BookStoreRankFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements nt.Cdo {
        public Cdo() {
        }

        @Override // com.apk.nt.Cdo
        public void onDismiss() {
        }

        @Override // com.apk.nt.Cdo
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            BookStoreRankFragment.this.f7426do = i == 0;
            BookStoreRankFragment bookStoreRankFragment = BookStoreRankFragment.this;
            bookStoreRankFragment.time_choose.setText(q0.f3776goto[!bookStoreRankFragment.f7426do ? 1 : 0]);
            BookStoreRankFragment bookStoreRankFragment2 = BookStoreRankFragment.this;
            BookStoreRankChildFragment bookStoreRankChildFragment = bookStoreRankFragment2.f7428if;
            if (bookStoreRankChildFragment != null) {
                bookStoreRankChildFragment.f7415goto = bookStoreRankFragment2.f7426do;
                bookStoreRankChildFragment.i(true);
            }
            BookStoreRankChildFragment bookStoreRankChildFragment2 = bookStoreRankFragment2.f7427for;
            if (bookStoreRankChildFragment2 != null) {
                bookStoreRankChildFragment2.f7415goto = bookStoreRankFragment2.f7426do;
                bookStoreRankChildFragment2.i(true);
            }
            BookStoreRankChildFragment bookStoreRankChildFragment3 = bookStoreRankFragment2.f7429new;
            if (bookStoreRankChildFragment3 != null) {
                bookStoreRankChildFragment3.f7415goto = bookStoreRankFragment2.f7426do;
                bookStoreRankChildFragment3.i(true);
            }
        }
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static BookStoreRankFragment m3374synchronized(String str, int i, boolean z) {
        BookStoreRankFragment bookStoreRankFragment = new BookStoreRankFragment();
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("rankTypeName", str);
        }
        bundle.putInt("tabIndex", i);
        bundle.putBoolean("isMan", z);
        bookStoreRankFragment.setArguments(bundle);
        return bookStoreRankFragment;
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_book_city_rank;
    }

    @Override // com.apk.g6
    public void initData() {
        String str;
        int i;
        Bundle arguments = getArguments();
        if (arguments != null) {
            str = arguments.getString("rankTypeName");
            i = arguments.getInt("tabIndex");
            this.f7426do = arguments.getBoolean("isMan", true);
        } else {
            str = null;
            i = 0;
        }
        this.time_choose.setText(q0.f3776goto[1 ^ (this.f7426do ? 1 : 0)]);
        this.f7428if = BookStoreRankChildFragment.j("week", str, this.f7426do);
        this.f7427for = BookStoreRankChildFragment.j(TypeAdapters.AnonymousClass27.MONTH, str, this.f7426do);
        BookStoreRankChildFragment j = BookStoreRankChildFragment.j("total", str, this.f7426do);
        this.f7429new = j;
        BookStoreRankChildFragment bookStoreRankChildFragment = this.f7428if;
        boolean z = this.f7426do;
        bookStoreRankChildFragment.f7415goto = z;
        this.f7427for.f7415goto = z;
        j.f7415goto = z;
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f7428if);
        arrayList.add(this.f7427for);
        arrayList.add(this.f7429new);
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        e40 e40Var = new e40(this.mIndicator, this.mViewPager);
        e40Var.m536do(new y30(getFragmentManager(), q0.m2102try(), arrayList));
        if (i != 0) {
            e40Var.m537if(i, false);
        }
    }

    @Override // com.apk.g6
    public void initView() {
        ze.v(getSupportActivity(), this.mIndicator);
    }
}
