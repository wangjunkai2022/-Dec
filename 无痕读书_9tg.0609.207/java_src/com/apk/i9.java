package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.bean.NewYyConfBean;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import kimi.wuhends.ebooks.R;
/* compiled from: NewBookReadActivity.java */
/* loaded from: classes8.dex */
public class i9 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NewBookReadActivity f2065do;

    public i9(NewBookReadActivity newBookReadActivity) {
        this.f2065do = newBookReadActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        NewBookReadActivity newBookReadActivity = this.f2065do;
        if (newBookReadActivity.f6921catch.m1066default() == 1) {
            newBookReadActivity.f6921catch.x();
        }
        if (newBookReadActivity.f6937public) {
            if (newBookReadActivity.mMenuView.m3345public()) {
                newBookReadActivity.mMenuView.m3337final();
            }
            newBookReadActivity.K();
        }
        try {
            NewYyConfBean newYyConfBean = Ccontinue.m379if().f714for;
            String bd_tts_err = newYyConfBean != null ? newYyConfBean.getBd_tts_err() : null;
            if (TextUtils.isEmpty(bd_tts_err)) {
                bd_tts_err = "朗读失败！<br> <font color='#C0392B'>建议您断开WiFi，使用蜂窝网络尝试</font><br>如仍无法听书，请反馈给客服。";
            }
            zs zsVar = new zs();
            zsVar.f6243do = newBookReadActivity;
            zsVar.f6246for = bd_tts_err;
            zsVar.f6245final = true;
            zsVar.f6249new = ze.q(R.string.tips_reload_txt);
            zsVar.f6251try = new h9(newBookReadActivity);
            zsVar.f6239case = ze.q(R.string.main_cancel);
            zsVar.f6244else = null;
            zsVar.f6242const = true;
            zsVar.f6241class = false;
            eg.f(zsVar);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
