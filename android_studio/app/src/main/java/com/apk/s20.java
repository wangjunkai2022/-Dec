package com.apk;

import android.view.View;
import com.biquge.ebook.app.adapter.FailedMsgAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.ui.widget.PublicLoadingView;

/* compiled from: PublicLoadingView.java */
/* loaded from: classes8.dex */
public class s20 implements BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ FailedMsgAdapter f4260do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ PublicLoadingView f4261if;

    public s20(PublicLoadingView publicLoadingView, FailedMsgAdapter failedMsgAdapter) {
        this.f4261if = publicLoadingView;
        this.f4260do = failedMsgAdapter;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (this.f4260do != null) {
            FailedMsgAdapter.m3282do(this.f4261if.getContext(), this.f4260do.getItem(i));
        }
    }
}
