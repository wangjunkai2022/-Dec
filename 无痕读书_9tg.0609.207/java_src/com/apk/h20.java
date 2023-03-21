package com.apk;

import android.widget.FrameLayout;
import android.widget.ImageView;
import com.lxj.xpopup.core.BasePopupView;
import com.manhua.ui.widget.ComicReadMenuView;
import kimi.wuhends.ebooks.R;
/* compiled from: ComicReadMenuView.java */
/* loaded from: classes8.dex */
public class h20 extends yv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicReadMenuView f1727do;

    public h20(ComicReadMenuView comicReadMenuView) {
        this.f1727do = comicReadMenuView;
    }

    @Override // com.apk.yv
    /* renamed from: if */
    public void mo308if(BasePopupView basePopupView) {
        int barrageInputHeight;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int m587catch = eg.m587catch(80.0f);
        barrageInputHeight = this.f1727do.getBarrageInputHeight();
        layoutParams.bottomMargin = eg.m587catch(20.0f) + barrageInputHeight + m587catch + u0.m2663do().f4815if;
        layoutParams.leftMargin = eg.m587catch(60.0f);
        layoutParams.gravity = 80;
        ((ImageView) basePopupView.findViewById(R.id.popup_img_iv)).setLayoutParams(layoutParams);
    }
}
