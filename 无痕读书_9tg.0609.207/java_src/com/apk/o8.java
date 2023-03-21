package com.apk;

import com.biquge.ebook.app.bean.CacheBean;
import com.biquge.ebook.app.ui.activity.SetActivity;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* compiled from: SetActivity.java */
/* loaded from: classes8.dex */
public class o8 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ SetActivity f3379do;

    public o8(SetActivity setActivity) {
        this.f3379do = setActivity;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        try {
            LitePal.deleteAll(CacheBean.class, "clear = ?", "true");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        try {
            this.f3379do.hideBaseLoading();
            ToastUtils.show((int) R.string.tips_clear_finish_txt);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        this.f3379do.showBaseLoading(ze.q(R.string.tips_clear_in_txt));
    }
}
