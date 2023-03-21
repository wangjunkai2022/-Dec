package com.apk;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.OverScroller;
/* compiled from: PhotoViewAttacher.java */
/* loaded from: classes8.dex */
public class h30 implements View.OnTouchListener, View.OnLayoutChangeListener {

    /* renamed from: break  reason: not valid java name */
    public y20 f1731break;

    /* renamed from: default  reason: not valid java name */
    public Ccase f1737default;

    /* renamed from: goto  reason: not valid java name */
    public final ImageView f1744goto;

    /* renamed from: import  reason: not valid java name */
    public b30 f1746import;

    /* renamed from: native  reason: not valid java name */
    public g30 f1747native;

    /* renamed from: package  reason: not valid java name */
    public float f1749package;

    /* renamed from: public  reason: not valid java name */
    public View.OnClickListener f1751public;

    /* renamed from: return  reason: not valid java name */
    public View.OnLongClickListener f1752return;

    /* renamed from: static  reason: not valid java name */
    public d30 f1753static;

    /* renamed from: strictfp  reason: not valid java name */
    public boolean f1754strictfp;

    /* renamed from: switch  reason: not valid java name */
    public e30 f1756switch;

    /* renamed from: this  reason: not valid java name */
    public GestureDetector f1757this;

    /* renamed from: throw  reason: not valid java name */
    public a30 f1758throw;

    /* renamed from: throws  reason: not valid java name */
    public f30 f1759throws;

    /* renamed from: while  reason: not valid java name */
    public c30 f1761while;

    /* renamed from: do  reason: not valid java name */
    public Interpolator f1738do = new LinearInterpolator();

    /* renamed from: if  reason: not valid java name */
    public int f1745if = 300;

    /* renamed from: for  reason: not valid java name */
    public float f1743for = 1.0f;

    /* renamed from: new  reason: not valid java name */
    public float f1748new = 1.5f;

    /* renamed from: try  reason: not valid java name */
    public float f1760try = 2.0f;

    /* renamed from: case  reason: not valid java name */
    public boolean f1732case = true;

    /* renamed from: else  reason: not valid java name */
    public boolean f1739else = false;

    /* renamed from: catch  reason: not valid java name */
    public final Matrix f1733catch = new Matrix();

    /* renamed from: class  reason: not valid java name */
    public final Matrix f1734class = new Matrix();

    /* renamed from: const  reason: not valid java name */
    public final Matrix f1735const = new Matrix();

    /* renamed from: final  reason: not valid java name */
    public final RectF f1741final = new RectF();

    /* renamed from: super  reason: not valid java name */
    public final float[] f1755super = new float[9];

    /* renamed from: extends  reason: not valid java name */
    public int f1740extends = 2;

    /* renamed from: finally  reason: not valid java name */
    public int f1742finally = 2;

    /* renamed from: private  reason: not valid java name */
    public boolean f1750private = true;

    /* renamed from: abstract  reason: not valid java name */
    public ImageView.ScaleType f1730abstract = ImageView.ScaleType.FIT_CENTER;

    /* renamed from: continue  reason: not valid java name */
    public final z20 f1736continue = new Cdo();

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.h30$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final OverScroller f1762do;

        /* renamed from: for  reason: not valid java name */
        public int f1763for;

        /* renamed from: if  reason: not valid java name */
        public int f1764if;

        public Ccase(Context context) {
            this.f1762do = new OverScroller(context);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f1762do.isFinished() && this.f1762do.computeScrollOffset()) {
                int currX = this.f1762do.getCurrX();
                int currY = this.f1762do.getCurrY();
                h30.this.f1735const.postTranslate(this.f1764if - currX, this.f1763for - currY);
                h30.this.m1097do();
                this.f1764if = currX;
                this.f1763for = currY;
                h30.this.f1744goto.postOnAnimation(this);
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.h30$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements z20 {
        public Cdo() {
        }

        /* renamed from: do  reason: not valid java name */
        public void m1105do(float f, float f2, float f3) {
            if (h30.this.m1100goto() < h30.this.f1760try || f < 1.0f) {
                d30 d30Var = h30.this.f1753static;
                if (d30Var != null) {
                    d30Var.m405do(f, f2, f3);
                }
                h30.this.f1735const.postScale(f, f, f2, f3);
                h30.this.m1097do();
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.h30$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements GestureDetector.OnDoubleTapListener {
        public Cfor() {
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                float m1100goto = h30.this.m1100goto();
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (m1100goto <= h30.this.f1760try - 0.1d) {
                    h30.this.m1094break(h30.this.f1760try, x, y, true);
                } else {
                    h30.this.m1094break(h30.this.f1743for, x, y, true);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            l30 l30Var;
            h30 h30Var = h30.this;
            View.OnClickListener onClickListener = h30Var.f1751public;
            if (onClickListener != null) {
                onClickListener.onClick(h30Var.f1744goto);
            }
            RectF m1099for = h30.this.m1099for();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            g30 g30Var = h30.this.f1747native;
            if (g30Var != null && (l30Var = lz.this.f2954new) != null) {
                l30Var.m1612do(x, y, false);
            }
            if (m1099for != null) {
                if (m1099for.contains(x, y)) {
                    float width = (x - m1099for.left) / m1099for.width();
                    float height = (y - m1099for.top) / m1099for.height();
                    h30 h30Var2 = h30.this;
                    c30 c30Var = h30Var2.f1761while;
                    if (c30Var != null) {
                        c30Var.m307do(h30Var2.f1744goto, width, height);
                        return true;
                    }
                    return true;
                }
                h30 h30Var3 = h30.this;
                b30 b30Var = h30Var3.f1746import;
                if (b30Var != null) {
                    b30Var.m144do(h30Var3.f1744goto);
                }
            }
            return false;
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.h30$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends GestureDetector.SimpleOnGestureListener {
        public Cif() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            h30 h30Var = h30.this;
            if (h30Var.f1756switch == null || h30Var.m1100goto() > 1.0f || motionEvent.getPointerCount() > 1 || motionEvent2.getPointerCount() > 1) {
                return false;
            }
            return h30.this.f1756switch.onFling(motionEvent, motionEvent2, f, f2);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            h30 h30Var = h30.this;
            View.OnLongClickListener onLongClickListener = h30Var.f1752return;
            if (onLongClickListener != null) {
                onLongClickListener.onLongClick(h30Var.f1744goto);
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.h30$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class Cnew {

        /* renamed from: do  reason: not valid java name */
        public static final /* synthetic */ int[] f1769do;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f1769do = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1769do[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1769do[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1769do[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: PhotoViewAttacher.java */
    /* renamed from: com.apk.h30$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final float f1771do;

        /* renamed from: for  reason: not valid java name */
        public final long f1772for = System.currentTimeMillis();

        /* renamed from: if  reason: not valid java name */
        public final float f1773if;

        /* renamed from: new  reason: not valid java name */
        public final float f1774new;

        /* renamed from: try  reason: not valid java name */
        public final float f1775try;

        public Ctry(float f, float f2, float f3, float f4) {
            this.f1771do = f3;
            this.f1773if = f4;
            this.f1774new = f;
            this.f1775try = f2;
        }

        @Override // java.lang.Runnable
        public void run() {
            float interpolation = h30.this.f1738do.getInterpolation(Math.min(1.0f, (((float) (System.currentTimeMillis() - this.f1772for)) * 1.0f) / h30.this.f1745if));
            float f = this.f1774new;
            float m995do = Cgoto.m995do(this.f1775try, f, interpolation, f) / h30.this.m1100goto();
            ((Cdo) h30.this.f1736continue).m1105do(m995do, this.f1771do, this.f1773if);
            if (interpolation < 1.0f) {
                h30.this.f1744goto.postOnAnimation(this);
            }
        }
    }

    public h30(ImageView imageView) {
        this.f1744goto = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (imageView.isInEditMode()) {
            return;
        }
        this.f1749package = 0.0f;
        this.f1731break = new y20(imageView.getContext(), this.f1736continue);
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new Cif());
        this.f1757this = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new Cfor());
    }

    /* renamed from: break  reason: not valid java name */
    public void m1094break(float f, float f2, float f3, boolean z) {
        if (f < this.f1743for || f > this.f1760try) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        }
        if (z) {
            this.f1744goto.post(new Ctry(m1100goto(), f, f2, f3));
            return;
        }
        this.f1735const.setScale(f, f, f2, f3);
        m1097do();
    }

    /* renamed from: case  reason: not valid java name */
    public final int m1095case(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    /* renamed from: catch  reason: not valid java name */
    public final void m1096catch(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        float m1098else = m1098else(this.f1744goto);
        float m1095case = m1095case(this.f1744goto);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (!this.f1754strictfp && m1098else > 0.0f && m1095case > 0.0f && intrinsicWidth > 0 && intrinsicHeight > 0) {
            this.f1754strictfp = true;
            float f = (intrinsicHeight / m1095case) / (intrinsicWidth / m1098else);
            if (f > this.f1760try) {
                this.f1760try = f;
            }
        }
        this.f1733catch.reset();
        float f2 = intrinsicWidth;
        float f3 = m1098else / f2;
        float f4 = intrinsicHeight;
        float f5 = m1095case / f4;
        ImageView.ScaleType scaleType = this.f1730abstract;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.f1733catch.postTranslate((m1098else - f2) / 2.0f, (m1095case - f4) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float max = Math.max(f3, f5);
            this.f1733catch.postScale(max, max);
            this.f1733catch.postTranslate((m1098else - (f2 * max)) / 2.0f, (m1095case - (f4 * max)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float min = Math.min(1.0f, Math.min(f3, f5));
            this.f1733catch.postScale(min, min);
            this.f1733catch.postTranslate((m1098else - (f2 * min)) / 2.0f, (m1095case - (f4 * min)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f2, f4);
            RectF rectF2 = new RectF(0.0f, 0.0f, m1098else, m1095case);
            if (((int) this.f1749package) % 180 != 0) {
                rectF = new RectF(0.0f, 0.0f, f4, f2);
            }
            int i = Cnew.f1769do[this.f1730abstract.ordinal()];
            if (i == 1) {
                this.f1733catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i == 2) {
                this.f1733catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i == 3) {
                this.f1733catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i == 4) {
                this.f1733catch.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        m1103this();
    }

    /* renamed from: do  reason: not valid java name */
    public final void m1097do() {
        RectF m1102new;
        if (m1101if()) {
            Matrix m1104try = m1104try();
            this.f1744goto.setImageMatrix(m1104try);
            if (this.f1758throw == null || (m1102new = m1102new(m1104try)) == null) {
                return;
            }
            this.f1758throw.m16do(m1102new);
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final int m1098else(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight();
    }

    /* renamed from: for  reason: not valid java name */
    public RectF m1099for() {
        m1101if();
        return m1102new(m1104try());
    }

    /* renamed from: goto  reason: not valid java name */
    public float m1100goto() {
        this.f1735const.getValues(this.f1755super);
        this.f1735const.getValues(this.f1755super);
        return (float) Math.sqrt(((float) Math.pow(this.f1755super[0], 2.0d)) + ((float) Math.pow(this.f1755super[3], 2.0d)));
    }

    /* renamed from: if  reason: not valid java name */
    public final boolean m1101if() {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        RectF m1102new = m1102new(m1104try());
        if (m1102new == null) {
            return false;
        }
        float height = m1102new.height();
        float width = m1102new.width();
        float m1095case = m1095case(this.f1744goto);
        float f6 = 0.0f;
        if (height <= m1095case) {
            int i = Cnew.f1769do[this.f1730abstract.ordinal()];
            if (i != 2) {
                if (i != 3) {
                    f4 = (m1095case - height) / 2.0f;
                    f5 = m1102new.top;
                } else {
                    f4 = m1095case - height;
                    f5 = m1102new.top;
                }
                f = f4 - f5;
            } else {
                f = -m1102new.top;
            }
            this.f1742finally = 2;
        } else {
            float f7 = m1102new.top;
            if (f7 > 0.0f) {
                this.f1742finally = 0;
                f = -f7;
            } else {
                float f8 = m1102new.bottom;
                if (f8 < m1095case) {
                    this.f1742finally = 1;
                    f = m1095case - f8;
                } else {
                    this.f1742finally = -1;
                    f = 0.0f;
                }
            }
        }
        float m1098else = m1098else(this.f1744goto);
        if (width <= m1098else) {
            int i2 = Cnew.f1769do[this.f1730abstract.ordinal()];
            if (i2 != 2) {
                if (i2 != 3) {
                    f2 = (m1098else - width) / 2.0f;
                    f3 = m1102new.left;
                } else {
                    f2 = m1098else - width;
                    f3 = m1102new.left;
                }
                f6 = f2 - f3;
            } else {
                f6 = -m1102new.left;
            }
            this.f1740extends = 2;
        } else {
            float f9 = m1102new.left;
            if (f9 > 0.0f) {
                this.f1740extends = 0;
                f6 = -f9;
            } else {
                float f10 = m1102new.right;
                if (f10 < m1098else) {
                    f6 = m1098else - f10;
                    this.f1740extends = 1;
                } else {
                    this.f1740extends = -1;
                }
            }
        }
        this.f1735const.postTranslate(f6, f);
        return true;
    }

    /* renamed from: new  reason: not valid java name */
    public final RectF m1102new(Matrix matrix) {
        Drawable drawable = this.f1744goto.getDrawable();
        if (drawable != null) {
            this.f1741final.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            matrix.mapRect(this.f1741final);
            return this.f1741final;
        }
        return null;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
            return;
        }
        m1096catch(this.f1744goto.getDrawable());
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c0  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r11, android.view.MotionEvent r12) {
        /*
            r10 = this;
            boolean r0 = r10.f1750private
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lcc
            r0 = r11
            android.widget.ImageView r0 = (android.widget.ImageView) r0
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            if (r0 == 0) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            if (r0 == 0) goto Lcc
            int r0 = r12.getAction()
            r3 = 0
            if (r0 == 0) goto L74
            if (r0 == r2) goto L21
            r3 = 3
            if (r0 == r3) goto L21
            goto L88
        L21:
            float r0 = r10.m1100goto()
            float r3 = r10.f1743for
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L4a
            android.graphics.RectF r0 = r10.m1099for()
            if (r0 == 0) goto L88
            com.apk.h30$try r9 = new com.apk.h30$try
            float r5 = r10.m1100goto()
            float r6 = r10.f1743for
            float r7 = r0.centerX()
            float r8 = r0.centerY()
            r3 = r9
            r4 = r10
            r3.<init>(r5, r6, r7, r8)
            r11.post(r9)
            goto L72
        L4a:
            float r0 = r10.m1100goto()
            float r3 = r10.f1760try
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto L88
            android.graphics.RectF r0 = r10.m1099for()
            if (r0 == 0) goto L88
            com.apk.h30$try r9 = new com.apk.h30$try
            float r5 = r10.m1100goto()
            float r6 = r10.f1760try
            float r7 = r0.centerX()
            float r8 = r0.centerY()
            r3 = r9
            r4 = r10
            r3.<init>(r5, r6, r7, r8)
            r11.post(r9)
        L72:
            r11 = 1
            goto L89
        L74:
            android.view.ViewParent r11 = r11.getParent()
            if (r11 == 0) goto L7d
            r11.requestDisallowInterceptTouchEvent(r2)
        L7d:
            com.apk.h30$case r11 = r10.f1737default
            if (r11 == 0) goto L88
            android.widget.OverScroller r11 = r11.f1762do
            r11.forceFinished(r2)
            r10.f1737default = r3
        L88:
            r11 = 0
        L89:
            com.apk.y20 r0 = r10.f1731break
            if (r0 == 0) goto Lc0
            boolean r11 = r0.m3054for()
            com.apk.y20 r0 = r10.f1731break
            boolean r3 = r0.f5849try
            android.view.ScaleGestureDetector r4 = r0.f5844for     // Catch: java.lang.IllegalArgumentException -> L9e
            r4.onTouchEvent(r12)     // Catch: java.lang.IllegalArgumentException -> L9e
            r0.m3056new(r12)     // Catch: java.lang.IllegalArgumentException -> L9e
            goto L9f
        L9e:
        L9f:
            if (r11 != 0) goto Lab
            com.apk.y20 r11 = r10.f1731break
            boolean r11 = r11.m3054for()
            if (r11 != 0) goto Lab
            r11 = 1
            goto Lac
        Lab:
            r11 = 0
        Lac:
            if (r3 != 0) goto Lb6
            com.apk.y20 r0 = r10.f1731break
            boolean r0 = r0.f5849try
            if (r0 != 0) goto Lb6
            r0 = 1
            goto Lb7
        Lb6:
            r0 = 0
        Lb7:
            if (r11 == 0) goto Lbc
            if (r0 == 0) goto Lbc
            r1 = 1
        Lbc:
            r10.f1739else = r1
            r1 = 1
            goto Lc1
        Lc0:
            r1 = r11
        Lc1:
            android.view.GestureDetector r11 = r10.f1757this
            if (r11 == 0) goto Lcc
            boolean r11 = r11.onTouchEvent(r12)
            if (r11 == 0) goto Lcc
            r1 = 1
        Lcc:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.h30.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: this  reason: not valid java name */
    public final void m1103this() {
        RectF m1102new;
        this.f1735const.reset();
        this.f1735const.postRotate(this.f1749package % 360.0f);
        m1097do();
        Matrix m1104try = m1104try();
        this.f1744goto.setImageMatrix(m1104try);
        if (this.f1758throw != null && (m1102new = m1102new(m1104try)) != null) {
            this.f1758throw.m16do(m1102new);
        }
        m1101if();
    }

    /* renamed from: try  reason: not valid java name */
    public final Matrix m1104try() {
        this.f1734class.set(this.f1733catch);
        this.f1734class.postConcat(this.f1735const);
        return this.f1734class;
    }

    public void update() {
        if (this.f1750private) {
            m1096catch(this.f1744goto.getDrawable());
        } else {
            m1103this();
        }
    }
}
