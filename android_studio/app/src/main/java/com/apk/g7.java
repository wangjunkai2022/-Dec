package com.apk;

import com.biquge.ebook.app.bean.MhtgTwoBean;

/* compiled from: BaseReadActivity.java */
/* loaded from: classes8.dex */
public class g7 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ b7 f1523do;

    public g7(b7 b7Var) {
        this.f1523do = b7Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        MhtgTwoBean mhtgTwoBean = Ccontinue.m379if().f725this;
        if (mhtgTwoBean != null) {
            try {
                if (ze.m3179private("SP_MHTG2_SHOW_MANDATOR_KEY", false)) {
                    b7.j(this.f1523do, mhtgTwoBean);
                } else if (ze.m3179private("SP_MHTG2_SHELF_SHOW_DIALOG_KEY", false)) {
                    int abs = Math.abs(kg.m1494do(ze.a("SP_MHTG2_SHOW_DATE_KEY", System.currentTimeMillis()), System.currentTimeMillis()));
                    if (mhtgTwoBean.getMoredays() == 0 || abs >= mhtgTwoBean.getMoredays()) {
                        if (mhtgTwoBean.getMaxdays() - (abs - mhtgTwoBean.getMoredays()) <= 0) {
                            b7.j(this.f1523do, mhtgTwoBean);
                            tt.f4763do.putBoolean("SP_MHTG2_SHOW_MANDATOR_KEY", true);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
