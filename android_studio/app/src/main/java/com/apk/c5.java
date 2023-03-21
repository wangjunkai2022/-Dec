package com.apk;

import android.widget.TextView;
import com.biquge.ebook.app.widget.AppCheckBox;
import com.lxj.xpopup.core.BasePopupView;
import kimi.wuhends.ebooks.R;

/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class c5 extends yv {
    public c5(g5 g5Var) {
    }

    @Override // com.apk.yv
    /* renamed from: if  reason: not valid java name */
    public void mo308if(BasePopupView basePopupView) {
        AppCheckBox appCheckBox = (AppCheckBox) basePopupView.findViewById(R.id.dialog_choose);
        if (appCheckBox != null) {
            appCheckBox.setChecked(true);
        }
        ((TextView) basePopupView.findViewById(R.id.a8v)).setTextColor(zu.f6262do);
    }
}
