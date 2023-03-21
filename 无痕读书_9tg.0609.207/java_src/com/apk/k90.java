package com.apk;

import android.animation.ValueAnimator;
import com.tr.comment.sdk.commons.widget.TrReplyLayout;
/* compiled from: TrReplyLayout.java */
/* loaded from: classes7.dex */
public class k90 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ TrReplyLayout f2495do;

    public k90(TrReplyLayout trReplyLayout) {
        this.f2495do = trReplyLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        try {
            this.f2495do.setListHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
        } catch (Exception unused) {
        }
    }
}
