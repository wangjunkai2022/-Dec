package com.apk;

import android.view.View;
import com.biquge.ebook.app.bean.TxtCollect;
import com.biquge.ebook.app.ui.webread.ui.WebHistoryActivity;
import com.biquge.ebook.app.ui.webread.ui.WebReadActivity;
import com.chad.library.adapter.base.BaseQuickAdapter;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;

/* compiled from: WebHistoryActivity.java */
/* loaded from: classes8.dex */
public class wd implements BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ WebHistoryActivity f5258do;

    public wd(WebHistoryActivity webHistoryActivity) {
        this.f5258do = webHistoryActivity;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        TxtCollect item;
        if (view.getId() == R.id.item_txt_download_history_delete) {
            TxtCollect item2 = this.f5258do.f7819do.getItem(i);
            if (item2 != null) {
                this.f5258do.f7819do.remove(i);
                this.f5258do.f7819do.notifyDataSetChanged();
                LitePal.deleteAll(TxtCollect.class, "url = ?", item2.getUrl());
            }
        } else if (view.getId() != R.id.item_txt_download_history_layout || (item = this.f5258do.f7819do.getItem(i)) == null) {
        } else {
            WebReadActivity.j(this.f5258do, item.getUrl(), true, false, "浏览历史");
        }
    }
}
