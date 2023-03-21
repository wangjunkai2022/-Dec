package com.apk;

import android.view.ViewStub;
import com.biquge.ebook.app.bean.MhtgTwoBean;
import com.biquge.ebook.app.ui.view.MhtgDownloadLayout;
import kimi.wuhends.ebooks.R;

/* compiled from: BaseShelfFragment.java */
/* loaded from: classes8.dex */
public abstract class qa extends g6 {

    /* renamed from: do  reason: not valid java name */
    public MhtgDownloadLayout f3824do;

    public final void a(MhtgTwoBean mhtgTwoBean, boolean z, int i) {
        try {
            MhtgDownloadLayout mhtgDownloadLayout = (MhtgDownloadLayout) ((ViewStub) findViewById(R.id.fragment_cartton_tg_layout)).inflate();
            this.f3824do = mhtgDownloadLayout;
            mhtgDownloadLayout.m3408if(true, z, i, mhtgTwoBean.getPgname(), mhtgTwoBean.getApkurl(), mhtgTwoBean.getTips2(), mhtgTwoBean.getTips());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.g6
    public int getLayoutId() {
        return 0;
    }

    @Override // com.apk.g6
    public void initData() {
        super.initData();
        if ("SOURCE_NOVEL_VALUE".equals(mo2111synchronized())) {
            MhtgTwoBean mhtgTwoBean = Ccontinue.m379if().f706break;
            if (mhtgTwoBean != null) {
                try {
                    if (ze.m3179private("SP_XSTG2_SHOW_MANDATOR_KEY", false)) {
                        a(mhtgTwoBean, true, 0);
                    } else if (ze.m3179private("SP_XSTG2_SHELF_SHOW_DIALOG_KEY", false)) {
                        int abs = Math.abs(kg.m1494do(ze.a("SP_XSTG2_SHOW_DATE_KEY", System.currentTimeMillis()), System.currentTimeMillis()));
                        if (mhtgTwoBean.getMoredays() == 0 || abs >= mhtgTwoBean.getMoredays()) {
                            int maxdays = mhtgTwoBean.getMaxdays() - (abs - mhtgTwoBean.getMoredays());
                            if (maxdays <= 0) {
                                a(mhtgTwoBean, true, maxdays);
                                tt.f4763do.putBoolean("SP_XSTG2_SHOW_MANDATOR_KEY", true);
                            } else {
                                String str = "," + kg.m1498if() + ",";
                                String m2620do = tt.m2620do("SP_XSTG2_SHOW_DATE_DAYS_KEY", "");
                                String str2 = "SP_XSTG2_ONEDAY_SHOW_COUNT_KEY" + str;
                                int m3174instanceof = ze.m3174instanceof(str2, 0);
                                if (!m2620do.contains(str)) {
                                    a(mhtgTwoBean, false, maxdays);
                                    tt.f4763do.putString("SP_XSTG2_SHOW_DATE_DAYS_KEY", m2620do + str);
                                    tt.f4763do.putInt(str2, 1);
                                } else if (m3174instanceof < mhtgTwoBean.getShowcounts()) {
                                    a(mhtgTwoBean, false, maxdays);
                                    tt.f4763do.putInt(str2, m3174instanceof + 1);
                                }
                            }
                        }
                    }
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            return;
        }
        MhtgTwoBean mhtgTwoBean2 = Ccontinue.m379if().f725this;
        if (mhtgTwoBean2 != null) {
            try {
                if (ze.m3179private("SP_MHTG2_SHOW_MANDATOR_KEY", false)) {
                    a(mhtgTwoBean2, true, 0);
                } else if (ze.m3179private("SP_MHTG2_SHELF_SHOW_DIALOG_KEY", false)) {
                    int abs2 = Math.abs(kg.m1494do(ze.a("SP_MHTG2_SHOW_DATE_KEY", System.currentTimeMillis()), System.currentTimeMillis()));
                    if (mhtgTwoBean2.getMoredays() == 0 || abs2 >= mhtgTwoBean2.getMoredays()) {
                        int maxdays2 = mhtgTwoBean2.getMaxdays() - (abs2 - mhtgTwoBean2.getMoredays());
                        if (maxdays2 <= 0) {
                            a(mhtgTwoBean2, true, maxdays2);
                            tt.f4763do.putBoolean("SP_MHTG2_SHOW_MANDATOR_KEY", true);
                        } else {
                            String str3 = "," + kg.m1498if() + ",";
                            String m2620do2 = tt.m2620do("SP_MHTG2_SHOW_DATE_DAYS_KEY", "");
                            String str4 = "SP_MHTG2_ONEDAY_SHOW_COUNT_KEY" + str3;
                            int m3174instanceof2 = ze.m3174instanceof(str4, 0);
                            if (!m2620do2.contains(str3)) {
                                a(mhtgTwoBean2, false, maxdays2);
                                tt.f4763do.putString("SP_MHTG2_SHOW_DATE_DAYS_KEY", m2620do2 + str3);
                                tt.f4763do.putInt(str4, 1);
                            } else if (m3174instanceof2 < mhtgTwoBean2.getShowcounts()) {
                                a(mhtgTwoBean2, false, maxdays2);
                                tt.f4763do.putInt(str4, m3174instanceof2 + 1);
                            }
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.apk.g6
    public void initView() {
        super.initView();
    }

    /* renamed from: synchronized  reason: not valid java name */
    public abstract String mo2111synchronized();
}
