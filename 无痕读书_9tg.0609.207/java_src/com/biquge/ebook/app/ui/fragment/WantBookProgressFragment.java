package com.biquge.ebook.app.ui.fragment;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.apk.eg;
import com.apk.g6;
import com.apk.hf;
import com.apk.ss;
import com.apk.ts;
import com.apk.u5;
import com.apk.v3;
import com.apk.ze;
import com.biquge.ebook.app.adapter.WantProgressAdapter;
import com.biquge.ebook.app.bean.WantBookBean;
import com.biquge.ebook.app.ui.fragment.WantBookProgressFragment;
import com.chanven.lib.cptr.PtrClassicFrameLayout;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WantBookProgressFragment extends g6 {

    /* renamed from: do  reason: not valid java name */
    public v3 f7613do;

    /* renamed from: for  reason: not valid java name */
    public final u5 f7614for = new Cif();

    /* renamed from: if  reason: not valid java name */
    public WantProgressAdapter f7615if;
    @BindView(R.id.upload_book_progress_rv)
    public RecyclerView mRecycleView;
    @BindView(R.id.refresh_rv_layout)
    public PtrClassicFrameLayout ptrRefreshLayout;

    /* renamed from: com.biquge.ebook.app.ui.fragment.WantBookProgressFragment$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ts {
        public Cdo() {
        }

        @Override // com.apk.ts
        /* renamed from: do */
        public void mo41do(ss ssVar) {
            v3 v3Var = WantBookProgressFragment.this.f7613do;
            if (v3Var != null) {
                v3Var.m2773throws();
            }
        }

        @Override // com.apk.ts
        /* renamed from: if */
        public boolean mo42if(ss ssVar, View view, View view2) {
            return eg.m586case(WantBookProgressFragment.this.mRecycleView);
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.fragment.WantBookProgressFragment$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends u5 {
        public Cif() {
        }

        @Override // com.apk.u5
        /* renamed from: return */
        public void mo2684return(WantBookBean wantBookBean) {
            try {
                WantBookProgressFragment.this.a(false);
                if (WantBookProgressFragment.this.f7615if == null || wantBookBean == null) {
                    return;
                }
                WantBookProgressFragment.this.f7615if.setNewData(wantBookBean.getList());
            } catch (Exception unused) {
            }
        }
    }

    public void a(final boolean z) {
        PtrClassicFrameLayout ptrClassicFrameLayout = this.ptrRefreshLayout;
        if (ptrClassicFrameLayout != null) {
            ptrClassicFrameLayout.post(new Runnable() { // from class: com.apk.pa
                @Override // java.lang.Runnable
                public final void run() {
                    WantBookProgressFragment.this.m3386synchronized(z);
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
        WantProgressAdapter wantProgressAdapter = new WantProgressAdapter(getSupportActivity(), hf.BOOK);
        this.f7615if = wantProgressAdapter;
        this.mRecycleView.setAdapter(wantProgressAdapter);
        this.f7613do = new v3(getSupportActivity(), this.f7614for);
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
    public /* synthetic */ void m3386synchronized(boolean z) {
        if (z) {
            this.ptrRefreshLayout.m2541if();
        } else {
            this.ptrRefreshLayout.m2532break();
        }
    }
}
