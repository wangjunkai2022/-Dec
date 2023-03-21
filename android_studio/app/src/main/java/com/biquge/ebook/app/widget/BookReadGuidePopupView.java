package com.biquge.ebook.app.widget;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.apk.bg;
import com.lxj.xpopup.core.PositionPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookReadGuidePopupView extends PositionPopupView {

    /* renamed from: com.biquge.ebook.app.widget.BookReadGuidePopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            BookReadGuidePopupView.this.dismiss();
        }
    }

    public BookReadGuidePopupView(@NonNull Context context) {
        super(context);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.include_read_guide_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        findViewById(R.id.guide_parent_view).setOnClickListener(new Cdo());
    }
}
