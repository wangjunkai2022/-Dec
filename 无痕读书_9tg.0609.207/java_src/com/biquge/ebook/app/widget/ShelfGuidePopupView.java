package com.biquge.ebook.app.widget;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.apk.Ccontinue;
import com.apk.eg;
import com.apk.hf;
import com.lxj.xpopup.core.PositionPopupView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ShelfGuidePopupView extends PositionPopupView implements View.OnClickListener {

    /* renamed from: if  reason: not valid java name */
    public ImageView f8144if;

    /* renamed from: com.biquge.ebook.app.widget.ShelfGuidePopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ViewTreeObserver.OnGlobalLayoutListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ShelfGuidePopupView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ShelfGuidePopupView.this.f8144if.getWidth(), ShelfGuidePopupView.this.f8144if.getHeight());
            layoutParams.topMargin = eg.m587catch(6.0f);
            layoutParams.leftMargin = (eg.m614switch() / 2) - eg.m587catch(20.0f);
            ShelfGuidePopupView.this.f8144if.setLayoutParams(layoutParams);
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.guide_shelf_view;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dismiss();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f8144if = (ImageView) findViewById(R.id.popup_guide_tab_iv);
        if (Ccontinue.m379if().f729while == hf.COMIC_BOOK) {
            this.f8144if.setImageResource(R.drawable.icon_guide_shelf_tab_novel);
        }
        this.f8144if.getViewTreeObserver().addOnGlobalLayoutListener(new Cdo());
        findViewById(R.id.view_parent_layout).setOnClickListener(this);
    }
}
