package com.apk;

import android.view.View;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.TaskInfo;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.fragment.DownloadTxtListFragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import org.litepal.LitePal;
/* compiled from: DownloadTxtListFragment.java */
/* loaded from: classes8.dex */
public class jb implements BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ DownloadTxtListFragment f2303do;

    public jb(DownloadTxtListFragment downloadTxtListFragment) {
        this.f2303do = downloadTxtListFragment;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        boolean z;
        TaskInfo taskInfo;
        CollectBook m1841throw;
        TaskInfo item = this.f2303do.f7436for.getItem(i);
        if (item != null) {
            try {
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (item.isFinishTask(item.getFinish())) {
                z = true;
                if (z || (taskInfo = (TaskInfo) LitePal.where("url = ?", item.getUrl()).findFirst(TaskInfo.class)) == null || (m1841throw = n2.m1841throw(taskInfo.getBookId())) == null) {
                    return;
                }
                NewBookReadActivity.a0(this.f2303do.getActivity(), m1841throw, null);
                return;
            }
            kf.m1485new(item.getName(), item.getUrl());
        }
        z = false;
        if (z) {
        }
    }
}
