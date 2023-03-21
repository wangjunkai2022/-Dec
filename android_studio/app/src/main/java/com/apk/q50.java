package com.apk;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;

/* compiled from: TrSplashZoomOutLayout.java */
/* loaded from: classes7.dex */
public class q50 extends FrameLayout {

    /* renamed from: case  reason: not valid java name */
    public float f3803case;

    /* renamed from: do  reason: not valid java name */
    public float f3804do;

    /* renamed from: else  reason: not valid java name */
    public float f3805else;

    /* renamed from: for  reason: not valid java name */
    public int f3806for;

    /* renamed from: goto  reason: not valid java name */
    public final int f3807goto;

    /* renamed from: if  reason: not valid java name */
    public float f3808if;

    /* renamed from: new  reason: not valid java name */
    public int f3809new;

    /* renamed from: try  reason: not valid java name */
    public int f3810try;

    /* compiled from: TrSplashZoomOutLayout.java */
    /* renamed from: com.apk.q50$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = (View) q50.this.getParent();
            if (view == null) {
                return;
            }
            int width = view.getWidth();
            int height = view.getHeight();
            q50 q50Var = q50.this;
            int height2 = height - q50Var.getHeight();
            q50 q50Var2 = q50.this;
            q50Var.f3810try = height2 - q50Var2.f3806for;
            q50Var2.f3809new = (width - q50Var2.getWidth()) - q50.this.f3806for;
        }
    }

    public q50(Context context, int i) {
        super(context);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(10.0f);
        setBackgroundDrawable(gradientDrawable);
        setClipToOutline(true);
        this.f3806for = i;
        this.f3807goto = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        post(new Cdo());
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        if (r3 > r4) goto L15;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r9) {
        /*
            r8 = this;
            int r0 = r9.getAction()
            if (r0 == 0) goto La3
            r1 = 0
            r3 = 1
            if (r0 == r3) goto L6e
            r3 = 2
            if (r0 == r3) goto L10
            goto Lbe
        L10:
            float r0 = r9.getRawX()
            float r3 = r8.f3804do
            float r0 = r0 + r3
            float r3 = r9.getRawY()
            float r4 = r8.f3808if
            float r3 = r3 + r4
            float r4 = r8.f3803case
            float r5 = r8.getX()
            float r5 = r0 - r5
            float r5 = java.lang.Math.abs(r5)
            float r5 = r5 + r4
            r8.f3803case = r5
            float r4 = r8.f3805else
            float r5 = r8.getY()
            float r5 = r3 - r5
            float r5 = java.lang.Math.abs(r5)
            float r5 = r5 + r4
            r8.f3805else = r5
            int r4 = r8.f3806for
            float r5 = (float) r4
            int r6 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r6 >= 0) goto L45
            r0 = r5
            goto L4d
        L45:
            int r6 = r8.f3809new
            float r6 = (float) r6
            int r7 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r7 <= 0) goto L4d
            r0 = r6
        L4d:
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 >= 0) goto L52
            goto L59
        L52:
            int r4 = r8.f3810try
            float r5 = (float) r4
            int r5 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r5 <= 0) goto L5a
        L59:
            float r3 = (float) r4
        L5a:
            android.view.ViewPropertyAnimator r4 = r8.animate()
            android.view.ViewPropertyAnimator r0 = r4.x(r0)
            android.view.ViewPropertyAnimator r0 = r0.y(r3)
            android.view.ViewPropertyAnimator r0 = r0.setDuration(r1)
            r0.start()
            goto Lbe
        L6e:
            float r0 = r9.getRawX()
            float r4 = r8.f3804do
            float r0 = r0 + r4
            r4 = 1073741824(0x40000000, float:2.0)
            float r0 = r0 * r4
            int r4 = r8.f3809new
            float r4 = (float) r4
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 <= 0) goto L81
            goto L84
        L81:
            int r0 = r8.f3806for
            float r4 = (float) r0
        L84:
            android.view.ViewPropertyAnimator r0 = r8.animate()
            android.view.ViewPropertyAnimator r0 = r0.x(r4)
            android.view.ViewPropertyAnimator r0 = r0.setDuration(r1)
            r0.start()
            float r0 = r8.f3803case
            int r1 = r8.f3807goto
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto La2
            float r0 = r8.f3805else
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto Lbe
        La2:
            return r3
        La3:
            float r0 = r8.getX()
            float r1 = r9.getRawX()
            float r0 = r0 - r1
            r8.f3804do = r0
            float r0 = r8.getY()
            float r1 = r9.getRawY()
            float r0 = r0 - r1
            r8.f3808if = r0
            r0 = 0
            r8.f3803case = r0
            r8.f3805else = r0
        Lbe:
            boolean r9 = super.onInterceptTouchEvent(r9)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.q50.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }
}
