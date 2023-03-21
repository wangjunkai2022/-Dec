package com.chad.library.adapter.base.animation;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
/* loaded from: classes8.dex */
public class AlphaInAnimation implements BaseAnimation {
    public static final float DEFAULT_ALPHA_FROM = 0.0f;
    public final float mFrom;

    public AlphaInAnimation() {
        this(0.0f);
    }

    @Override // com.chad.library.adapter.base.animation.BaseAnimation
    public Animator[] getAnimators(View view) {
        return new Animator[]{ObjectAnimator.ofFloat(view, "alpha", this.mFrom, 1.0f)};
    }

    public AlphaInAnimation(float f) {
        this.mFrom = f;
    }
}
