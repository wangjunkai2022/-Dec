package com.apk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.apk.wp0;
import com.google.android.material.badge.BadgeDrawable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: QBadgeView.java */
/* loaded from: classes7.dex */
public class xp0 extends View implements vp0 {

    /* renamed from: abstract  reason: not valid java name */
    public Paint f5720abstract;

    /* renamed from: break  reason: not valid java name */
    public boolean f5721break;

    /* renamed from: case  reason: not valid java name */
    public float f5722case;

    /* renamed from: catch  reason: not valid java name */
    public int f5723catch;

    /* renamed from: class  reason: not valid java name */
    public float f5724class;

    /* renamed from: const  reason: not valid java name */
    public float f5725const;

    /* renamed from: continue  reason: not valid java name */
    public Paint f5726continue;

    /* renamed from: default  reason: not valid java name */
    public List<PointF> f5727default;

    /* renamed from: do  reason: not valid java name */
    public int f5728do;

    /* renamed from: else  reason: not valid java name */
    public int f5729else;

    /* renamed from: extends  reason: not valid java name */
    public View f5730extends;

    /* renamed from: final  reason: not valid java name */
    public float f5731final;

    /* renamed from: finally  reason: not valid java name */
    public int f5732finally;

    /* renamed from: for  reason: not valid java name */
    public Bitmap f5733for;

    /* renamed from: goto  reason: not valid java name */
    public String f5734goto;

    /* renamed from: if  reason: not valid java name */
    public int f5735if;

    /* renamed from: import  reason: not valid java name */
    public RectF f5736import;

    /* renamed from: native  reason: not valid java name */
    public Path f5737native;

    /* renamed from: new  reason: not valid java name */
    public boolean f5738new;

    /* renamed from: package  reason: not valid java name */
    public int f5739package;

    /* renamed from: private  reason: not valid java name */
    public TextPaint f5740private;

    /* renamed from: public  reason: not valid java name */
    public Paint.FontMetrics f5741public;

    /* renamed from: return  reason: not valid java name */
    public PointF f5742return;

    /* renamed from: static  reason: not valid java name */
    public PointF f5743static;

    /* renamed from: strictfp  reason: not valid java name */
    public wp0 f5744strictfp;

    /* renamed from: super  reason: not valid java name */
    public int f5745super;

    /* renamed from: switch  reason: not valid java name */
    public PointF f5746switch;

    /* renamed from: this  reason: not valid java name */
    public boolean f5747this;

    /* renamed from: throw  reason: not valid java name */
    public boolean f5748throw;

    /* renamed from: throws  reason: not valid java name */
    public PointF f5749throws;

    /* renamed from: try  reason: not valid java name */
    public float f5750try;

    /* renamed from: volatile  reason: not valid java name */
    public ViewGroup f5751volatile;

    /* renamed from: while  reason: not valid java name */
    public RectF f5752while;

    /* compiled from: QBadgeView.java */
    /* renamed from: com.apk.xp0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo extends ViewGroup {
        public Cdo(xp0 xp0Var, Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
            if (getParent() instanceof RelativeLayout) {
                return;
            }
            super.dispatchRestoreInstanceState(sparseArray);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            for (int i5 = 0; i5 < getChildCount(); i5++) {
                View childAt = getChildAt(i5);
                childAt.layout(0, 0, childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
            }
        }

        @Override // android.view.View
        public void onMeasure(int i, int i2) {
            View view = null;
            View view2 = null;
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt instanceof xp0) {
                    view2 = childAt;
                } else {
                    view = childAt;
                }
            }
            if (view == null) {
                super.onMeasure(i, i2);
                return;
            }
            view.measure(i, i2);
            if (view2 != null) {
                view2.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824));
            }
            setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    public xp0(Context context) {
        super(context, null, 0);
        setLayerType(1, null);
        this.f5752while = new RectF();
        this.f5736import = new RectF();
        this.f5737native = new Path();
        this.f5742return = new PointF();
        this.f5743static = new PointF();
        this.f5746switch = new PointF();
        this.f5749throws = new PointF();
        this.f5727default = new ArrayList();
        TextPaint textPaint = new TextPaint();
        this.f5740private = textPaint;
        textPaint.setAntiAlias(true);
        this.f5740private.setSubpixelText(true);
        this.f5740private.setFakeBoldText(true);
        this.f5740private.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        Paint paint = new Paint();
        this.f5720abstract = paint;
        paint.setAntiAlias(true);
        this.f5720abstract.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f5726continue = paint2;
        paint2.setAntiAlias(true);
        this.f5726continue.setStyle(Paint.Style.STROKE);
        this.f5728do = -1552832;
        this.f5735if = -1;
        this.f5750try = sb0.m2430switch(getContext(), 11.0f);
        this.f5722case = sb0.m2430switch(getContext(), 4.0f);
        this.f5729else = 0;
        this.f5723catch = BadgeDrawable.TOP_END;
        this.f5724class = sb0.m2430switch(getContext(), 1.0f);
        this.f5725const = sb0.m2430switch(getContext(), 1.0f);
        this.f5731final = sb0.m2430switch(getContext(), 90.0f);
        this.f5721break = true;
        this.f5738new = false;
        setTranslationZ(1000.0f);
    }

    private float getBadgeCircleRadius() {
        float width;
        float f;
        if (this.f5734goto.isEmpty()) {
            return this.f5722case;
        }
        if (this.f5734goto.length() == 1) {
            if (this.f5752while.height() > this.f5752while.width()) {
                width = this.f5752while.height() / 2.0f;
                f = this.f5722case;
            } else {
                width = this.f5752while.width() / 2.0f;
                f = this.f5722case;
            }
            return (f * 0.5f) + width;
        }
        return this.f5736import.height() / 2.0f;
    }

    /* renamed from: break  reason: not valid java name */
    public final void m3029break(boolean z) {
        int m2430switch = sb0.m2430switch(getContext(), 1.0f);
        int m2430switch2 = sb0.m2430switch(getContext(), 1.5f);
        int i = this.f5745super;
        if (i == 1) {
            m2430switch = sb0.m2430switch(getContext(), 1.0f);
            m2430switch2 = sb0.m2430switch(getContext(), -1.5f);
        } else if (i == 2) {
            m2430switch = sb0.m2430switch(getContext(), -1.0f);
            m2430switch2 = sb0.m2430switch(getContext(), -1.5f);
        } else if (i == 3) {
            m2430switch = sb0.m2430switch(getContext(), -1.0f);
            m2430switch2 = sb0.m2430switch(getContext(), 1.5f);
        } else if (i == 4) {
            m2430switch = sb0.m2430switch(getContext(), 1.0f);
            m2430switch2 = sb0.m2430switch(getContext(), 1.5f);
        }
        this.f5720abstract.setShadowLayer(z ? sb0.m2430switch(getContext(), 2.0f) : 0.0f, m2430switch, m2430switch2, 855638016);
    }

    /* renamed from: case  reason: not valid java name */
    public void m3030case() {
        PointF pointF = this.f5743static;
        pointF.x = -1000.0f;
        pointF.y = -1000.0f;
        this.f5745super = 4;
        m3032else(false);
        getParent().requestDisallowInterceptTouchEvent(false);
        invalidate();
    }

    /* renamed from: do  reason: not valid java name */
    public vp0 m3031do(View view) {
        if (view != null) {
            if (getParent() != null) {
                ((ViewGroup) getParent()).removeView(this);
            }
            ViewParent parent = view.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                this.f5730extends = view;
                if (parent instanceof Cdo) {
                    ((Cdo) parent).addView(this);
                } else {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    int indexOfChild = viewGroup.indexOfChild(view);
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    viewGroup.removeView(view);
                    Cdo cdo = new Cdo(this, getContext());
                    if (viewGroup instanceof RelativeLayout) {
                        cdo.setId(view.getId());
                    }
                    viewGroup.addView(cdo, indexOfChild, layoutParams);
                    cdo.addView(view);
                    cdo.addView(this);
                }
                return this;
            }
            throw new IllegalStateException("targetView must have a parent");
        }
        throw new IllegalStateException("targetView can not be null");
    }

    /* renamed from: else  reason: not valid java name */
    public void m3032else(boolean z) {
        if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
        if (z) {
            this.f5751volatile.addView(this, new FrameLayout.LayoutParams(-1, -1));
        } else {
            m3031do(this.f5730extends);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public final void m3033for(Canvas canvas, PointF pointF, float f) {
        if (pointF.x == -1000.0f && pointF.y == -1000.0f) {
            return;
        }
        if (!this.f5734goto.isEmpty() && this.f5734goto.length() != 1) {
            this.f5736import.left = pointF.x - ((this.f5752while.width() / 2.0f) + this.f5722case);
            this.f5736import.top = pointF.y - ((this.f5722case * 0.5f) + (this.f5752while.height() / 2.0f));
            this.f5736import.right = (this.f5752while.width() / 2.0f) + this.f5722case + pointF.x;
            this.f5736import.bottom = (this.f5722case * 0.5f) + (this.f5752while.height() / 2.0f) + pointF.y;
            float height = this.f5736import.height() / 2.0f;
            canvas.drawRoundRect(this.f5736import, height, height, this.f5720abstract);
        } else {
            RectF rectF = this.f5736import;
            float f2 = pointF.x;
            float f3 = (int) f;
            rectF.left = f2 - f3;
            float f4 = pointF.y;
            rectF.top = f4 - f3;
            rectF.right = f2 + f3;
            rectF.bottom = f3 + f4;
            canvas.drawCircle(f2, f4, f, this.f5720abstract);
        }
        if (this.f5734goto.isEmpty()) {
            return;
        }
        String str = this.f5734goto;
        float f5 = pointF.x;
        RectF rectF2 = this.f5736import;
        float f6 = rectF2.bottom + rectF2.top;
        Paint.FontMetrics fontMetrics = this.f5741public;
        canvas.drawText(str, f5, ((f6 - fontMetrics.bottom) - fontMetrics.top) / 2.0f, this.f5740private);
    }

    public Drawable getBadgeBackground() {
        return null;
    }

    public int getBadgeBackgroundColor() {
        return this.f5728do;
    }

    public int getBadgeGravity() {
        return this.f5723catch;
    }

    public int getBadgeNumber() {
        return this.f5729else;
    }

    public String getBadgeText() {
        return this.f5734goto;
    }

    public int getBadgeTextColor() {
        return this.f5735if;
    }

    public PointF getDragCenter() {
        return null;
    }

    public View getTargetView() {
        return this.f5730extends;
    }

    /* renamed from: goto  reason: not valid java name */
    public vp0 m3034goto(int i) {
        this.f5729else = i;
        if (i < 0) {
            this.f5734goto = "";
        } else if (i > 99) {
            this.f5734goto = "99+";
        } else if (i > 0 && i <= 99) {
            this.f5734goto = String.valueOf(i);
        } else if (this.f5729else == 0) {
            this.f5734goto = null;
        }
        RectF rectF = this.f5752while;
        rectF.left = 0.0f;
        rectF.top = 0.0f;
        if (TextUtils.isEmpty(this.f5734goto)) {
            RectF rectF2 = this.f5752while;
            rectF2.right = 0.0f;
            rectF2.bottom = 0.0f;
        } else {
            this.f5740private.setTextSize(this.f5750try);
            this.f5752while.right = this.f5740private.measureText(this.f5734goto);
            Paint.FontMetrics fontMetrics = this.f5740private.getFontMetrics();
            this.f5741public = fontMetrics;
            this.f5752while.bottom = fontMetrics.descent - fontMetrics.ascent;
        }
        m3035if();
        invalidate();
        return this;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3035if() {
        if (this.f5734goto != null && this.f5738new) {
            Bitmap bitmap = this.f5733for;
            if (bitmap != null && !bitmap.isRecycled()) {
                this.f5733for.recycle();
            }
            float badgeCircleRadius = getBadgeCircleRadius();
            if (!this.f5734goto.isEmpty() && this.f5734goto.length() != 1) {
                this.f5733for = Bitmap.createBitmap((int) ((this.f5722case * 2.0f) + this.f5752while.width()), (int) (this.f5752while.height() + this.f5722case), Bitmap.Config.ARGB_4444);
                Canvas canvas = new Canvas(this.f5733for);
                canvas.drawRoundRect(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), canvas.getHeight() / 2.0f, canvas.getHeight() / 2.0f, this.f5720abstract);
                return;
            }
            int i = ((int) badgeCircleRadius) * 2;
            this.f5733for = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_4444);
            Canvas canvas2 = new Canvas(this.f5733for);
            canvas2.drawCircle(canvas2.getWidth() / 2.0f, canvas2.getHeight() / 2.0f, canvas2.getWidth() / 2.0f, this.f5720abstract);
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3036new(View view) {
        if (view.getParent() != null && (view.getParent() instanceof View)) {
            m3036new((View) view.getParent());
        } else if (view instanceof ViewGroup) {
            this.f5751volatile = (ViewGroup) view;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f5751volatile == null) {
            View view = this.f5730extends;
            ViewGroup viewGroup = (ViewGroup) view.getRootView();
            this.f5751volatile = viewGroup;
            if (viewGroup == null) {
                m3036new(view);
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        wp0 wp0Var = this.f5744strictfp;
        if (wp0Var != null && wp0Var.isRunning()) {
            wp0 wp0Var2 = this.f5744strictfp;
            for (int i = 0; i < wp0Var2.f5364do.length; i++) {
                int i2 = 0;
                while (true) {
                    wp0.Cfor[][] cforArr = wp0Var2.f5364do;
                    if (i2 < cforArr[i].length) {
                        wp0.Cfor cfor = cforArr[i][i2];
                        float parseFloat = Float.parseFloat(wp0Var2.getAnimatedValue().toString());
                        cfor.f5369else.setColor(cfor.f5373try);
                        cfor.f5371if = ((cfor.f5368do.nextFloat() - 0.5f) * cfor.f5368do.nextInt(cfor.f5367case) * 0.1f) + cfor.f5371if;
                        float nextFloat = ((cfor.f5368do.nextFloat() - 0.5f) * cfor.f5368do.nextInt(cfor.f5367case) * 0.1f) + cfor.f5370for;
                        cfor.f5370for = nextFloat;
                        float f = cfor.f5371if;
                        float f2 = cfor.f5372new;
                        canvas.drawCircle(f, nextFloat, f2 - (parseFloat * f2), cfor.f5369else);
                        i2++;
                    }
                }
            }
        } else if (this.f5734goto != null) {
            m3029break(this.f5721break);
            this.f5720abstract.setColor(this.f5728do);
            this.f5726continue.setColor(0);
            this.f5726continue.setStrokeWidth(0.0f);
            this.f5740private.setColor(this.f5735if);
            this.f5740private.setTextAlign(Paint.Align.CENTER);
            float badgeCircleRadius = getBadgeCircleRadius();
            PointF pointF = this.f5746switch;
            PointF pointF2 = this.f5743static;
            Math.sqrt(Math.pow(pointF.y - pointF2.y, 2.0d) + Math.pow(pointF.x - pointF2.x, 2.0d));
            float height = this.f5752while.height() > this.f5752while.width() ? this.f5752while.height() : this.f5752while.width();
            switch (this.f5723catch) {
                case 17:
                    PointF pointF3 = this.f5742return;
                    pointF3.x = this.f5732finally / 2.0f;
                    pointF3.y = this.f5739package / 2.0f;
                    break;
                case 49:
                    PointF pointF4 = this.f5742return;
                    pointF4.x = this.f5732finally / 2.0f;
                    pointF4.y = (this.f5752while.height() / 2.0f) + this.f5725const + this.f5722case;
                    break;
                case 81:
                    PointF pointF5 = this.f5742return;
                    pointF5.x = this.f5732finally / 2.0f;
                    pointF5.y = this.f5739package - ((this.f5752while.height() / 2.0f) + (this.f5725const + this.f5722case));
                    break;
                case 8388627:
                    PointF pointF6 = this.f5742return;
                    pointF6.x = (height / 2.0f) + this.f5724class + this.f5722case;
                    pointF6.y = this.f5739package / 2.0f;
                    break;
                case 8388629:
                    PointF pointF7 = this.f5742return;
                    pointF7.x = this.f5732finally - ((height / 2.0f) + (this.f5724class + this.f5722case));
                    pointF7.y = this.f5739package / 2.0f;
                    break;
                case BadgeDrawable.TOP_START /* 8388659 */:
                    PointF pointF8 = this.f5742return;
                    float f3 = this.f5724class;
                    float f4 = this.f5722case;
                    pointF8.x = (height / 2.0f) + f3 + f4;
                    pointF8.y = (this.f5752while.height() / 2.0f) + this.f5725const + f4;
                    break;
                case BadgeDrawable.TOP_END /* 8388661 */:
                    PointF pointF9 = this.f5742return;
                    float f5 = this.f5724class;
                    float f6 = this.f5722case;
                    pointF9.x = this.f5732finally - ((height / 2.0f) + (f5 + f6));
                    pointF9.y = (this.f5752while.height() / 2.0f) + this.f5725const + f6;
                    break;
                case BadgeDrawable.BOTTOM_START /* 8388691 */:
                    PointF pointF10 = this.f5742return;
                    float f7 = this.f5724class;
                    float f8 = this.f5722case;
                    pointF10.x = (height / 2.0f) + f7 + f8;
                    pointF10.y = this.f5739package - ((this.f5752while.height() / 2.0f) + (this.f5725const + f8));
                    break;
                case BadgeDrawable.BOTTOM_END /* 8388693 */:
                    PointF pointF11 = this.f5742return;
                    float f9 = this.f5724class;
                    float f10 = this.f5722case;
                    pointF11.x = this.f5732finally - ((height / 2.0f) + (f9 + f10));
                    pointF11.y = this.f5739package - ((this.f5752while.height() / 2.0f) + (this.f5725const + f10));
                    break;
            }
            m3038try();
            m3033for(canvas, this.f5742return, badgeCircleRadius);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f5732finally = i;
        this.f5739package = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0014, code lost:
        if (r0 != 6) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bc  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            r10 = this;
            int r0 = r11.getActionMasked()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lb2
            if (r0 == r2) goto L31
            r3 = 2
            if (r0 == r3) goto L18
            r3 = 3
            if (r0 == r3) goto L31
            r3 = 5
            if (r0 == r3) goto Lb2
            r3 = 6
            if (r0 == r3) goto L31
            goto Lb8
        L18:
            boolean r0 = r10.f5747this
            if (r0 == 0) goto Lb8
            android.graphics.PointF r0 = r10.f5743static
            float r3 = r11.getRawX()
            r0.x = r3
            android.graphics.PointF r0 = r10.f5743static
            float r3 = r11.getRawY()
            r0.y = r3
            r10.invalidate()
            goto Lb8
        L31:
            int r0 = r11.getActionIndex()
            int r0 = r11.getPointerId(r0)
            if (r0 != 0) goto Lb8
            boolean r0 = r10.f5747this
            if (r0 == 0) goto Lb8
            r10.f5747this = r1
            boolean r0 = r10.f5748throw
            if (r0 == 0) goto Lae
            android.graphics.PointF r0 = r10.f5743static
            java.lang.String r3 = r10.f5734goto
            if (r3 != 0) goto L4c
            goto Lb8
        L4c:
            com.apk.wp0 r3 = r10.f5744strictfp
            if (r3 == 0) goto L56
            boolean r3 = r3.isRunning()
            if (r3 != 0) goto Lb8
        L56:
            r10.m3032else(r2)
            com.apk.wp0 r3 = new com.apk.wp0
            android.graphics.RectF r4 = r10.f5736import
            float r4 = r4.width()
            int r4 = (int) r4
            android.content.Context r5 = r10.getContext()
            r6 = 1077936128(0x40400000, float:3.0)
            int r5 = com.apk.sb0.m2430switch(r5, r6)
            int r5 = r5 + r4
            android.graphics.RectF r4 = r10.f5736import
            float r4 = r4.height()
            int r4 = (int) r4
            android.content.Context r7 = r10.getContext()
            int r6 = com.apk.sb0.m2430switch(r7, r6)
            int r6 = r6 + r4
            android.graphics.Bitmap$Config r4 = android.graphics.Bitmap.Config.ARGB_8888
            android.graphics.Bitmap r4 = android.graphics.Bitmap.createBitmap(r5, r6, r4)
            android.graphics.Canvas r5 = new android.graphics.Canvas
            r5.<init>(r4)
            android.graphics.PointF r6 = new android.graphics.PointF
            int r7 = r5.getWidth()
            float r7 = (float) r7
            r8 = 1073741824(0x40000000, float:2.0)
            float r7 = r7 / r8
            int r9 = r5.getHeight()
            float r9 = (float) r9
            float r9 = r9 / r8
            r6.<init>(r7, r9)
            float r7 = r10.getBadgeCircleRadius()
            r10.m3033for(r5, r6, r7)
            r3.<init>(r4, r0, r10)
            r10.f5744strictfp = r3
            r3.start()
            r10.m3034goto(r1)
            goto Lb8
        Lae:
            r10.m3030case()
            goto Lb8
        Lb2:
            r11.getX()
            r11.getY()
        Lb8:
            boolean r0 = r10.f5747this
            if (r0 != 0) goto Lc2
            boolean r11 = super.onTouchEvent(r11)
            if (r11 == 0) goto Lc3
        Lc2:
            r1 = 1
        Lc3:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.xp0.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: this  reason: not valid java name */
    public vp0 m3037this(float f, float f2, boolean z) {
        if (z) {
            f = sb0.m2430switch(getContext(), f);
        }
        this.f5724class = f;
        if (z) {
            f2 = sb0.m2430switch(getContext(), f2);
        }
        this.f5725const = f2;
        invalidate();
        return this;
    }

    /* renamed from: try  reason: not valid java name */
    public final void m3038try() {
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        PointF pointF = this.f5746switch;
        PointF pointF2 = this.f5742return;
        pointF.x = pointF2.x + iArr[0];
        pointF.y = pointF2.y + iArr[1];
    }
}
