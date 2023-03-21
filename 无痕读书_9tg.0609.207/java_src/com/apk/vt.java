package com.apk;

import android.view.View;
import com.biquge.ebook.app.bean.CommendMediaListNameBean;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.expand.CommendMediaDialog;
/* compiled from: CommendMediaDialog.java */
/* loaded from: classes8.dex */
public class vt implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ CommendMediaDialog f5202do;

    public vt(CommendMediaDialog commendMediaDialog) {
        this.f5202do = commendMediaDialog;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        CommendMediaListNameBean item = this.f5202do.f9393if.getItem(i);
        if (item != null) {
            CommendMediaDialog.m3589if(this.f5202do.getContext(), item);
        }
    }
}
