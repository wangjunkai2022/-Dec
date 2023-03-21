package com.apk;

import android.animation.ValueAnimator;
import com.tr.comment.sdk.commons.widget.TrReplyLayout;

/* compiled from: TrReplyLayout.java */
/* loaded from: classes7.dex */
public class m90 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ TrReplyLayout f2993do;

    public m90(TrReplyLayout trReplyLayout) {
        this.f2993do = trReplyLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        try {
            this.f2993do.setListHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
