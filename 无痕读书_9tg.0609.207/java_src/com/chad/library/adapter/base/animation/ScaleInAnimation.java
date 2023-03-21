package com.chad.library.adapter.base.animation;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
/* loaded from: classes8.dex */
public class ScaleInAnimation implements BaseAnimation {
    public static final float DEFAULT_SCALE_FROM = 0.5f;
    public final float mFrom;

    public ScaleInAnimation() {
        this(0.5f);
    }

    @Override // com.chad.library.adapter.base.animation.BaseAnimation
    public Animator[] getAnimators(View view) {
        return new ObjectAnimator[]{ObjectAnimator.ofFloat(view, "scaleX", this.mFrom, 1.0f), ObjectAnimator.ofFloat(view, "scaleY", this.mFrom, 1.0f)};
    }

    public ScaleInAnimation(float f) {
        this.mFrom = f;
    }
}
