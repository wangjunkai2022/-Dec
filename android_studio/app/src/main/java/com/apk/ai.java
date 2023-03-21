package com.apk;

import android.view.View;
import com.biquge.ebook.app.bean.MarqueeBean;
import com.biquge.ebook.app.widget.TopMsgView;
import com.biquge.ebook.app.widget.marqueeview.ShelfMarqueeView;

/* compiled from: ShelfMarqueeView.java */
/* loaded from: classes8.dex */
public class ai extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ int f90do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ShelfMarqueeView f91if;

    public ai(ShelfMarqueeView shelfMarqueeView, int i) {
        this.f91if = shelfMarqueeView;
        this.f90do = i;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        ShelfMarqueeView.Cdo cdo = this.f91if.f8403this;
        if (cdo != null) {
            ch chVar = (ch) cdo;
            MarqueeBean marqueeBean = (MarqueeBean) chVar.f603do.get(this.f90do);
            if (marqueeBean != null) {
                TopMsgView.m3527for(chVar.f604if.getContext(), marqueeBean.getUrl(), marqueeBean.getPkg(), marqueeBean.getLandingtype());
            }
            TopMsgView.m3526do(chVar.f604if, false);
        }
    }
}
