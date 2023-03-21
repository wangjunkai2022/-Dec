package com.manhua.ui.fragment;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.eg;
import com.apk.g6;
import com.apk.hf;
import com.apk.r5;
import com.apk.ss;
import com.apk.ts;
import com.apk.z2;
import com.apk.ze;
import com.biquge.ebook.app.adapter.WantProgressAdapter;
import com.biquge.ebook.app.bean.WantBookBean;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import com.manhua.ui.fragment.WantComicProgressFragment;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WantComicProgressFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public WantProgressAdapter f10103do;

    /* renamed from: for  reason: not valid java name */
    public final r5 f10104for = new Cif();

    /* renamed from: if  reason: not valid java name */
    public z2 f10105if;
    @BindView(R.id.upload_book_progress_rv)
    public RecyclerView mRecycleView;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout ptrRefreshLayout;

    /* renamed from: com.manhua.ui.fragment.WantComicProgressFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            z2 z2Var = WantComicProgressFragment.this.f10105if;
            if (z2Var != null) {
                z2Var.m3144static();
            }
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(WantComicProgressFragment.this.mRecycleView);
        }
    }

    /* renamed from: com.manhua.ui.fragment.WantComicProgressFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends r5 {
        public Cif() {
        }

        @Override // com.apk.r5
        /* renamed from: super */
        public void mo2240super(WantBookBean wantBookBean) {
            try {
                WantComicProgressFragment.this.a(false);
                if (WantComicProgressFragment.this.f10103do == null || wantBookBean == null) {
                    return;
                }
                WantComicProgressFragment.this.f10103do.setNewData(wantBookBean.getList());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void a(final boolean z) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.ptrRefreshLayout;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.post(new Runnable() { // from class: com.apk.l10
                @Override // java.lang.Runnable
                public final void run() {
                    WantComicProgressFragment.this.m3632synchronized(z);
                }
            });
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return R.layout.fragment_want_book_list;
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        WantProgressAdapter wantProgressAdapter = new WantProgressAdapter(getSupportActivity(), hf.COMIC);
        this.f10103do = wantProgressAdapter;
        this.mRecycleView.setAdapter(wantProgressAdapter);
        this.f10105if = new z2(getSupportActivity(), this.f10104for);
        a(true);
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
        this.mRecycleView.setHasFixedSize(true);
        this.mRecycleView.setLayoutManager(new LinearLayoutManager(getSupportActivity()));
        ze.m3165else(this.mRecycleView);
        PtrClassicFrameLayout ptrClassicFrameLayout = this.ptrRefreshLayout;
        ptrClassicFrameLayout.f4565throw = true;
        ptrClassicFrameLayout.setPtrHandler(new Cdo());
    }

    /* renamed from: synchronized  reason: not valid java name */
    public /* synthetic */ void m3632synchronized(boolean z) {
        if (z) {
            this.ptrRefreshLayout.m2541if();
        } else {
            this.ptrRefreshLayout.m2532break();
        }
    }
}
