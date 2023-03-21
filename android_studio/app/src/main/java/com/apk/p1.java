package com.apk;

import android.app.Activity;
import com.lxj.xpopup.impl.LoadingPopupView;
import java.lang.ref.WeakReference;
import kimi.wuhends.ebooks.R;

/* compiled from: NewBasePresenter.java */
/* loaded from: classes8.dex */
public class p1 {

    /* renamed from: do  reason: not valid java name */
    public Activity f3559do;

    /* renamed from: if  reason: not valid java name */
    public WeakReference<LoadingPopupView> f3560if;

    /* renamed from: do  reason: not valid java name */
    public void m2016do() {
        try {
            if (this.f3560if == null || this.f3560if.get() == null) {
                return;
            }
            this.f3560if.get().dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m2017if() {
        try {
            if (this.f3560if == null) {
                Activity activity = this.f3559do;
                lv lvVar = new lv();
                Boolean bool = Boolean.FALSE;
                lvVar.f2943try = bool;
                lvVar.f2924for = bool;
                String q = ze.q(R.string.progress_dialog_holdon);
                lvVar.f2917continue = zu.f6266try;
                LoadingPopupView loadingPopupView = new LoadingPopupView(activity, R.layout.code_public_loading_view);
                loadingPopupView.m3605if(q);
                loadingPopupView.popupInfo = lvVar;
                this.f3560if = new WeakReference<>(loadingPopupView);
            }
            if (this.f3560if == null || this.f3560if.get() == null) {
                return;
            }
            LoadingPopupView loadingPopupView2 = this.f3560if.get();
            loadingPopupView2.m3605if(null);
            loadingPopupView2.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
