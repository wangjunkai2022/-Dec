package com.biquge.ebook.app.ui.webread.view;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import com.apk.eg;
import com.lxj.xpopup.core.PositionPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebMenuGuidePopupView extends PositionPopupView implements View.OnClickListener {

    /* renamed from: for  reason: not valid java name */
    public LinearLayout f7947for;

    /* renamed from: if  reason: not valid java name */
    public LinearLayout f7948if;

    public WebMenuGuidePopupView(@NonNull Context context) {
        super(context);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.web_read_menu_guide_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getMaxWidth() {
        return eg.m614switch();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupWidth() {
        return eg.m614switch();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.guide_two_layout) {
            dismiss();
        } else if (this.f7948if.getVisibility() == 0) {
            this.f7947for.setVisibility(0);
            this.f7948if.setVisibility(8);
        } else {
            dismiss();
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f7948if = (LinearLayout) findViewById(R.id.guide_one_layout);
        this.f7947for = (LinearLayout) findViewById(R.id.guide_two_layout);
        findViewById(R.id.guide_parent_view).setOnClickListener(this);
        this.f7948if.setOnClickListener(this);
        this.f7947for.setOnClickListener(this);
    }
}
