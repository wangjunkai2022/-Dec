package com.apk;

import android.widget.FrameLayout;
import android.widget.ImageView;
import com.biquge.ebook.app.ui.book.NewBookReadMenuView;
import com.lxj.xpopup.core.BasePopupView;
import kimi.wuhends.ebooks.R;
/* compiled from: NewBookReadMenuView.java */
/* loaded from: classes8.dex */
public class u9 extends yv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NewBookReadMenuView f4862do;

    public u9(NewBookReadMenuView newBookReadMenuView) {
        this.f4862do = newBookReadMenuView;
    }

    @Override // com.apk.yv
    /* renamed from: if */
    public void mo308if(BasePopupView basePopupView) {
        int barrageInputHeight;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i = NewBookReadMenuView.f6994instanceof;
        barrageInputHeight = this.f4862do.getBarrageInputHeight();
        layoutParams.bottomMargin = eg.m587catch(20.0f) + barrageInputHeight + i + u0.m2663do().f4815if;
        layoutParams.leftMargin = eg.m587catch(60.0f);
        layoutParams.gravity = 80;
        ((ImageView) basePopupView.findViewById(R.id.popup_img_iv)).setLayoutParams(layoutParams);
    }
}
