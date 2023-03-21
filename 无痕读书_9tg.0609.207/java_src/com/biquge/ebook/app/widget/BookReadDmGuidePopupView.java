package com.biquge.ebook.app.widget;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.apk.bg;
import com.apk.eg;
import com.lxj.xpopup.core.PositionPopupView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class BookReadDmGuidePopupView extends PositionPopupView {

    /* renamed from: com.biquge.ebook.app.widget.BookReadDmGuidePopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            BookReadDmGuidePopupView.this.dismiss();
        }
    }

    public BookReadDmGuidePopupView(@NonNull Context context) {
        super(context);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.include_read_dm_guide_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupWidth() {
        return eg.m614switch();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        findViewById(R.id.guide_parent_view).setOnClickListener(new Cdo());
    }
}
