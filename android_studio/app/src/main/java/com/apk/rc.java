package com.apk;

import android.view.View;
import com.biquge.ebook.app.ui.view.ConfigImagePopupView;

/* compiled from: ConfigImagePopupView.java */
/* loaded from: classes8.dex */
public class rc implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ConfigImagePopupView f4024do;

    public rc(ConfigImagePopupView configImagePopupView) {
        this.f4024do = configImagePopupView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f4024do.dismiss();
    }
}
