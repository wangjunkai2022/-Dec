package com.apk;

import com.biquge.ebook.app.bean.TxtCollect;
import com.biquge.ebook.app.ui.webread.ui.WebHistoryActivity;
import java.util.List;
import org.litepal.LitePal;
/* compiled from: WebHistoryActivity.java */
/* loaded from: classes8.dex */
public class xd extends c1<List<TxtCollect>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ WebHistoryActivity f5513do;

    public xd(WebHistoryActivity webHistoryActivity) {
        this.f5513do = webHistoryActivity;
    }

    @Override // com.apk.c1
    public List<TxtCollect> doInBackground() {
        return LitePal.order("id desc").limit(30).where("type = ?", "SP_WEBVIEW_WEBSITE_HISTORY_KEY").find(TxtCollect.class);
    }

    @Override // com.apk.c1
    public void onPostExecute(List<TxtCollect> list) {
        List<TxtCollect> list2 = list;
        super.onPostExecute(list2);
        WebHistoryActivity.Cif cif = this.f5513do.f7819do;
        if (cif == null || list2 == null) {
            return;
        }
        cif.setNewData(list2);
    }
}
