package com.expand.listen.fragment;

import android.os.Bundle;
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
public class ListenRankFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public ListenRankChildFragment f9411do;

    /* renamed from: for  reason: not valid java name */
    public ListenRankChildFragment f9412for;

    /* renamed from: if  reason: not valid java name */
    public ListenRankChildFragment f9413if;
    @BindView(R.id.fragment_listen_rank_indicator)
    public b40 mIndicator;
    @BindView(R.id.fragment_listen_rank_viewPager)
    public ViewPager mViewPager;

    /* renamed from: new  reason: not valid java name */
    public String f9414new;
    @BindView(R.id.time_choose)
    public TextView time_choose;

    /* renamed from: try  reason: not valid java name */
    public final nt.Cdo f9415try = new Cdo();

    /* renamed from: com.expand.listen.fragment.ListenRankFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements nt.Cdo {
        public Cdo() {
        }

        @Override // com.apk.nt.Cdo
        public void onDismiss() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.apk.nt.Cdo
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            boolean z = i == 0 ? 1 : 0;
            ListenRankFragment.this.time_choose.setText(q0.f3776goto[!z]);
            ListenRankFragment listenRankFragment = ListenRankFragment.this;
            ListenRankChildFragment listenRankChildFragment = listenRankFragment.f9411do;
            if (listenRankChildFragment != null) {
                listenRankChildFragment.f9396case = z;
                listenRankChildFragment.i(true);
            }
            ListenRankChildFragment listenRankChildFragment2 = listenRankFragment.f9413if;
            if (listenRankChildFragment2 != null) {
                listenRankChildFragment2.f9396case = z;
                listenRankChildFragment2.i(true);
            }
            ListenRankChildFragment listenRankChildFragment3 = listenRankFragment.f9412for;
            if (listenRankChildFragment3 != null) {
                listenRankChildFragment3.f9396case = z;
                listenRankChildFragment3.i(true);
            }
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_listen_city_rank;
    }

    @Override // com.apk.g6
    public void initData() {
        this.f9411do = ListenRankChildFragment.k("week", this.f9414new);
        this.f9413if = ListenRankChildFragment.k(TypeAdapters.AnonymousClass27.MONTH, this.f9414new);
        this.f9412for = ListenRankChildFragment.k("total", this.f9414new);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f9411do);
        arrayList.add(this.f9413if);
        arrayList.add(this.f9412for);
        this.mViewPager.setOffscreenPageLimit(arrayList.size());
        new e40(this.mIndicator, this.mViewPager).m536do(new y30(getFragmentManager(), q0.f3771case, arrayList));
        this.time_choose.setText(q0.f3776goto[0]);
    }

    @Override // com.apk.g6
    public void initView() {
        ze.v(getSupportActivity(), this.mIndicator);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f9414new = arguments.getString("SOURCE_TYPE_KEY");
        }
    }
}
