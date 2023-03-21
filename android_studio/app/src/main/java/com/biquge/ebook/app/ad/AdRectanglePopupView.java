package com.biquge.ebook.app.ad;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.apk.Cpackage;
import com.apk.eg;
import com.apk.i;
import com.biquge.ebook.app.ad.ads.AdViewRectangle;
import com.lxj.xpopup.core.CenterPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class AdRectanglePopupView extends CenterPopupView {

    /* renamed from: do  reason: not valid java name */
    public final Activity f6292do;

    /* renamed from: if  reason: not valid java name */
    public AdViewRectangle f6293if;

    public AdRectanglePopupView(@NonNull Activity activity) {
        super(activity);
        this.f6292do = activity;
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.ad_rectangle_popup_layout;
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getMaxWidth() {
        return eg.m614switch();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        AdViewRectangle adViewRectangle = (AdViewRectangle) findViewById(R.id.adview_rectangle);
        this.f6293if = adViewRectangle;
        try {
            adViewRectangle.m3274for(this.f6292do, new Cpackage(this), "dir_rect");
            i.m1173case("dir_rect");
            i.m1174do("dir_rect");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onDismiss() {
        super.onDismiss();
        AdViewRectangle adViewRectangle = this.f6293if;
        if (adViewRectangle != null) {
            adViewRectangle.m3275new();
        }
    }
}
