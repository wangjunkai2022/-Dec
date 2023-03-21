package com.apk;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: ImmersionBar.java */
/* loaded from: classes8.dex */
public final class hu implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ViewGroup.LayoutParams f1989do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ int f1990for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ View f1991if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ Integer f1992new;

    public hu(ViewGroup.LayoutParams layoutParams, View view, int i, Integer num) {
        this.f1989do = layoutParams;
        this.f1991if = view;
        this.f1990for = i;
        this.f1992new = num;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1989do.height = (this.f1991if.getHeight() + this.f1990for) - this.f1992new.intValue();
        View view = this.f1991if;
        view.setPadding(view.getPaddingLeft(), (this.f1991if.getPaddingTop() + this.f1990for) - this.f1992new.intValue(), this.f1991if.getPaddingRight(), this.f1991if.getPaddingBottom());
        this.f1991if.setLayoutParams(this.f1989do);
    }
}
