package com.biquge.ebook.app.widget;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import com.apk.Cgoto;
import com.apk.lq0;
import com.apk.os0;
import com.apk.tr0;
import com.apk.ze;
import com.biquge.ebook.app.R$styleable;
import com.biquge.ebook.app.app.AppContext;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class SwitchButton extends os0 implements Checkable {
    public static final int k = m3510new(60.0f);
    public static final int l = m3510new(30.0f);

    /* renamed from: a  reason: collision with root package name */
    public boolean f11274a;

    /* renamed from: abstract  reason: not valid java name */
    public Paint f8207abstract;
    public boolean b;

    /* renamed from: break  reason: not valid java name */
    public float f8208break;
    public boolean c;

    /* renamed from: case  reason: not valid java name */
    public float f8209case;

    /* renamed from: catch  reason: not valid java name */
    public float f8210catch;

    /* renamed from: class  reason: not valid java name */
    public float f8211class;

    /* renamed from: const  reason: not valid java name */
    public float f8212const;

    /* renamed from: continue  reason: not valid java name */
    public Ctry f8213continue;
    public boolean d;

    /* renamed from: default  reason: not valid java name */
    public float f8214default;
    public boolean e;

    /* renamed from: else  reason: not valid java name */
    public float f8215else;

    /* renamed from: extends  reason: not valid java name */
    public float f8216extends;
    public Cnew f;

    /* renamed from: final  reason: not valid java name */
    public int f8217final;

    /* renamed from: finally  reason: not valid java name */
    public float f8218finally;

    /* renamed from: for  reason: not valid java name */
    public int f8219for;
    public long g;

    /* renamed from: goto  reason: not valid java name */
    public float f8220goto;
    public Runnable h;
    public ValueAnimator.AnimatorUpdateListener i;

    /* renamed from: if  reason: not valid java name */
    public boolean f8221if;

    /* renamed from: implements  reason: not valid java name */
    public final ArgbEvaluator f8222implements;

    /* renamed from: import  reason: not valid java name */
    public int f8223import;

    /* renamed from: instanceof  reason: not valid java name */
    public boolean f8224instanceof;

    /* renamed from: interface  reason: not valid java name */
    public RectF f8225interface;
    public Animator.AnimatorListener j;

    /* renamed from: native  reason: not valid java name */
    public int f8226native;

    /* renamed from: new  reason: not valid java name */
    public int f8227new;

    /* renamed from: package  reason: not valid java name */
    public float f8228package;

    /* renamed from: private  reason: not valid java name */
    public Paint f8229private;

    /* renamed from: protected  reason: not valid java name */
    public int f8230protected;

    /* renamed from: public  reason: not valid java name */
    public float f8231public;

    /* renamed from: return  reason: not valid java name */
    public int f8232return;

    /* renamed from: static  reason: not valid java name */
    public int f8233static;

    /* renamed from: strictfp  reason: not valid java name */
    public Ctry f8234strictfp;

    /* renamed from: super  reason: not valid java name */
    public int f8235super;

    /* renamed from: switch  reason: not valid java name */
    public float f8236switch;

    /* renamed from: synchronized  reason: not valid java name */
    public boolean f8237synchronized;

    /* renamed from: this  reason: not valid java name */
    public float f8238this;

    /* renamed from: throw  reason: not valid java name */
    public int f8239throw;

    /* renamed from: throws  reason: not valid java name */
    public float f8240throws;

    /* renamed from: transient  reason: not valid java name */
    public ValueAnimator f8241transient;

    /* renamed from: try  reason: not valid java name */
    public int f8242try;

    /* renamed from: volatile  reason: not valid java name */
    public Ctry f8243volatile;

    /* renamed from: while  reason: not valid java name */
    public int f8244while;

    /* renamed from: com.biquge.ebook.app.widget.SwitchButton$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (SwitchButton.this.f8230protected != 0) {
                return;
            }
            SwitchButton switchButton = SwitchButton.this;
            if (!(switchButton.f8230protected != 0) && switchButton.c) {
                if (switchButton.f8241transient.isRunning()) {
                    switchButton.f8241transient.cancel();
                }
                switchButton.f8230protected = 1;
                Ctry.m3518do(switchButton.f8234strictfp, switchButton.f8213continue);
                Ctry.m3518do(switchButton.f8243volatile, switchButton.f8213continue);
                if (switchButton.isChecked()) {
                    Ctry ctry = switchButton.f8243volatile;
                    int i = switchButton.f8239throw;
                    ctry.f8250if = i;
                    ctry.f8248do = switchButton.f8228package;
                    ctry.f8249for = i;
                } else {
                    Ctry ctry2 = switchButton.f8243volatile;
                    ctry2.f8250if = switchButton.f8235super;
                    ctry2.f8248do = switchButton.f8218finally;
                    ctry2.f8251new = switchButton.f8209case;
                }
                switchButton.f8241transient.start();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.SwitchButton$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Animator.AnimatorListener {
        public Cfor() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SwitchButton switchButton = SwitchButton.this;
            int i = switchButton.f8230protected;
            if (i == 1) {
                switchButton.f8230protected = 2;
                Ctry ctry = switchButton.f8213continue;
                ctry.f8249for = 0;
                ctry.f8251new = switchButton.f8209case;
                switchButton.postInvalidate();
            } else if (i == 3) {
                switchButton.f8230protected = 0;
                switchButton.postInvalidate();
            } else if (i == 4) {
                switchButton.f8230protected = 0;
                switchButton.postInvalidate();
                SwitchButton.this.m3516if();
            } else if (i != 5) {
            } else {
                switchButton.f8224instanceof = !switchButton.f8224instanceof;
                switchButton.f8230protected = 0;
                switchButton.postInvalidate();
                SwitchButton.this.m3516if();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.SwitchButton$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements ValueAnimator.AnimatorUpdateListener {
        public Cif() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            SwitchButton switchButton = SwitchButton.this;
            int i = switchButton.f8230protected;
            if (i == 1 || i == 3 || i == 4) {
                SwitchButton switchButton2 = SwitchButton.this;
                switchButton2.f8213continue.f8249for = ((Integer) switchButton2.f8222implements.evaluate(floatValue, Integer.valueOf(switchButton2.f8234strictfp.f8249for), Integer.valueOf(SwitchButton.this.f8243volatile.f8249for))).intValue();
                SwitchButton switchButton3 = SwitchButton.this;
                Ctry ctry = switchButton3.f8213continue;
                Ctry ctry2 = switchButton3.f8234strictfp;
                float f = ctry2.f8251new;
                Ctry ctry3 = switchButton3.f8243volatile;
                ctry.f8251new = Cgoto.m995do(ctry3.f8251new, f, floatValue, f);
                if (switchButton3.f8230protected != 1) {
                    float f2 = ctry2.f8248do;
                    ctry.f8248do = Cgoto.m995do(ctry3.f8248do, f2, floatValue, f2);
                }
                SwitchButton switchButton4 = SwitchButton.this;
                switchButton4.f8213continue.f8250if = ((Integer) switchButton4.f8222implements.evaluate(floatValue, Integer.valueOf(switchButton4.f8234strictfp.f8250if), Integer.valueOf(SwitchButton.this.f8243volatile.f8250if))).intValue();
            } else if (i == 5) {
                Ctry ctry4 = switchButton.f8213continue;
                float f3 = switchButton.f8234strictfp.f8248do;
                float m995do = Cgoto.m995do(switchButton.f8243volatile.f8248do, f3, floatValue, f3);
                ctry4.f8248do = m995do;
                float f4 = switchButton.f8218finally;
                float f5 = (m995do - f4) / (switchButton.f8228package - f4);
                ctry4.f8250if = ((Integer) switchButton.f8222implements.evaluate(f5, Integer.valueOf(switchButton.f8235super), Integer.valueOf(SwitchButton.this.f8239throw))).intValue();
                SwitchButton switchButton5 = SwitchButton.this;
                Ctry ctry5 = switchButton5.f8213continue;
                ctry5.f8251new = switchButton5.f8209case * f5;
                ctry5.f8249for = ((Integer) switchButton5.f8222implements.evaluate(f5, 0, Integer.valueOf(SwitchButton.this.f8223import))).intValue();
            }
            SwitchButton.this.postInvalidate();
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.SwitchButton$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cnew {
        void onCheckedChanged(SwitchButton switchButton, boolean z);
    }

    /* renamed from: com.biquge.ebook.app.widget.SwitchButton$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Ctry {

        /* renamed from: do  reason: not valid java name */
        public float f8248do;

        /* renamed from: for  reason: not valid java name */
        public int f8249for;

        /* renamed from: if  reason: not valid java name */
        public int f8250if;

        /* renamed from: new  reason: not valid java name */
        public float f8251new;

        /* renamed from: do  reason: not valid java name */
        public static void m3518do(Ctry ctry, Ctry ctry2) {
            if (ctry != null) {
                ctry.f8248do = ctry2.f8248do;
                ctry.f8250if = ctry2.f8250if;
                ctry.f8249for = ctry2.f8249for;
                ctry.f8251new = ctry2.f8251new;
                return;
            }
            throw null;
        }
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8221if = true;
        this.f8225interface = new RectF();
        this.f8230protected = 0;
        this.f8222implements = new ArgbEvaluator();
        this.c = false;
        this.d = false;
        this.e = false;
        this.h = new Cdo();
        this.i = new Cif();
        this.j = new Cfor();
        TypedArray obtainStyledAttributes = attributeSet != null ? context.obtainStyledAttributes(attributeSet, R$styleable.SwitchButton) : null;
        this.f11274a = m3509goto(obtainStyledAttributes, 10, true);
        this.f8232return = m3511this(obtainStyledAttributes, 15, -5592406);
        this.f8233static = m3507break(obtainStyledAttributes, 17, m3510new(1.5f));
        this.f8236switch = m3508for(10.0f);
        float m3508for = m3508for(4.0f);
        this.f8240throws = obtainStyledAttributes != null ? obtainStyledAttributes.getDimension(16, m3508for) : m3508for;
        this.f8214default = m3508for(4.0f);
        this.f8216extends = m3508for(4.0f);
        this.f8219for = m3507break(obtainStyledAttributes, 12, m3510new(2.5f));
        this.f8227new = m3507break(obtainStyledAttributes, 11, m3510new(1.5f));
        this.f8242try = m3511this(obtainStyledAttributes, 9, 855638016);
        this.f8235super = m3511this(obtainStyledAttributes, 14, -2236963);
        if (AppContext.f6392case.f6395if) {
            this.f8239throw = ze.p(R.color.colorAccent);
        } else {
            this.f8239throw = lq0.m1660do(getContext(), tr0.m2617do(R.color.colorAccent));
        }
        this.f8244while = m3507break(obtainStyledAttributes, 1, m3510new(1.0f));
        this.f8223import = m3511this(obtainStyledAttributes, 5, -1);
        this.f8226native = m3507break(obtainStyledAttributes, 6, m3510new(1.0f));
        this.f8231public = m3508for(6.0f);
        int m3511this = m3511this(obtainStyledAttributes, 2, -1);
        int i = obtainStyledAttributes != null ? obtainStyledAttributes.getInt(7, 300) : 300;
        this.f8224instanceof = m3509goto(obtainStyledAttributes, 3, false);
        this.b = m3509goto(obtainStyledAttributes, 13, true);
        this.f8217final = m3511this(obtainStyledAttributes, 0, -1);
        this.f8237synchronized = m3509goto(obtainStyledAttributes, 8, true);
        if (obtainStyledAttributes != null) {
            obtainStyledAttributes.recycle();
        }
        this.f8207abstract = new Paint(1);
        Paint paint = new Paint(1);
        this.f8229private = paint;
        paint.setColor(m3511this);
        if (this.f11274a) {
            this.f8229private.setShadowLayer(this.f8219for, 0.0f, this.f8227new, this.f8242try);
        }
        this.f8213continue = new Ctry();
        this.f8234strictfp = new Ctry();
        this.f8243volatile = new Ctry();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f8241transient = ofFloat;
        ofFloat.setDuration(i);
        this.f8241transient.setRepeatCount(0);
        this.f8241transient.addUpdateListener(this.i);
        this.f8241transient.addListener(this.j);
        super.setClickable(true);
        setPadding(0, 0, 0, 0);
        setLayerType(1, null);
    }

    /* renamed from: break  reason: not valid java name */
    public static int m3507break(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getDimensionPixelOffset(i, i2);
    }

    /* renamed from: for  reason: not valid java name */
    public static float m3508for(float f) {
        return TypedValue.applyDimension(1, f, Resources.getSystem().getDisplayMetrics());
    }

    /* renamed from: goto  reason: not valid java name */
    public static boolean m3509goto(TypedArray typedArray, int i, boolean z) {
        return typedArray == null ? z : typedArray.getBoolean(i, z);
    }

    /* renamed from: new  reason: not valid java name */
    public static int m3510new(float f) {
        return (int) m3508for(f);
    }

    private void setCheckedViewState(Ctry ctry) {
        ctry.f8251new = this.f8209case;
        ctry.f8250if = this.f8239throw;
        ctry.f8249for = this.f8223import;
        ctry.f8248do = this.f8228package;
    }

    private void setUncheckViewState(Ctry ctry) {
        ctry.f8251new = 0.0f;
        ctry.f8250if = this.f8235super;
        ctry.f8249for = 0;
        ctry.f8248do = this.f8218finally;
    }

    /* renamed from: this  reason: not valid java name */
    public static int m3511this(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getColor(i, i2);
    }

    /* renamed from: case  reason: not valid java name */
    public final boolean m3512case() {
        return this.f8230protected == 2;
    }

    /* renamed from: catch  reason: not valid java name */
    public final void m3513catch() {
        if (m3512case() || m3515else()) {
            if (this.f8241transient.isRunning()) {
                this.f8241transient.cancel();
            }
            this.f8230protected = 3;
            Ctry.m3518do(this.f8234strictfp, this.f8213continue);
            if (isChecked()) {
                setCheckedViewState(this.f8243volatile);
            } else {
                setUncheckViewState(this.f8243volatile);
            }
            this.f8241transient.start();
        }
    }

    /* renamed from: class  reason: not valid java name */
    public final void m3514class(boolean z, boolean z2) {
        if (isEnabled()) {
            if (!this.e) {
                if (!this.d) {
                    this.f8224instanceof = !this.f8224instanceof;
                    if (z2) {
                        m3516if();
                        return;
                    }
                    return;
                }
                if (this.f8241transient.isRunning()) {
                    this.f8241transient.cancel();
                }
                if (this.f8237synchronized && z) {
                    this.f8230protected = 5;
                    Ctry.m3518do(this.f8234strictfp, this.f8213continue);
                    if (isChecked()) {
                        setUncheckViewState(this.f8243volatile);
                    } else {
                        setCheckedViewState(this.f8243volatile);
                    }
                    this.f8241transient.start();
                    return;
                }
                this.f8224instanceof = !this.f8224instanceof;
                if (isChecked()) {
                    setCheckedViewState(this.f8213continue);
                } else {
                    setUncheckViewState(this.f8213continue);
                }
                postInvalidate();
                if (z2) {
                    m3516if();
                    return;
                }
                return;
            }
            throw new RuntimeException("should NOT switch the state in method: [onCheckedChanged]!");
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final boolean m3515else() {
        int i = this.f8230protected;
        return i == 1 || i == 3;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3516if() {
        Cnew cnew = this.f;
        if (cnew != null) {
            this.e = true;
            cnew.onCheckedChanged(this, isChecked());
        }
        this.e = false;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f8224instanceof;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f8207abstract.setStrokeWidth(this.f8244while);
        this.f8207abstract.setStyle(Paint.Style.FILL);
        this.f8207abstract.setColor(this.f8217final);
        m3517try(canvas, this.f8238this, this.f8208break, this.f8210catch, this.f8211class, this.f8209case, this.f8207abstract);
        this.f8207abstract.setStyle(Paint.Style.STROKE);
        this.f8207abstract.setColor(this.f8235super);
        m3517try(canvas, this.f8238this, this.f8208break, this.f8210catch, this.f8211class, this.f8209case, this.f8207abstract);
        if (this.b) {
            int i = this.f8232return;
            float f = this.f8210catch - this.f8236switch;
            float f2 = this.f8212const;
            float f3 = this.f8240throws;
            Paint paint = this.f8207abstract;
            paint.setStyle(Paint.Style.STROKE);
            paint.setColor(i);
            paint.setStrokeWidth(this.f8233static);
            canvas.drawCircle(f, f2, f3, paint);
        }
        float f4 = this.f8213continue.f8251new * 0.5f;
        this.f8207abstract.setStyle(Paint.Style.STROKE);
        this.f8207abstract.setColor(this.f8213continue.f8250if);
        this.f8207abstract.setStrokeWidth((f4 * 2.0f) + this.f8244while);
        m3517try(canvas, this.f8238this + f4, this.f8208break + f4, this.f8210catch - f4, this.f8211class - f4, this.f8209case, this.f8207abstract);
        this.f8207abstract.setStyle(Paint.Style.FILL);
        this.f8207abstract.setStrokeWidth(1.0f);
        float f5 = this.f8238this;
        float f6 = this.f8208break;
        float f7 = this.f8209case;
        canvas.drawArc(f5, f6, (f7 * 2.0f) + f5, (f7 * 2.0f) + f6, 90.0f, 180.0f, true, this.f8207abstract);
        float f8 = this.f8238this;
        float f9 = this.f8209case;
        float f10 = this.f8208break;
        canvas.drawRect(f8 + f9, f10, this.f8213continue.f8248do, (f9 * 2.0f) + f10, this.f8207abstract);
        if (this.b) {
            int i2 = this.f8213continue.f8249for;
            float f11 = this.f8238this + this.f8209case;
            float f12 = f11 - this.f8214default;
            float f13 = this.f8212const;
            float f14 = this.f8231public;
            Paint paint2 = this.f8207abstract;
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setColor(i2);
            paint2.setStrokeWidth(this.f8226native);
            canvas.drawLine(f12, f13 - f14, f11 - this.f8216extends, f13 + f14, paint2);
        }
        float f15 = this.f8213continue.f8248do;
        float f16 = this.f8212const;
        canvas.drawCircle(f15, f16, this.f8215else, this.f8229private);
        this.f8207abstract.setStyle(Paint.Style.STROKE);
        this.f8207abstract.setStrokeWidth(1.0f);
        this.f8207abstract.setColor(-2236963);
        canvas.drawCircle(f15, f16, this.f8215else, this.f8207abstract);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode == 0 || mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
        }
        if (mode2 == 0 || mode2 == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(l, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float max = Math.max(this.f8219for + this.f8227new, this.f8244while);
        float f = i2 - max;
        float f2 = f - max;
        this.f8220goto = f2;
        float f3 = i - max;
        float f4 = f2 * 0.5f;
        this.f8209case = f4;
        this.f8215else = f4 - this.f8244while;
        this.f8238this = max;
        this.f8208break = max;
        this.f8210catch = f3;
        this.f8211class = f;
        this.f8212const = (f + max) * 0.5f;
        this.f8218finally = max + f4;
        this.f8228package = f3 - f4;
        if (isChecked()) {
            setCheckedViewState(this.f8213continue);
        } else {
            setUncheckViewState(this.f8213continue);
        }
        this.d = true;
        postInvalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isEnabled() && this.f8221if) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.c = true;
                this.g = System.currentTimeMillis();
                removeCallbacks(this.h);
                postDelayed(this.h, 100L);
            } else if (actionMasked == 1) {
                this.c = false;
                removeCallbacks(this.h);
                if (System.currentTimeMillis() - this.g <= 300) {
                    toggle();
                } else if (m3512case()) {
                    boolean z = Math.max(0.0f, Math.min(1.0f, motionEvent.getX() / ((float) getWidth()))) > 0.5f;
                    if (z == isChecked()) {
                        m3513catch();
                    } else {
                        this.f8224instanceof = z;
                        if (this.f8241transient.isRunning()) {
                            this.f8241transient.cancel();
                        }
                        this.f8230protected = 4;
                        Ctry.m3518do(this.f8234strictfp, this.f8213continue);
                        if (isChecked()) {
                            setCheckedViewState(this.f8243volatile);
                        } else {
                            setUncheckViewState(this.f8243volatile);
                        }
                        this.f8241transient.start();
                    }
                } else if (m3515else()) {
                    m3513catch();
                }
            } else if (actionMasked == 2) {
                float x = motionEvent.getX();
                if (m3515else()) {
                    float max = Math.max(0.0f, Math.min(1.0f, x / getWidth()));
                    Ctry ctry = this.f8213continue;
                    float f = this.f8218finally;
                    ctry.f8248do = Cgoto.m995do(this.f8228package, f, max, f);
                } else if (m3512case()) {
                    float max2 = Math.max(0.0f, Math.min(1.0f, x / getWidth()));
                    Ctry ctry2 = this.f8213continue;
                    float f2 = this.f8218finally;
                    ctry2.f8248do = Cgoto.m995do(this.f8228package, f2, max2, f2);
                    ctry2.f8250if = ((Integer) this.f8222implements.evaluate(max2, Integer.valueOf(this.f8235super), Integer.valueOf(this.f8239throw))).intValue();
                    postInvalidate();
                }
            } else if (actionMasked == 3) {
                this.c = false;
                removeCallbacks(this.h);
                if (m3515else() || m3512case()) {
                    m3513catch();
                }
            }
            return true;
        }
        return false;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (z == isChecked()) {
            postInvalidate();
        } else {
            m3514class(this.f8237synchronized, false);
        }
    }

    public void setEnableEffect(boolean z) {
        this.f8237synchronized = z;
    }

    public void setOnCheckedChangeListener(Cnew cnew) {
        this.f = cnew;
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
    }

    @Override // android.view.View
    public final void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(0, 0, 0, 0);
    }

    public void setShadowEffect(boolean z) {
        if (this.f11274a == z) {
            return;
        }
        this.f11274a = z;
        if (z) {
            this.f8229private.setShadowLayer(this.f8219for, 0.0f, this.f8227new, this.f8242try);
        } else {
            this.f8229private.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        }
    }

    public void setTouchEnable(boolean z) {
        this.f8221if = z;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        m3514class(true, true);
    }

    /* renamed from: try  reason: not valid java name */
    public final void m3517try(Canvas canvas, float f, float f2, float f3, float f4, float f5, Paint paint) {
        canvas.drawRoundRect(f, f2, f3, f4, f5, f5, paint);
    }
}
