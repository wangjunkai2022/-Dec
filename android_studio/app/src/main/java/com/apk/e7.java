package com.apk;

import com.biquge.ebook.app.bean.MhtgTwoBean;

/* compiled from: BaseReadActivity.java */
/* loaded from: classes8.dex */
public class e7 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ b7 f1022do;

    public e7(b7 b7Var) {
        this.f1022do = b7Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (ze.m3179private("SP_XSTG2_SHELF_SHOW_DIALOG_KEY", false)) {
                MhtgTwoBean mhtgTwoBean = Ccontinue.m379if().f706break;
                int abs = Math.abs(kg.m1494do(ze.a("SP_XSTG2_SHOW_DATE_KEY", System.currentTimeMillis()), System.currentTimeMillis()));
                if (mhtgTwoBean.getMoredays() == 0 || abs >= mhtgTwoBean.getMoredays()) {
                    if (mhtgTwoBean.getMaxdays() - (abs - mhtgTwoBean.getMoredays()) <= 0) {
                        b7.i(this.f1022do, mhtgTwoBean);
                        tt.f4763do.putBoolean("SP_XSTG2_SHOW_MANDATOR_KEY", true);
                    }
                }
            }
        } catch (Exception unused) {
        }
    }
}
