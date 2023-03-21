package com.manhua.ui.widget;

import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GestureDetectorCompat;
import com.apk.w20;
import com.apk.x20;
import com.biquge.ebook.app.R$styleable;
@SuppressLint({"ClickableViewAccessibility"})
/* loaded from: classes8.dex */
public class ZoomRecyclerView extends PageRecyclerView {

    /* renamed from: break  reason: not valid java name */
    public float f10235break;

    /* renamed from: catch  reason: not valid java name */
    public float f10236catch;

    /* renamed from: class  reason: not valid java name */
    public float f10237class;

    /* renamed from: const  reason: not valid java name */
    public float f10238const;

    /* renamed from: default  reason: not valid java name */
    public float f10239default;

    /* renamed from: extends  reason: not valid java name */
    public float f10240extends;

    /* renamed from: final  reason: not valid java name */
    public float f10241final;

    /* renamed from: finally  reason: not valid java name */
    public float f10242finally;

    /* renamed from: goto  reason: not valid java name */
    public ScaleGestureDetector f10243goto;

    /* renamed from: import  reason: not valid java name */
    public boolean f10244import;

    /* renamed from: native  reason: not valid java name */
    public boolean f10245native;

    /* renamed from: package  reason: not valid java name */
    public int f10246package;

    /* renamed from: public  reason: not valid java name */
    public ValueAnimator f10247public;

    /* renamed from: return  reason: not valid java name */
    public float f10248return;

    /* renamed from: static  reason: not valid java name */
    public float f10249static;

    /* renamed from: super  reason: not valid java name */
    public int f10250super;

    /* renamed from: switch  reason: not valid java name */
    public float f10251switch;

    /* renamed from: this  reason: not valid java name */
    public GestureDetectorCompat f10252this;

    /* renamed from: throw  reason: not valid java name */
    public float f10253throw;

    /* renamed from: throws  reason: not valid java name */
    public float f10254throws;

    /* renamed from: while  reason: not valid java name */
    public float f10255while;

    /* renamed from: com.manhua.ui.widget.ZoomRecyclerView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends GestureDetector.SimpleOnGestureListener {
        public Cdo(w20 w20Var) {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            float f;
            ZoomRecyclerView zoomRecyclerView = ZoomRecyclerView.this;
            float f2 = zoomRecyclerView.f10241final;
            if (f2 == zoomRecyclerView.f10242finally) {
                zoomRecyclerView.f10248return = motionEvent.getX();
                ZoomRecyclerView.this.f10249static = motionEvent.getY();
                f = ZoomRecyclerView.this.f10239default;
            } else {
                zoomRecyclerView.f10248return = f2 == 1.0f ? motionEvent.getX() : (-zoomRecyclerView.f10237class) / (f2 - 1.0f);
                ZoomRecyclerView zoomRecyclerView2 = ZoomRecyclerView.this;
                float f3 = zoomRecyclerView2.f10241final;
                zoomRecyclerView2.f10249static = f3 == 1.0f ? motionEvent.getY() : (-zoomRecyclerView2.f10238const) / (f3 - 1.0f);
                f = ZoomRecyclerView.this.f10242finally;
            }
            ZoomRecyclerView.this.m3668case(f2, f);
            return super.onDoubleTap(motionEvent);
        }
    }

    /* renamed from: com.manhua.ui.widget.ZoomRecyclerView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ScaleGestureDetector.OnScaleGestureListener {
        public Cif(w20 w20Var) {
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            ZoomRecyclerView zoomRecyclerView = ZoomRecyclerView.this;
            float f = zoomRecyclerView.f10241final;
            zoomRecyclerView.f10241final = scaleGestureDetector.getScaleFactor() * f;
            ZoomRecyclerView zoomRecyclerView2 = ZoomRecyclerView.this;
            zoomRecyclerView2.f10241final = Math.max(zoomRecyclerView2.f10240extends, Math.min(zoomRecyclerView2.f10241final, zoomRecyclerView2.f10239default));
            ZoomRecyclerView zoomRecyclerView3 = ZoomRecyclerView.this;
            float f2 = zoomRecyclerView3.f10235break;
            float f3 = zoomRecyclerView3.f10241final;
            zoomRecyclerView3.f10251switch = f2 - (f2 * f3);
            float f4 = zoomRecyclerView3.f10236catch;
            zoomRecyclerView3.f10254throws = f4 - (f3 * f4);
            zoomRecyclerView3.f10248return = scaleGestureDetector.getFocusX();
            ZoomRecyclerView.this.f10249static = scaleGestureDetector.getFocusY();
            ZoomRecyclerView zoomRecyclerView4 = ZoomRecyclerView.this;
            float f5 = zoomRecyclerView4.f10248return;
            float f6 = f - zoomRecyclerView4.f10241final;
            float f7 = f5 * f6;
            float f8 = f6 * zoomRecyclerView4.f10249static;
            zoomRecyclerView4.f10237class += f7;
            zoomRecyclerView4.f10238const += f8;
            zoomRecyclerView4.f10244import = true;
            zoomRecyclerView4.invalidate();
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
            return true;
        }

        @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
        public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
            ZoomRecyclerView zoomRecyclerView = ZoomRecyclerView.this;
            float f = zoomRecyclerView.f10241final;
            if (f <= zoomRecyclerView.f10242finally) {
                float f2 = f - 1.0f;
                float f3 = (-zoomRecyclerView.f10237class) / f2;
                zoomRecyclerView.f10248return = f3;
                zoomRecyclerView.f10249static = (-zoomRecyclerView.f10238const) / f2;
                zoomRecyclerView.f10248return = Float.isNaN(f3) ? 0.0f : ZoomRecyclerView.this.f10248return;
                ZoomRecyclerView zoomRecyclerView2 = ZoomRecyclerView.this;
                zoomRecyclerView2.f10249static = Float.isNaN(zoomRecyclerView2.f10249static) ? 0.0f : ZoomRecyclerView.this.f10249static;
                ZoomRecyclerView zoomRecyclerView3 = ZoomRecyclerView.this;
                zoomRecyclerView3.m3668case(zoomRecyclerView3.f10241final, zoomRecyclerView3.f10242finally);
            }
            ZoomRecyclerView.this.f10244import = false;
        }
    }

    public ZoomRecyclerView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10250super = -1;
        this.f10244import = false;
        this.f10245native = false;
        this.f10243goto = new ScaleGestureDetector(getContext(), new Cif(null));
        this.f10252this = new GestureDetectorCompat(getContext(), new Cdo(null));
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.ZoomRecyclerView, 0, 0);
            this.f10240extends = obtainStyledAttributes.getFloat(2, 0.5f);
            this.f10239default = obtainStyledAttributes.getFloat(1, 2.0f);
            float f = obtainStyledAttributes.getFloat(0, 1.0f);
            this.f10242finally = f;
            this.f10241final = f;
            this.f10246package = obtainStyledAttributes.getInteger(3, 300);
            obtainStyledAttributes.recycle();
            return;
        }
        this.f10239default = 2.0f;
        this.f10240extends = 0.5f;
        this.f10242finally = 1.0f;
        this.f10241final = 1.0f;
        this.f10246package = 300;
    }

    /* renamed from: case  reason: not valid java name */
    public final void m3668case(float f, float f2) {
        if (this.f10247public == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f10247public = valueAnimator;
            valueAnimator.setInterpolator(new DecelerateInterpolator());
            this.f10247public.addUpdateListener(new w20(this));
            this.f10247public.addListener(new x20(this));
        }
        if (this.f10247public.isRunning()) {
            return;
        }
        float f3 = this.f10235break;
        this.f10251switch = f3 - (f3 * f2);
        float f4 = this.f10236catch;
        this.f10254throws = f4 - (f4 * f2);
        float f5 = this.f10237class;
        float f6 = this.f10238const;
        float f7 = f2 - f;
        float[] m3670try = m3670try(f5 - (this.f10248return * f7), f6 - (f7 * this.f10249static));
        float f8 = m3670try[0];
        float f9 = m3670try[1];
        this.f10247public.setValues(PropertyValuesHolder.ofFloat("scale", f, f2), PropertyValuesHolder.ofFloat("tranX", f5, f8), PropertyValuesHolder.ofFloat("tranY", f6, f9));
        this.f10247public.setDuration(this.f10246package);
        this.f10247public.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    @SuppressLint({"WrongConstant"})
    public void dispatchDraw(@NonNull Canvas canvas) {
        try {
            canvas.save();
            canvas.translate(this.f10237class, this.f10238const);
            canvas.scale(this.f10241final, this.f10241final);
            super.dispatchDraw(canvas);
            canvas.restore();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3669new() {
        float[] m3670try = m3670try(this.f10237class, this.f10238const);
        this.f10237class = m3670try[0];
        this.f10238const = m3670try[1];
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int i, int i2) {
        this.f10235break = View.MeasureSpec.getSize(i);
        this.f10236catch = View.MeasureSpec.getSize(i2);
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
    }

    @Override // com.manhua.ui.widget.PageRecyclerView, androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!this.f10245native) {
            return super.onTouchEvent(motionEvent);
        }
        boolean z = this.f10252this.onTouchEvent(motionEvent) || this.f10243goto.onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            int actionIndex = motionEvent.getActionIndex();
            float x = motionEvent.getX(actionIndex);
            float y = motionEvent.getY(actionIndex);
            this.f10253throw = x;
            this.f10255while = y;
            this.f10250super = motionEvent.getPointerId(0);
        } else if (actionMasked == 6) {
            int actionIndex2 = motionEvent.getActionIndex();
            if (motionEvent.getPointerId(actionIndex2) == this.f10250super) {
                int i = actionIndex2 == 0 ? 1 : 0;
                this.f10253throw = motionEvent.getX(i);
                this.f10255while = motionEvent.getY(i);
                this.f10250super = motionEvent.getPointerId(i);
            }
        } else if (actionMasked == 2) {
            try {
                int findPointerIndex = motionEvent.findPointerIndex(this.f10250super);
                float x2 = motionEvent.getX(findPointerIndex);
                float y2 = motionEvent.getY(findPointerIndex);
                if (!this.f10244import && this.f10241final > 1.0f) {
                    float f = this.f10237class + (x2 - this.f10253throw);
                    float f2 = this.f10238const;
                    this.f10237class = f;
                    this.f10238const = f2 + (y2 - this.f10255while);
                    m3669new();
                }
                invalidate();
                this.f10253throw = x2;
                this.f10255while = y2;
            } catch (Exception unused) {
                float x3 = motionEvent.getX();
                float y3 = motionEvent.getY();
                if (!this.f10244import && this.f10241final > 1.0f) {
                    float f3 = this.f10253throw;
                    if (f3 != -1.0f) {
                        float f4 = this.f10237class + (x3 - f3);
                        float f5 = this.f10238const;
                        this.f10237class = f4;
                        this.f10238const = f5 + (y3 - this.f10255while);
                        m3669new();
                    }
                }
                invalidate();
                this.f10253throw = x3;
                this.f10255while = y3;
            }
        } else if (actionMasked == 3) {
            this.f10250super = -1;
            this.f10253throw = -1.0f;
            this.f10255while = -1.0f;
        }
        return super.onTouchEvent(motionEvent) || z;
    }

    public void setEnableScale(boolean z) {
        if (this.f10245native == z) {
            return;
        }
        this.f10245native = z;
        if (z) {
            return;
        }
        float f = this.f10241final;
        if (f != 1.0f) {
            m3668case(f, 1.0f);
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final float[] m3670try(float f, float f2) {
        if (this.f10241final <= 1.0f) {
            return new float[]{f, f2};
        }
        if (f > 0.0f) {
            f = 0.0f;
        } else {
            float f3 = this.f10251switch;
            if (f < f3) {
                f = f3;
            }
        }
        if (f2 > 0.0f) {
            f2 = 0.0f;
        } else {
            float f4 = this.f10254throws;
            if (f2 < f4) {
                f2 = f4;
            }
        }
        return new float[]{f, f2};
    }
}
