package com.biquge.ebook.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.apk.eg;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class SwitchNightRelativeLayout extends RelativeLayout {

    /* renamed from: do  reason: not valid java name */
    public ImageView f8252do;

    /* renamed from: if  reason: not valid java name */
    public View f8253if;

    /* renamed from: com.biquge.ebook.app.widget.SwitchNightRelativeLayout$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Animation.AnimationListener {

        /* renamed from: com.biquge.ebook.app.widget.SwitchNightRelativeLayout$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class animation.Animation$AnimationListenerC0096do implements Animation.AnimationListener {
            public animation.Animation$AnimationListenerC0096do() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                SwitchNightRelativeLayout.super.setVisibility(8);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        public Cdo() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation.setInterpolator(new LinearInterpolator());
            alphaAnimation.setDuration(400L);
            SwitchNightRelativeLayout.super.startAnimation(alphaAnimation);
            alphaAnimation.setAnimationListener(new animation.Animation$AnimationListenerC0096do());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public SwitchNightRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_switch_night, (ViewGroup) null);
        this.f8253if = inflate;
        this.f8252do = (ImageView) inflate.findViewById(R.id.tv_icon);
        addView(this.f8253if);
        setOnClickListener(null);
    }

    /* renamed from: for  reason: not valid java name */
    public void m3521for(int i, boolean z) {
        int i2 = !z ? R.drawable.icon_switch_night : R.drawable.icon_switch_day;
        if (i == 0) {
            super.setVisibility(0);
        } else if (i == 4) {
            super.setVisibility(4);
        } else if (i != 8) {
        } else {
            super.setVisibility(0);
            AnimationSet animationSet = new AnimationSet(true);
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, eg.m611static() / 2, 0.0f);
            RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 0, 1, 0.5f, 1, 0.5f);
            animationSet.addAnimation(alphaAnimation);
            animationSet.addAnimation(translateAnimation);
            animationSet.addAnimation(rotateAnimation);
            alphaAnimation.setDuration(400L);
            translateAnimation.setDuration(400L);
            rotateAnimation.setStartOffset(400L);
            rotateAnimation.setDuration(1000L);
            this.f8252do.setImageResource(i2);
            animationSet.setAnimationListener(new Cdo());
            this.f8252do.startAnimation(animationSet);
        }
    }
}
