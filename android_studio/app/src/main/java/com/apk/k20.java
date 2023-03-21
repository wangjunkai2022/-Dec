package com.apk;

import android.view.animation.Animation;
import android.widget.TextView;
import com.manhua.ui.widget.ComicReadMenuView;

/* compiled from: ComicReadMenuView.java */
/* loaded from: classes8.dex */
public class k20 implements Animation.AnimationListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicReadMenuView f2449do;

    public k20(ComicReadMenuView comicReadMenuView) {
        this.f2449do = comicReadMenuView;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        TextView textView;
        boolean z = false;
        this.f2449do.f10158final = false;
        if (w0.m2890static() && (textView = this.f2449do.mBarrageSwitchView) != null) {
            textView.setVisibility(0);
        }
        f00 f00Var = this.f2449do.f10153catch;
        String str = f00Var.f1194throws;
        if (str == null || !str.equals(f00Var.f1195try)) {
            f00Var.f1194throws = f00Var.f1195try;
            z = da.m433super(f00Var.m702catch());
        }
        if (z) {
            ComicReadMenuView comicReadMenuView = this.f2449do;
            if (comicReadMenuView == null) {
                throw null;
            }
            new b1().m141do(new p20(comicReadMenuView));
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        this.f2449do.f10158final = true;
    }
}
