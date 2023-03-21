package com.apk;

import com.biquge.ebook.app.widget.AppCheckBox;
import kimi.wuhends.ebooks.R;

/* compiled from: UserPresenter.java */
/* loaded from: classes8.dex */
public class b5 implements uv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ g5 f243do;

    public b5(g5 g5Var) {
        this.f243do = g5Var;
    }

    @Override // com.apk.uv
    public void onConfirm() {
        g5.m939for(this.f243do, ((AppCheckBox) this.f243do.f1509new.findViewById(R.id.dialog_choose)).isChecked(), true);
    }
}
