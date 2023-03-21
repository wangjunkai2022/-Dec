package com.biquge.ebook.app.ui.view;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import com.apk.eg;
import com.lxj.xpopup.core.PositionPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebChangeSourcePopupView extends PositionPopupView implements View.OnClickListener {

    /* renamed from: for  reason: not valid java name */
    public LinearLayout f7801for;

    /* renamed from: if  reason: not valid java name */
    public LinearLayout f7802if;

    /* renamed from: new  reason: not valid java name */
    public boolean f7803new;

    public WebChangeSourcePopupView(@NonNull Context context, boolean z) {
        super(context);
        this.f7803new = z;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.change_source_guide_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupWidth() {
        return eg.m614switch();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.guide_parent_view) {
            dismiss();
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f7802if = (LinearLayout) findViewById(R.id.change_source_layout);
        this.f7801for = (LinearLayout) findViewById(R.id.change_source_web_layout);
        if (this.f7803new) {
            this.f7802if.setVisibility(4);
            this.f7801for.setVisibility(0);
        }
        findViewById(R.id.guide_parent_view).setOnClickListener(this);
    }
}