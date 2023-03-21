package com.apk;

import android.view.animation.Animation;
import com.manhua.ui.widget.ComicReadMenuView;
/* compiled from: ComicReadMenuView.java */
/* loaded from: classes8.dex */
public class l20 implements Animation.AnimationListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicReadMenuView f2737do;

    public l20(ComicReadMenuView comicReadMenuView) {
        this.f2737do = comicReadMenuView;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        ComicReadMenuView comicReadMenuView = this.f2737do;
        comicReadMenuView.f10158final = false;
        ComicReadMenuView.m3641case(comicReadMenuView, comicReadMenuView.f10156do, false);
        this.f2737do.mTopLayout.setVisibility(8);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        this.f2737do.f10158final = true;
    }
}
