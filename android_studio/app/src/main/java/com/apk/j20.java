package com.apk;

import android.view.animation.Animation;
import com.manhua.ui.widget.ComicReadMenuView;

/* compiled from: ComicReadMenuView.java */
/* loaded from: classes8.dex */
public class j20 implements Animation.AnimationListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicReadMenuView f2275do;

    public j20(ComicReadMenuView comicReadMenuView) {
        this.f2275do = comicReadMenuView;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        ComicReadMenuView comicReadMenuView = this.f2275do;
        comicReadMenuView.f10170throw = false;
        comicReadMenuView.f10158final = false;
        ComicReadMenuView.m3641case(comicReadMenuView, comicReadMenuView.f10156do, true);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        ComicReadMenuView comicReadMenuView = this.f2275do;
        comicReadMenuView.f10158final = true;
        comicReadMenuView.f10151break.mo1425while(false);
    }
}
