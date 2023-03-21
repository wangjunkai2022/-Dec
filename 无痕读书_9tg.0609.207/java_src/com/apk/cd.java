package com.apk;

import android.view.View;
import com.biquge.ebook.app.bean.NewReadFont;
import com.biquge.ebook.app.ui.view.ReadFontPopupView;
import com.chad.library.adapter.base.BaseQuickAdapter;
/* compiled from: ReadFontPopupView.java */
/* loaded from: classes8.dex */
public class cd implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ReadFontPopupView f578do;

    public cd(ReadFontPopupView readFontPopupView) {
        this.f578do = readFontPopupView;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        NewReadFont item = this.f578do.f7750do.getItem(i);
        if (item != null) {
            NewReadFont m1488case = kf.m1487try().m1488case(item.getUrl());
            if (m1488case != null) {
                item = m1488case;
            }
            if (item.isDownloadOk()) {
                tt.f4763do.putString("refresh_read_font_url", item.getUrl());
                this.f578do.f7750do.f7754if = item.getUrl();
                this.f578do.f7750do.notifyDataSetChanged();
                mf.m1712do("refresh_read_font", item);
            }
        }
    }
}
