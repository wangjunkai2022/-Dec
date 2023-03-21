package com.apk;

import android.content.Context;
import android.view.View;
import com.biquge.ebook.app.bean.DownloadFileModel;
import com.biquge.ebook.app.bean.NewReadFont;
import com.biquge.ebook.app.ui.view.ReadFontPopupView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.HashMap;
import kimi.wuhends.ebooks.R;
/* compiled from: ReadFontPopupView.java */
/* loaded from: classes8.dex */
public class bd implements BaseQuickAdapter.OnItemChildClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ReadFontPopupView f296do;

    public bd(ReadFontPopupView readFontPopupView) {
        this.f296do = readFontPopupView;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
    public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        NewReadFont item;
        if (view.getId() != R.id.item_font_download_txt || (item = this.f296do.f7750do.getItem(i)) == null) {
            return;
        }
        NewReadFont m1488case = kf.m1487try().m1488case(item.getUrl());
        if (m1488case != null) {
            item = m1488case;
        }
        if (kf.m1487try().m1489else(item.getUrl())) {
            return;
        }
        kf m1487try = kf.m1487try();
        Context context = this.f296do.getContext();
        if (m1487try.f2526do == null) {
            m1487try.f2526do = new HashMap();
        }
        item.setFinish(false);
        item.setStartDownload(true);
        mf.m1712do("CACHE_DOWNLOAD_FONT_START", item);
        m1487try.f2526do.put(item.getUrl(), item);
        DownloadFileModel downloadFileModel = new DownloadFileModel();
        downloadFileModel.url = item.getUrl();
        downloadFileModel.info = item.getFontname();
        downloadFileModel.isInstall = false;
        downloadFileModel.isShowToast = false;
        downloadFileModel.savePath = a6.m18else().m20for();
        kf.m1484if(context, downloadFileModel, m1487try.f2527if);
    }
}
