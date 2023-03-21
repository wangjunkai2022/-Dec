package com.apk;

import android.view.animation.Animation;
import android.widget.TextView;
import com.manhua.ui.widget.ComicReadMenuView;

/* compiled from: ComicReadMenuView.java */
/* loaded from: classes8.dex */
public class m20 implements Animation.AnimationListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicReadMenuView f2975do;

    public m20(ComicReadMenuView comicReadMenuView) {
        this.f2975do = comicReadMenuView;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        ComicReadMenuView comicReadMenuView = this.f2975do;
        comicReadMenuView.f10158final = false;
        if (comicReadMenuView.mDefuaultLayout.getVisibility() != 8) {
            this.f2975do.mDefuaultLayout.setVisibility(8);
        }
        if (this.f2975do.mSetLayout.getVisibility() != 8) {
            this.f2975do.mSetLayout.setVisibility(8);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        TextView textView;
        ComicReadMenuView comicReadMenuView = this.f2975do;
        comicReadMenuView.f10158final = true;
        comicReadMenuView.f10151break.mo1425while(true);
        if (!w0.m2890static() || (textView = this.f2975do.mBarrageSwitchView) == null || textView.getVisibility() == 8) {
            return;
        }
        this.f2975do.mBarrageSwitchView.setVisibility(8);
    }
}
