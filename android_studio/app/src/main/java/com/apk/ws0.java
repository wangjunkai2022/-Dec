package com.apk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.ViewCompat;

/* compiled from: ColorSliderView.java */
/* loaded from: classes7.dex */
public abstract class ws0 extends View implements ts0, bt0 {

    /* renamed from: break  reason: not valid java name */
    public us0 f5389break;

    /* renamed from: case  reason: not valid java name */
    public Path f5390case;

    /* renamed from: catch  reason: not valid java name */
    public at0 f5391catch;

    /* renamed from: class  reason: not valid java name */
    public vs0 f5392class;

    /* renamed from: const  reason: not valid java name */
    public ts0 f5393const;

    /* renamed from: do  reason: not valid java name */
    public int f5394do;

    /* renamed from: else  reason: not valid java name */
    public float f5395else;

    /* renamed from: for  reason: not valid java name */
    public Paint f5396for;

    /* renamed from: goto  reason: not valid java name */
    public float f5397goto;

    /* renamed from: if  reason: not valid java name */
    public Paint f5398if;

    /* renamed from: new  reason: not valid java name */
    public Paint f5399new;

    /* renamed from: this  reason: not valid java name */
    public boolean f5400this;

    /* renamed from: try  reason: not valid java name */
    public Path f5401try;

    /* compiled from: ColorSliderView.java */
    /* renamed from: com.apk.ws0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements vs0 {
        public Cdo() {
        }

        @Override // com.apk.vs0
        /* renamed from: do */
        public void mo2836do(int i, boolean z, boolean z2) {
            ws0.this.m2943case(i, z, z2);
        }
    }

    public ws0(Context context) {
        super(context, null, 0);
        this.f5394do = -1;
        this.f5390case = new Path();
        this.f5397goto = 1.0f;
        this.f5389break = new us0();
        this.f5391catch = new at0(this);
        this.f5392class = new Cdo();
        this.f5398if = new Paint(1);
        Paint paint = new Paint(1);
        this.f5396for = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f5396for.setStrokeWidth(0.0f);
        this.f5396for.setColor(ViewCompat.MEASURED_STATE_MASK);
        Paint paint2 = new Paint(1);
        this.f5399new = paint2;
        paint2.setColor(ViewCompat.MEASURED_STATE_MASK);
        Path path = new Path();
        this.f5401try = path;
        path.setFillType(Path.FillType.WINDING);
    }

    /* renamed from: case  reason: not valid java name */
    public void m2943case(int i, boolean z, boolean z2) {
        this.f5394do = i;
        mo2358new(this.f5398if);
        if (!z) {
            this.f5397goto = mo2359try(i);
        } else {
            i = mo2357for();
        }
        if (!this.f5400this) {
            this.f5389break.m2733for(i, z, z2);
        } else if (z2) {
            this.f5389break.m2733for(i, z, true);
        }
        invalidate();
    }

    @Override // com.apk.ts0
    /* renamed from: do */
    public void mo2618do(vs0 vs0Var) {
        this.f5389break.mo2618do(vs0Var);
    }

    /* renamed from: for */
    public abstract int mo2357for();

    @Override // com.apk.ts0
    public int getColor() {
        return this.f5389break.f4966if;
    }

    @Override // com.apk.ts0
    /* renamed from: if */
    public void mo2619if(vs0 vs0Var) {
        this.f5389break.mo2619if(vs0Var);
    }

    /* renamed from: new */
    public abstract void mo2358new(Paint paint);

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float width = getWidth();
        float height = getHeight();
        float f = this.f5395else;
        canvas.drawRect(f, f, width - f, height, this.f5398if);
        float f2 = this.f5395else;
        canvas.drawRect(f2, f2, width - f2, height, this.f5396for);
        this.f5401try.offset((width - (this.f5395else * 2.0f)) * this.f5397goto, 0.0f, this.f5390case);
        canvas.drawPath(this.f5390case, this.f5399new);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        mo2358new(this.f5398if);
        this.f5401try.reset();
        this.f5395else = i2 * 0.25f;
        this.f5401try.moveTo(0.0f, 0.0f);
        this.f5401try.lineTo(this.f5395else * 2.0f, 0.0f);
        Path path = this.f5401try;
        float f = this.f5395else;
        path.lineTo(f, f);
        this.f5401try.close();
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
        this.f5391catch.m110do(motionEvent);
        return true;
    }

    public void setOnlyUpdateOnTouchEventUp(boolean z) {
        this.f5400this = z;
    }

    /* renamed from: try */
    public abstract float mo2359try(int i);

    @Override // com.apk.bt0
    public void update(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float f = this.f5395else;
        float width = getWidth() - this.f5395else;
        if (x < f) {
            x = f;
        }
        if (x > width) {
            x = width;
        }
        this.f5397goto = (x - f) / (width - f);
        invalidate();
        boolean z = motionEvent.getActionMasked() == 1;
        if (!this.f5400this || z) {
            this.f5389break.m2733for(mo2357for(), true, z);
        }
    }
}
