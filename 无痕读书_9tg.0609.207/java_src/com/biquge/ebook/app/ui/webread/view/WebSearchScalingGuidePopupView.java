package com.biquge.ebook.app.ui.webread.view;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.apk.eg;
import com.lxj.xpopup.core.PositionPopupView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebSearchScalingGuidePopupView extends PositionPopupView implements View.OnClickListener {
    public WebSearchScalingGuidePopupView(@NonNull Context context) {
        super(context);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.web_search_scaling_guide_layout;
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
        dismiss();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        findViewById(R.id.guide_parent_view).setOnClickListener(this);
    }
}
