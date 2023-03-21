package com.apk;

import android.view.View;
import android.view.ViewStub;
import com.biquge.ebook.app.bean.MhtgTwoBean;
import com.biquge.ebook.app.ui.view.MhtgDownloadLayout;
import kimi.wuhends.ebooks.R;
/* compiled from: BaseReadActivity.java */
/* loaded from: classes8.dex */
public class f7 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ MhtgTwoBean f1239do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ b7 f1240if;

    /* compiled from: BaseReadActivity.java */
    /* renamed from: com.apk.f7$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            f7.this.f1240if.o(false, true);
        }
    }

    public f7(b7 b7Var, MhtgTwoBean mhtgTwoBean) {
        this.f1240if = b7Var;
        this.f1239do = mhtgTwoBean;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f1240if.f255if = (MhtgDownloadLayout) ((ViewStub) this.f1240if.findViewById(R.id.fragment_cartton_tg_layout)).inflate();
            this.f1240if.f255if.m3408if(false, true, 0, this.f1239do.getPgname(), this.f1239do.getApkurl(), this.f1239do.getTips2(), this.f1239do.getTips());
            this.f1240if.f255if.findViewById(R.id.cartoon_close_btn).setOnClickListener(new Cdo());
            this.f1240if.f251do = 0L;
        } catch (Exception unused) {
        }
    }
}
