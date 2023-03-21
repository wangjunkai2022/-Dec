package com.apk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.PointF;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.util.Random;
/* compiled from: BadgeAnimator.java */
/* loaded from: classes7.dex */
public class wp0 extends ValueAnimator {

    /* renamed from: do  reason: not valid java name */
    public Cfor[][] f5364do;

    /* renamed from: if  reason: not valid java name */
    public WeakReference<xp0> f5365if;

    /* compiled from: BadgeAnimator.java */
    /* renamed from: com.apk.wp0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            xp0 xp0Var = wp0.this.f5365if.get();
            if (xp0Var != null && xp0Var.isShown()) {
                xp0Var.invalidate();
            } else {
                wp0.this.cancel();
            }
        }
    }

    /* compiled from: BadgeAnimator.java */
    /* renamed from: com.apk.wp0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cfor {

        /* renamed from: case  reason: not valid java name */
        public int f5367case;

        /* renamed from: do  reason: not valid java name */
        public Random f5368do;

        /* renamed from: else  reason: not valid java name */
        public Paint f5369else;

        /* renamed from: for  reason: not valid java name */
        public float f5370for;

        /* renamed from: if  reason: not valid java name */
        public float f5371if;

        /* renamed from: new  reason: not valid java name */
        public float f5372new;

        /* renamed from: try  reason: not valid java name */
        public int f5373try;

        public Cfor(wp0 wp0Var) {
            Paint paint = new Paint();
            this.f5369else = paint;
            paint.setAntiAlias(true);
            this.f5369else.setStyle(Paint.Style.FILL);
            this.f5368do = new Random();
        }
    }

    /* compiled from: BadgeAnimator.java */
    /* renamed from: com.apk.wp0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif extends AnimatorListenerAdapter {
        public Cif() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            xp0 xp0Var = wp0.this.f5365if.get();
            if (xp0Var != null) {
                xp0Var.m3030case();
            }
        }
    }

    public wp0(Bitmap bitmap, PointF pointF, xp0 xp0Var) {
        this.f5365if = new WeakReference<>(xp0Var);
        setFloatValues(0.0f, 1.0f);
        setDuration(500L);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float min = Math.min(width, height) / 6.0f;
        float width2 = pointF.x - (bitmap.getWidth() / 2.0f);
        float height2 = pointF.y - (bitmap.getHeight() / 2.0f);
        Cfor[][] cforArr = (Cfor[][]) Array.newInstance(Cfor.class, (int) (height / min), (int) (width / min));
        for (int i = 0; i < cforArr.length; i++) {
            for (int i2 = 0; i2 < cforArr[i].length; i2++) {
                Cfor cfor = new Cfor(this);
                float f = i2 * min;
                float f2 = i * min;
                cfor.f5373try = bitmap.getPixel((int) f, (int) f2);
                cfor.f5371if = f + width2;
                cfor.f5370for = f2 + height2;
                cfor.f5372new = min;
                cfor.f5367case = Math.max(width, height);
                cforArr[i][i2] = cfor;
            }
        }
        bitmap.recycle();
        this.f5364do = cforArr;
        addUpdateListener(new Cdo());
        addListener(new Cif());
    }
}
