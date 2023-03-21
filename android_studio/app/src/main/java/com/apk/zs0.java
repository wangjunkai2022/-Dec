package com.apk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

/* compiled from: ColorWheelView.java */
/* loaded from: classes7.dex */
public class zs0 extends FrameLayout implements ts0, bt0 {

    /* renamed from: break  reason: not valid java name */
    public at0 f6252break;

    /* renamed from: case  reason: not valid java name */
    public int f6253case;

    /* renamed from: do  reason: not valid java name */
    public float f6254do;

    /* renamed from: else  reason: not valid java name */
    public boolean f6255else;

    /* renamed from: for  reason: not valid java name */
    public float f6256for;

    /* renamed from: goto  reason: not valid java name */
    public ys0 f6257goto;

    /* renamed from: if  reason: not valid java name */
    public float f6258if;

    /* renamed from: new  reason: not valid java name */
    public float f6259new;

    /* renamed from: this  reason: not valid java name */
    public us0 f6260this;

    /* renamed from: try  reason: not valid java name */
    public PointF f6261try;

    public zs0(Context context) {
        super(context, null, 0);
        this.f6259new = 27.0f;
        this.f6261try = new PointF();
        this.f6253case = -65281;
        this.f6260this = new us0();
        this.f6252break = new at0(this);
        this.f6259new = getResources().getDisplayMetrics().density * 9.0f;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        xs0 xs0Var = new xs0(context);
        int i = (int) this.f6259new;
        xs0Var.setPadding(i, i, i, i);
        addView(xs0Var, layoutParams);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        ys0 ys0Var = new ys0(context);
        this.f6257goto = ys0Var;
        ys0Var.setSelectorRadiusPx(this.f6259new);
        addView(this.f6257goto, layoutParams2);
    }

    @Override // com.apk.ts0
    /* renamed from: do */
    public void mo2618do(vs0 vs0Var) {
        this.f6260this.mo2618do(vs0Var);
    }

    /* renamed from: for  reason: not valid java name */
    public void m3246for(int i, boolean z) {
        float f;
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        double d = (float) ((fArr[0] / 180.0f) * 3.141592653589793d);
        m3247new((float) ((Math.cos(d) * fArr[1] * this.f6254do) + this.f6258if), (float) ((Math.sin(d) * (-f)) + this.f6256for));
        this.f6253case = i;
        if (this.f6255else) {
            return;
        }
        this.f6260this.m2733for(i, false, z);
    }

    @Override // com.apk.ts0
    public int getColor() {
        return this.f6260this.f4966if;
    }

    @Override // com.apk.ts0
    /* renamed from: if */
    public void mo2619if(vs0 vs0Var) {
        this.f6260this.mo2619if(vs0Var);
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3247new(float f, float f2) {
        float f3 = f - this.f6258if;
        float f4 = f2 - this.f6256for;
        double sqrt = Math.sqrt((f4 * f4) + (f3 * f3));
        float f5 = this.f6254do;
        if (sqrt > f5) {
            f3 = (float) ((f5 / sqrt) * f3);
            f4 = (float) ((f5 / sqrt) * f4);
        }
        PointF pointF = this.f6261try;
        pointF.x = f3 + this.f6258if;
        pointF.y = f4 + this.f6256for;
        this.f6257goto.setCurrentPoint(pointF);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int min = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), View.MeasureSpec.makeMeasureSpec(min, 1073741824));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        int paddingLeft = (i - getPaddingLeft()) - getPaddingRight();
        int paddingTop = (i2 - getPaddingTop()) - getPaddingBottom();
        float min = (Math.min(paddingLeft, paddingTop) * 0.5f) - this.f6259new;
        this.f6254do = min;
        if (min < 0.0f) {
            return;
        }
        this.f6258if = paddingLeft * 0.5f;
        this.f6256for = paddingTop * 0.5f;
        m3246for(this.f6253case, false);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                update(motionEvent);
                return true;
            } else if (actionMasked != 2) {
                return super.onTouchEvent(motionEvent);
            }
        }
        this.f6252break.m110do(motionEvent);
        return true;
    }

    public void setOnlyUpdateOnTouchEventUp(boolean z) {
        this.f6255else = z;
    }

    @Override // com.apk.bt0
    public void update(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z = motionEvent.getActionMasked() == 1;
        if (!this.f6255else || z) {
            us0 us0Var = this.f6260this;
            float f = x - this.f6258if;
            float f2 = y - this.f6256for;
            double sqrt = Math.sqrt((f2 * f2) + (f * f));
            float[] fArr = {0.0f, 0.0f, 1.0f};
            fArr[0] = ((float) ((Math.atan2(f2, -f) / 3.141592653589793d) * 180.0d)) + 180.0f;
            fArr[1] = Math.max(0.0f, Math.min(1.0f, (float) (sqrt / this.f6254do)));
            us0Var.m2733for(Color.HSVToColor(fArr), true, z);
        }
        m3247new(x, y);
    }
}
