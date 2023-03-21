package com.apk;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
import com.lxj.xpopup.core.ImageViewerPopupView;

/* compiled from: PhotoViewAttacher.java */
/* loaded from: classes8.dex */
public class kw implements View.OnTouchListener, View.OnLayoutChangeListener {

    /* renamed from: abstract  reason: not valid java name */
    public boolean f2674abstract;

    /* renamed from: break  reason: not valid java name */
    public aw f2675break;

    /* renamed from: continue  reason: not valid java name */
    public boolean f2680continue;

    /* renamed from: default  reason: not valid java name */
    public Ccase f2681default;

    /* renamed from: goto  reason: not valid java name */
    public ImageView f2688goto;

    /* renamed from: implements  reason: not valid java name */
    public float f2690implements;

    /* renamed from: import  reason: not valid java name */
    public dw f2691import;

    /* renamed from: instanceof  reason: not valid java name */
    public float f2692instanceof;

    /* renamed from: native  reason: not valid java name */
    public iw f2694native;

    /* renamed from: package  reason: not valid java name */
    public float f2696package;

    /* renamed from: private  reason: not valid java name */
    public boolean f2697private;

    /* renamed from: public  reason: not valid java name */
    public View.OnClickListener f2699public;

    /* renamed from: return  reason: not valid java name */
    public View.OnLongClickListener f2700return;

    /* renamed from: static  reason: not valid java name */
    public fw f2701static;

    /* renamed from: strictfp  reason: not valid java name */
    public boolean f2702strictfp;

    /* renamed from: switch  reason: not valid java name */
    public gw f2704switch;

    /* renamed from: this  reason: not valid java name */
    public GestureDetector f2705this;

    /* renamed from: throw  reason: not valid java name */
    public cw f2706throw;

    /* renamed from: throws  reason: not valid java name */
    public hw f2707throws;

    /* renamed from: while  reason: not valid java name */
    public ew f2711while;

    /* renamed from: do  reason: not valid java name */
    public Interpolator f2682do = new AccelerateDecelerateInterpolator();

    /* renamed from: if  reason: not valid java name */
    public int f2689if = 200;

    /* renamed from: for  reason: not valid java name */
    public float f2687for = 1.0f;

    /* renamed from: new  reason: not valid java name */
    public float f2695new = 2.5f;

    /* renamed from: try  reason: not valid java name */
    public float f2709try = 4.0f;

    /* renamed from: case  reason: not valid java name */
    public boolean f2676case = true;

    /* renamed from: else  reason: not valid java name */
    public boolean f2683else = false;

    /* renamed from: catch  reason: not valid java name */
    public final Matrix f2677catch = new Matrix();

    /* renamed from: class  reason: not valid java name */
    public final Matrix f2678class = new Matrix();

    /* renamed from: const  reason: not valid java name */
    public final Matrix f2679const = new Matrix();

    /* renamed from: final  reason: not valid java name */
    public final RectF f2685final = new RectF();

    /* renamed from: super  reason: not valid java name */
    public final float[] f2703super = new float[9];

    /* renamed from: extends  reason: not valid java name */
    public int f2684extends = 2;

    /* renamed from: finally  reason: not valid java name */
    public int f2686finally = 2;

    /* renamed from: volatile  reason: not valid java name */
    public boolean f2710volatile = true;

    /* renamed from: interface  reason: not valid java name */
    public boolean f2693interface = false;

    /* renamed from: protected  reason: not valid java name */
    public ImageView.ScaleType f2698protected = ImageView.ScaleType.FIT_CENTER;

    /* renamed from: transient  reason: not valid java name */
    public bw f2708transient = new Cdo();

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.kw$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final OverScroller f2712do;

        /* renamed from: for  reason: not valid java name */
        public int f2713for;

        /* renamed from: if  reason: not valid java name */
        public int f2714if;

        public Ccase(Context context) {
            this.f2712do = new OverScroller(context);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f2712do.isFinished() && this.f2712do.computeScrollOffset()) {
                int currX = this.f2712do.getCurrX();
                int currY = this.f2712do.getCurrY();
                kw.this.f2679const.postTranslate(this.f2714if - currX, this.f2713for - currY);
                kw.this.m1573do();
                this.f2714if = currX;
                this.f2713for = currY;
                kw.this.f2688goto.postOnAnimation(this);
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.kw$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements bw {
        public Cdo() {
        }

        /* renamed from: do  reason: not valid java name */
        public void m1581do(float f, float f2, float f3) {
            if (kw.this.m1576goto() < kw.this.f2709try || f < 1.0f) {
                fw fwVar = kw.this.f2701static;
                if (fwVar != null) {
                    fwVar.m894do(f, f2, f3);
                }
                kw.this.f2679const.postScale(f, f, f2, f3);
                kw.this.m1573do();
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.kw$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements GestureDetector.OnDoubleTapListener {
        public Cfor() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                float m1576goto = kw.this.m1576goto();
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (m1576goto < kw.this.f2695new) {
                    kw.this.m1571catch(kw.this.f2695new, x, y, true);
                } else if (m1576goto >= kw.this.f2695new && m1576goto < kw.this.f2709try) {
                    kw.this.m1571catch(kw.this.f2709try, x, y, true);
                } else {
                    kw.this.m1571catch(kw.this.f2687for, x, y, true);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            kw kwVar = kw.this;
            View.OnClickListener onClickListener = kwVar.f2699public;
            if (onClickListener != null) {
                onClickListener.onClick(kwVar.f2688goto);
            }
            RectF m1575for = kw.this.m1575for();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            kw kwVar2 = kw.this;
            iw iwVar = kwVar2.f2694native;
            if (iwVar != null) {
                iwVar.m1289do(kwVar2.f2688goto, x, y);
            }
            if (m1575for != null) {
                if (m1575for.contains(x, y)) {
                    float width = (x - m1575for.left) / m1575for.width();
                    float height = (y - m1575for.top) / m1575for.height();
                    kw kwVar3 = kw.this;
                    ew ewVar = kwVar3.f2711while;
                    if (ewVar != null) {
                        ewVar.m676do(kwVar3.f2688goto, width, height);
                        return true;
                    }
                    return true;
                }
                kw kwVar4 = kw.this;
                dw dwVar = kwVar4.f2691import;
                if (dwVar != null) {
                    dwVar.m516do(kwVar4.f2688goto);
                    return false;
                }
                return false;
            }
            return false;
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.kw$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends GestureDetector.SimpleOnGestureListener {
        public Cif() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            kw kwVar = kw.this;
            if (kwVar.f2704switch == null || kwVar.m1576goto() > 1.0f || motionEvent.getPointerCount() > 1 || motionEvent2.getPointerCount() > 1) {
                return false;
            }
            return kw.this.f2704switch.onFling(motionEvent, motionEvent2, f, f2);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            kw kwVar = kw.this;
            View.OnLongClickListener onLongClickListener = kwVar.f2700return;
            if (onLongClickListener != null) {
                onLongClickListener.onLongClick(kwVar.f2688goto);
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.kw$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class Cnew {

        /* renamed from: do  reason: not valid java name */
        public static final /* synthetic */ int[] f2719do;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f2719do = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2719do[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2719do[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2719do[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.kw$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final float f2721do;

        /* renamed from: for  reason: not valid java name */
        public final long f2722for = System.currentTimeMillis();

        /* renamed from: if  reason: not valid java name */
        public final float f2723if;

        /* renamed from: new  reason: not valid java name */
        public final float f2724new;

        /* renamed from: try  reason: not valid java name */
        public final float f2725try;

        public Ctry(float f, float f2, float f3, float f4) {
            this.f2721do = f3;
            this.f2723if = f4;
            this.f2724new = f;
            this.f2725try = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            float interpolation = kw.this.f2682do.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.f2722for)) * 1.0f) / kw.this.f2689if));
            float f = this.f2724new;
            float m995do = Cgoto.m995do(this.f2725try, f, interpolation, f) / kw.this.m1576goto();
            ((Cdo) kw.this.f2708transient).m1581do(m995do, this.f2721do, this.f2723if);
            if (interpolation < 1.0f) {
                kw.this.f2688goto.postOnAnimation(this);
            }
        }
    }

    public kw(ImageView imageView) {
        this.f2688goto = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (imageView.isInEditMode()) {
            return;
        }
        this.f2696package = 0.0f;
        this.f2675break = new aw(imageView.getContext(), this.f2708transient);
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new Cif());
        this.f2705this = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new Cfor());
    }

    /* renamed from: break  reason: not valid java name */
    public final void m1569break(Matrix matrix) {
        RectF m1578new;
        this.f2688goto.setImageMatrix(matrix);
        if (this.f2706throw == null || (m1578new = m1578new(matrix)) == null) {
            return;
        }
        ((ImageViewerPopupView.Cfor.Cdo) this.f2706throw).m3602do(m1578new);
    }

    /* renamed from: case  reason: not valid java name */
    public final int m1570case(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    /* renamed from: catch  reason: not valid java name */
    public void m1571catch(float f, float f2, float f3, boolean z) {
        if (z) {
            this.f2688goto.post(new Ctry(m1576goto(), f, f2, f3));
            return;
        }
        this.f2679const.setScale(f, f, f2, f3);
        m1573do();
    }

    /* renamed from: class  reason: not valid java name */
    public final void m1572class(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        float m1574else = m1574else(this.f2688goto);
        float m1570case = m1570case(this.f2688goto);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.f2677catch.reset();
        float f = intrinsicWidth;
        float f2 = m1574else / f;
        float f3 = intrinsicHeight;
        float f4 = m1570case / f3;
        ImageView.ScaleType scaleType = this.f2698protected;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.f2677catch.postTranslate((m1574else - f) / 2.0f, (m1570case - f3) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float max = Math.max(f2, f4);
            this.f2677catch.postScale(max, max);
            this.f2677catch.postTranslate((m1574else - (f * max)) / 2.0f, (m1570case - (f3 * max)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float min = Math.min(1.0f, Math.min(f2, f4));
            this.f2677catch.postScale(min, min);
            this.f2677catch.postTranslate((m1574else - (f * min)) / 2.0f, (m1570case - (f3 * min)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f, f3);
            RectF rectF2 = new RectF(0.0f, 0.0f, m1574else, m1570case);
            if (((int) this.f2696package) % 180 != 0) {
                rectF = new RectF(0.0f, 0.0f, f3, f);
            }
            int i = Cnew.f2719do[this.f2698protected.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    this.f2677catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
                } else if (i == 3) {
                    this.f2677catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
                } else if (i == 4) {
                    this.f2677catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
                }
            } else if (f3 > m1570case && (f3 * 1.0f) / f > (m1570case * 1.0f) / m1574else) {
                this.f2693interface = true;
                this.f2677catch.setRectToRect(rectF, new RectF(0.0f, 0.0f, m1574else, f3 * f2), Matrix.ScaleToFit.START);
            } else {
                this.f2677catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            }
        }
        m1579this();
    }

    /* renamed from: do  reason: not valid java name */
    public final void m1573do() {
        if (m1577if()) {
            m1569break(m1580try());
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final int m1574else(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    /* renamed from: for  reason: not valid java name */
    public RectF m1575for() {
        m1577if();
        return m1578new(m1580try());
    }

    /* renamed from: goto  reason: not valid java name */
    public float m1576goto() {
        this.f2679const.getValues(this.f2703super);
        this.f2679const.getValues(this.f2703super);
        return (float) Math.sqrt(((float) Math.pow(this.f2703super[0], 2.0d)) + ((float) Math.pow(this.f2703super[3], 2.0d)));
    }

    /* renamed from: if  reason: not valid java name */
    public final boolean m1577if() {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        RectF m1578new = m1578new(m1580try());
        if (m1578new == null) {
            return false;
        }
        float height = m1578new.height();
        float width = m1578new.width();
        float m1570case = m1570case(this.f2688goto);
        float f6 = 0.0f;
        if (height <= m1570case && m1578new.top >= 0.0f) {
            int i = Cnew.f2719do[this.f2698protected.ordinal()];
            if (i != 2) {
                if (i != 3) {
                    f4 = (m1570case - height) / 2.0f;
                    f5 = m1578new.top;
                } else {
                    f4 = m1570case - height;
                    f5 = m1578new.top;
                }
                f = f4 - f5;
            } else {
                f = -m1578new.top;
            }
            this.f2686finally = 2;
        } else {
            float f7 = m1578new.top;
            if (f7 >= 0.0f) {
                this.f2686finally = 0;
                f = -f7;
            } else {
                float f8 = m1578new.bottom;
                if (f8 <= m1570case) {
                    this.f2686finally = 1;
                    f = m1570case - f8;
                } else {
                    this.f2686finally = -1;
                    f = 0.0f;
                }
            }
        }
        float m1574else = m1574else(this.f2688goto);
        if (width <= m1574else && m1578new.left >= 0.0f) {
            int i2 = Cnew.f2719do[this.f2698protected.ordinal()];
            if (i2 != 2) {
                if (i2 != 3) {
                    f2 = (m1574else - width) / 2.0f;
                    f3 = m1578new.left;
                } else {
                    f2 = m1574else - width;
                    f3 = m1578new.left;
                }
                f6 = f2 - f3;
            } else {
                f6 = -m1578new.left;
            }
            this.f2684extends = 2;
        } else {
            float f9 = m1578new.left;
            if (f9 >= 0.0f) {
                this.f2684extends = 0;
                f6 = -f9;
            } else {
                float f10 = m1578new.right;
                if (f10 <= m1574else) {
                    f6 = m1574else - f10;
                    this.f2684extends = 1;
                } else {
                    this.f2684extends = -1;
                }
            }
        }
        this.f2679const.postTranslate(f6, f);
        return true;
    }

    /* renamed from: new  reason: not valid java name */
    public final RectF m1578new(Matrix matrix) {
        Drawable drawable = this.f2688goto.getDrawable();
        if (drawable != null) {
            this.f2685final.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(this.f2685final);
            return this.f2685final;
        }
        return null;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
            return;
        }
        m1572class(this.f2688goto.getDrawable());
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0021, code lost:
        if (r0 != 3) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0134  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r11, android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.kw.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: this  reason: not valid java name */
    public final void m1579this() {
        this.f2679const.reset();
        this.f2679const.postRotate(this.f2696package % 360.0f);
        m1573do();
        m1569break(m1580try());
        m1577if();
    }

    /* renamed from: try  reason: not valid java name */
    public final Matrix m1580try() {
        this.f2678class.set(this.f2677catch);
        this.f2678class.postConcat(this.f2679const);
        return this.f2678class;
    }

    public void update() {
        if (this.f2710volatile) {
            m1572class(this.f2688goto.getDrawable());
        } else {
            m1579this();
        }
    }
}
