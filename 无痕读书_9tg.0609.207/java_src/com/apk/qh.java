package com.apk;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Xfermode;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
/* compiled from: ClipView.java */
/* loaded from: classes8.dex */
public class qh extends View {

    /* renamed from: case  reason: not valid java name */
    public int f3851case;

    /* renamed from: do  reason: not valid java name */
    public Paint f3852do;

    /* renamed from: else  reason: not valid java name */
    public Cdo f3853else;

    /* renamed from: for  reason: not valid java name */
    public float f3854for;

    /* renamed from: goto  reason: not valid java name */
    public Xfermode f3855goto;

    /* renamed from: if  reason: not valid java name */
    public Paint f3856if;

    /* renamed from: new  reason: not valid java name */
    public int f3857new;

    /* renamed from: try  reason: not valid java name */
    public int f3858try;

    /* compiled from: ClipView.java */
    /* renamed from: com.apk.qh$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Cdo {
        CIRCLE,
        RECTANGLE
    }

    public qh(Context context) {
        super(context, null, 0);
        this.f3852do = new Paint();
        this.f3856if = new Paint();
        this.f3853else = Cdo.CIRCLE;
        this.f3852do.setAntiAlias(true);
        this.f3856if.setStyle(Paint.Style.STROKE);
        this.f3856if.setColor(-1);
        this.f3856if.setStrokeWidth(this.f3857new);
        this.f3856if.setAntiAlias(true);
        this.f3855goto = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
    }

    public Rect getClipRect() {
        Rect rect = new Rect();
        rect.left = (getWidth() / 2) - this.f3858try;
        rect.right = (getWidth() / 2) + this.f3858try;
        rect.top = (getHeight() / 2) - this.f3858try;
        rect.bottom = (getHeight() / 2) + this.f3858try;
        return rect;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        canvas.drawColor(Color.parseColor("#a8000000"));
        this.f3852do.setXfermode(this.f3855goto);
        Cdo cdo = this.f3853else;
        if (cdo == Cdo.CIRCLE) {
            canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f3858try, this.f3852do);
            canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f3858try, this.f3856if);
        } else if (cdo == Cdo.RECTANGLE) {
            canvas.drawRect(this.f3854for, (getHeight() / 2) - (this.f3851case / 2), getWidth() - this.f3854for, (this.f3851case / 2) + (getHeight() / 2), this.f3852do);
            canvas.drawRect(this.f3854for, (getHeight() / 2) - (this.f3851case / 2), getWidth() - this.f3854for, (this.f3851case / 2) + (getHeight() / 2), this.f3856if);
        }
        canvas.restore();
    }

    public void setClipBorderWidth(int i) {
        this.f3857new = i;
        this.f3856if.setStrokeWidth(i);
        invalidate();
    }

    public void setClipType(Cdo cdo) {
        this.f3853else = cdo;
    }

    public void setmHorizontalPadding(float f) {
        this.f3854for = f;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i = ((int) (displayMetrics.widthPixels - (f * 2.0f))) / 2;
        this.f3858try = i;
        this.f3851case = i * 2;
    }
}
