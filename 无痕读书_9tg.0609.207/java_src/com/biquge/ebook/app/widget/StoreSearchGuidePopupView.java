package com.biquge.ebook.app.widget;

import android.content.Context;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.apk.Ccontinue;
import com.apk.bg;
import com.apk.eg;
import com.apk.hf;
import com.lxj.xpopup.core.PositionPopupView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class StoreSearchGuidePopupView extends PositionPopupView {

    /* renamed from: case  reason: not valid java name */
    public ImageView f8172case;

    /* renamed from: for  reason: not valid java name */
    public boolean f8173for;

    /* renamed from: if  reason: not valid java name */
    public boolean f8174if;

    /* renamed from: new  reason: not valid java name */
    public int f8175new;

    /* renamed from: try  reason: not valid java name */
    public ImageView f8176try;

    /* renamed from: com.biquge.ebook.app.widget.StoreSearchGuidePopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ViewTreeObserver.OnGlobalLayoutListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            StoreSearchGuidePopupView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            StoreSearchGuidePopupView storeSearchGuidePopupView = StoreSearchGuidePopupView.this;
            if (storeSearchGuidePopupView.f8175new > storeSearchGuidePopupView.getWidth() - eg.m587catch(200.0f)) {
                layoutParams.rightMargin = eg.m587catch(10.0f);
                layoutParams.addRule(11);
            } else {
                layoutParams.leftMargin = StoreSearchGuidePopupView.this.f8175new;
            }
            layoutParams.addRule(3, R.id.popup_guide_status_iv);
            layoutParams.topMargin = eg.m587catch(5.0f) + StoreSearchGuidePopupView.this.getResources().getDimensionPixelSize(R.dimen.titlebar_height);
            StoreSearchGuidePopupView.this.f8172case.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.StoreSearchGuidePopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends bg {
        public Cif() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            if (StoreSearchGuidePopupView.this.m3495if()) {
                return;
            }
            StoreSearchGuidePopupView.this.dismiss();
        }
    }

    public StoreSearchGuidePopupView(@NonNull Context context, boolean z, boolean z2, int i) {
        super(context);
        this.f8174if = z;
        this.f8173for = z2;
        this.f8175new = i;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.include_guide_store_search_view;
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m3495if() {
        if (this.f8174if && this.f8173for) {
            this.f8176try.setVisibility(8);
            this.f8172case.setVisibility(0);
            this.f8173for = false;
            return true;
        }
        return false;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f8176try = (ImageView) findViewById(R.id.popup_guide_search_iv);
        this.f8172case = (ImageView) findViewById(R.id.popup_guide_model_iv);
        if (this.f8173for && Ccontinue.m379if().f729while == hf.COMIC_BOOK) {
            this.f8172case.setImageResource(R.drawable.guide_store_model_novel);
        }
        this.f8172case.getViewTreeObserver().addOnGlobalLayoutListener(new Cdo());
        if (this.f8174if) {
            this.f8176try.setVisibility(0);
            this.f8172case.setVisibility(8);
        } else {
            this.f8176try.setVisibility(8);
            this.f8172case.setVisibility(0);
        }
        findViewById(R.id.view_parent_layout).setOnClickListener(new Cif());
    }
}
