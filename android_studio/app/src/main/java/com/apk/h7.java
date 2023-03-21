package com.apk;

import android.view.View;
import android.view.ViewStub;
import com.biquge.ebook.app.bean.MhtgTwoBean;
import com.biquge.ebook.app.ui.view.MhtgDownloadLayout;
import kimi.wuhends.ebooks.R;

/* compiled from: BaseReadActivity.java */
/* loaded from: classes8.dex */
public class h7 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ MhtgTwoBean f1802do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ b7 f1803if;

    /* compiled from: BaseReadActivity.java */
    /* renamed from: com.apk.h7$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            h7.this.f1803if.o(false, true);
        }
    }

    public h7(b7 b7Var, MhtgTwoBean mhtgTwoBean) {
        this.f1803if = b7Var;
        this.f1802do = mhtgTwoBean;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f1803if.f255if = (MhtgDownloadLayout) ((ViewStub) this.f1803if.findViewById(R.id.fragment_cartton_tg_layout)).inflate();
            this.f1803if.f255if.m3408if(false, true, 0, this.f1802do.getPgname(), this.f1802do.getApkurl(), this.f1802do.getTips2(), this.f1802do.getTips());
            this.f1803if.f255if.findViewById(R.id.cartoon_close_btn).setOnClickListener(new Cdo());
            this.f1803if.f251do = 0L;
        } catch (Exception unused) {
        }
    }
}
