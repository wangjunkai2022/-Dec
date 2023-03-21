package com.apk;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.VelocityTrackerCompat;
import androidx.core.widget.ScrollerCompat;
import java.util.Arrays;
import java.util.List;
import me.imid.swipebacklayout.lib.SwipeBackLayout;

/* compiled from: ViewDragHelper.java */
/* loaded from: classes7.dex */
public class me0 {

    /* renamed from: switch  reason: not valid java name */
    public static final Interpolator f3004switch = new Cdo();

    /* renamed from: break  reason: not valid java name */
    public int[] f3005break;

    /* renamed from: case  reason: not valid java name */
    public float[] f3006case;

    /* renamed from: catch  reason: not valid java name */
    public int f3007catch;

    /* renamed from: class  reason: not valid java name */
    public VelocityTracker f3008class;

    /* renamed from: const  reason: not valid java name */
    public float f3009const;

    /* renamed from: do  reason: not valid java name */
    public int f3010do;

    /* renamed from: else  reason: not valid java name */
    public float[] f3011else;

    /* renamed from: final  reason: not valid java name */
    public float f3012final;

    /* renamed from: goto  reason: not valid java name */
    public int[] f3014goto;

    /* renamed from: if  reason: not valid java name */
    public int f3015if;

    /* renamed from: import  reason: not valid java name */
    public final Cfor f3016import;

    /* renamed from: native  reason: not valid java name */
    public View f3017native;

    /* renamed from: new  reason: not valid java name */
    public float[] f3018new;

    /* renamed from: public  reason: not valid java name */
    public boolean f3019public;

    /* renamed from: return  reason: not valid java name */
    public final ViewGroup f3020return;

    /* renamed from: super  reason: not valid java name */
    public int f3022super;

    /* renamed from: this  reason: not valid java name */
    public int[] f3023this;

    /* renamed from: throw  reason: not valid java name */
    public int f3024throw;

    /* renamed from: try  reason: not valid java name */
    public float[] f3025try;

    /* renamed from: while  reason: not valid java name */
    public ScrollerCompat f3026while;

    /* renamed from: for  reason: not valid java name */
    public int f3013for = -1;

    /* renamed from: static  reason: not valid java name */
    public final Runnable f3021static = new Cif();

    /* compiled from: ViewDragHelper.java */
    /* renamed from: com.apk.me0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* compiled from: ViewDragHelper.java */
    /* renamed from: com.apk.me0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static abstract class Cfor {
        /* renamed from: do  reason: not valid java name */
        public abstract void mo1711do(View view, int i, int i2, int i3, int i4);
    }

    /* compiled from: ViewDragHelper.java */
    /* renamed from: com.apk.me0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            me0.this.m1710while(0);
        }
    }

    public me0(Context context, ViewGroup viewGroup, Cfor cfor) {
        if (cfor != null) {
            this.f3020return = viewGroup;
            this.f3016import = cfor;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f3022super = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.f3015if = viewConfiguration.getScaledTouchSlop();
            this.f3009const = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f3012final = viewConfiguration.getScaledMinimumFlingVelocity();
            this.f3026while = ScrollerCompat.create(context, f3004switch);
            return;
        }
        throw new IllegalArgumentException("Callback may not be null");
    }

    /* renamed from: break  reason: not valid java name */
    public View m1692break(int i, int i2) {
        int childCount = this.f3020return.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return null;
            }
            ViewGroup viewGroup = this.f3020return;
            if (this.f3016import != null) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                    return childAt;
                }
            } else {
                throw null;
            }
        }
    }

    /* renamed from: case  reason: not valid java name */
    public final int m1693case(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        return abs > i3 ? i > 0 ? i3 : -i3 : i;
    }

    /* renamed from: catch  reason: not valid java name */
    public final boolean m1694catch(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int left = this.f3017native.getLeft();
        int top2 = this.f3017native.getTop();
        int i5 = i - left;
        int i6 = i2 - top2;
        if (i5 == 0 && i6 == 0) {
            this.f3026while.abortAnimation();
            m1710while(0);
            return false;
        }
        int m1693case = m1693case(i3, (int) this.f3012final, (int) this.f3009const);
        int m1693case2 = m1693case(i4, (int) this.f3012final, (int) this.f3009const);
        int abs = Math.abs(i5);
        int abs2 = Math.abs(i6);
        int abs3 = Math.abs(m1693case);
        int abs4 = Math.abs(m1693case2);
        int i7 = abs3 + abs4;
        int i8 = abs + abs2;
        if (m1693case != 0) {
            f = abs3;
            f2 = i7;
        } else {
            f = abs;
            f2 = i8;
        }
        float f5 = f / f2;
        if (m1693case2 != 0) {
            f3 = abs4;
            f4 = i7;
        } else {
            f3 = abs2;
            f4 = i8;
        }
        float m1701goto = m1701goto(i6, m1693case2, SwipeBackLayout.this.f10551do & 8) * (f3 / f4);
        this.f3026while.startScroll(left, top2, i5, i6, (int) (m1701goto + (m1701goto(i5, m1693case, SwipeBackLayout.this.f10551do & 3) * f5)));
        m1710while(2);
        return true;
    }

    /* renamed from: class  reason: not valid java name */
    public boolean m1695class(int i, int i2) {
        return ((this.f3007catch & (1 << i2)) != 0) && (i & this.f3014goto[i2]) != 0;
    }

    /* renamed from: const  reason: not valid java name */
    public final void m1696const() {
        this.f3008class.computeCurrentVelocity(1000, this.f3009const);
        m1707this(m1709try(VelocityTrackerCompat.getXVelocity(this.f3008class, this.f3013for), this.f3012final, this.f3009const), m1709try(VelocityTrackerCompat.getYVelocity(this.f3008class, this.f3013for), this.f3012final, this.f3009const));
    }

    /* renamed from: do  reason: not valid java name */
    public void m1697do() {
        this.f3013for = -1;
        float[] fArr = this.f3018new;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f3025try, 0.0f);
            Arrays.fill(this.f3006case, 0.0f);
            Arrays.fill(this.f3011else, 0.0f);
            Arrays.fill(this.f3014goto, 0);
            Arrays.fill(this.f3023this, 0);
            Arrays.fill(this.f3005break, 0);
            this.f3007catch = 0;
        }
        VelocityTracker velocityTracker = this.f3008class;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f3008class = null;
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final void m1698else(int i) {
        float[] fArr = this.f3018new;
        if (fArr == null) {
            return;
        }
        fArr[i] = 0.0f;
        this.f3025try[i] = 0.0f;
        this.f3006case[i] = 0.0f;
        this.f3011else[i] = 0.0f;
        this.f3014goto[i] = 0;
        this.f3023this[i] = 0;
        this.f3005break[i] = 0;
        this.f3007catch = (~(1 << i)) & this.f3007catch;
    }

    /* renamed from: final  reason: not valid java name */
    public final void m1699final(float f, float f2, int i) {
        int i2 = m1702if(f, f2, i, 1) ? 1 : 0;
        if (m1702if(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (m1702if(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (m1702if(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.f3023this;
            iArr[i] = iArr[i] | i2;
            if (this.f3016import == null) {
                throw null;
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public boolean m1700for(int i, int i2) {
        if ((this.f3007catch & (1 << i2)) != 0) {
            boolean z = (i & 1) == 1;
            boolean z2 = (i & 2) == 2;
            float f = this.f3006case[i2] - this.f3018new[i2];
            float f2 = this.f3011else[i2] - this.f3025try[i2];
            if (!z || !z2) {
                return z ? Math.abs(f) > ((float) this.f3015if) : z2 && Math.abs(f2) > ((float) this.f3015if);
            }
            float f3 = f2 * f2;
            int i3 = this.f3015if;
            return f3 + (f * f) > ((float) (i3 * i3));
        }
        return false;
    }

    /* renamed from: goto  reason: not valid java name */
    public final int m1701goto(int i, int i2, int i3) {
        int width;
        int abs;
        if (i == 0) {
            return 0;
        }
        float width2 = this.f3020return.getWidth() / 2;
        float sin = (((float) Math.sin((float) ((Math.min(1.0f, Math.abs(i) / width) - 0.5f) * 0.4712389167638204d))) * width2) + width2;
        int abs2 = Math.abs(i2);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(sin / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f);
        }
        return Math.min(abs, 600);
    }

    /* renamed from: if  reason: not valid java name */
    public final boolean m1702if(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.f3014goto[i] & i2) != i2 || (this.f3024throw & i2) == 0 || (this.f3005break[i] & i2) == i2 || (this.f3023this[i] & i2) == i2) {
            return false;
        }
        int i3 = this.f3015if;
        if (abs > i3 || abs2 > i3) {
            if (abs >= abs2 * 0.5f || this.f3016import != null) {
                return (this.f3023this[i] & i2) == 0 && abs > ((float) this.f3015if);
            }
            throw null;
        }
        return false;
    }

    /* renamed from: import  reason: not valid java name */
    public boolean m1703import(MotionEvent motionEvent) {
        View m1692break;
        View m1692break2;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (actionMasked == 0) {
            m1697do();
        }
        if (this.f3008class == null) {
            this.f3008class = VelocityTracker.obtain();
        }
        this.f3008class.addMovement(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
                    for (int i = 0; i < pointerCount; i++) {
                        int pointerId = MotionEventCompat.getPointerId(motionEvent, i);
                        float x = MotionEventCompat.getX(motionEvent, i);
                        float y = MotionEventCompat.getY(motionEvent, i);
                        float f = x - this.f3018new[pointerId];
                        float f2 = y - this.f3025try[pointerId];
                        m1699final(f, f2, pointerId);
                        if (this.f3010do == 1 || ((m1692break = m1692break((int) x, (int) y)) != null && m1705new(m1692break, f, f2) && m1704native(m1692break, pointerId))) {
                            break;
                        }
                    }
                    m1708throw(motionEvent);
                } else if (actionMasked != 3) {
                    if (actionMasked == 5) {
                        int pointerId2 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                        float x2 = MotionEventCompat.getX(motionEvent, actionIndex);
                        float y2 = MotionEventCompat.getY(motionEvent, actionIndex);
                        m1706super(x2, y2, pointerId2);
                        int i2 = this.f3010do;
                        if (i2 == 0) {
                            if ((this.f3014goto[pointerId2] & this.f3024throw) != 0 && this.f3016import == null) {
                                throw null;
                            }
                        } else if (i2 == 2 && (m1692break2 = m1692break((int) x2, (int) y2)) == this.f3017native) {
                            m1704native(m1692break2, pointerId2);
                        }
                    } else if (actionMasked == 6) {
                        m1698else(MotionEventCompat.getPointerId(motionEvent, actionIndex));
                    }
                }
            }
            m1697do();
        } else {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            int pointerId3 = MotionEventCompat.getPointerId(motionEvent, 0);
            m1706super(x3, y3, pointerId3);
            View m1692break3 = m1692break((int) x3, (int) y3);
            if (m1692break3 == this.f3017native && this.f3010do == 2) {
                m1704native(m1692break3, pointerId3);
            }
            if ((this.f3014goto[pointerId3] & this.f3024throw) != 0 && this.f3016import == null) {
                throw null;
            }
        }
        return this.f3010do == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x009c  */
    /* renamed from: native  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean m1704native(android.view.View r10, int r11) {
        /*
            r9 = this;
            android.view.View r0 = r9.f3017native
            r1 = 1
            if (r10 != r0) goto La
            int r0 = r9.f3013for
            if (r0 != r11) goto La
            return r1
        La:
            r0 = 0
            if (r10 == 0) goto Lce
            com.apk.me0$for r2 = r9.f3016import
            me.imid.swipebacklayout.lib.SwipeBackLayout$new r2 = (me.imid.swipebacklayout.lib.SwipeBackLayout.Cnew) r2
            me.imid.swipebacklayout.lib.SwipeBackLayout r3 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            com.apk.me0 r4 = r3.f10561try
            int r3 = r3.f10551do
            boolean r3 = r4.m1695class(r3, r11)
            r4 = 8
            r5 = 2
            if (r3 == 0) goto L76
            me.imid.swipebacklayout.lib.SwipeBackLayout r6 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            com.apk.me0 r6 = r6.f10561try
            boolean r6 = r6.m1695class(r1, r11)
            if (r6 == 0) goto L2f
            me.imid.swipebacklayout.lib.SwipeBackLayout r6 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            r6.f10562while = r1
            goto L4c
        L2f:
            me.imid.swipebacklayout.lib.SwipeBackLayout r6 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            com.apk.me0 r6 = r6.f10561try
            boolean r6 = r6.m1695class(r5, r11)
            if (r6 == 0) goto L3e
            me.imid.swipebacklayout.lib.SwipeBackLayout r6 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            r6.f10562while = r5
            goto L4c
        L3e:
            me.imid.swipebacklayout.lib.SwipeBackLayout r6 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            com.apk.me0 r6 = r6.f10561try
            boolean r6 = r6.m1695class(r4, r11)
            if (r6 == 0) goto L4c
            me.imid.swipebacklayout.lib.SwipeBackLayout r6 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            r6.f10562while = r4
        L4c:
            me.imid.swipebacklayout.lib.SwipeBackLayout r6 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            java.util.List<me.imid.swipebacklayout.lib.SwipeBackLayout$if> r6 = r6.f10559this
            if (r6 == 0) goto L74
            boolean r6 = r6.isEmpty()
            if (r6 != 0) goto L74
            me.imid.swipebacklayout.lib.SwipeBackLayout r6 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            java.util.List<me.imid.swipebacklayout.lib.SwipeBackLayout$if> r6 = r6.f10559this
            java.util.Iterator r6 = r6.iterator()
        L60:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L74
            java.lang.Object r7 = r6.next()
            me.imid.swipebacklayout.lib.SwipeBackLayout$if r7 = (me.imid.swipebacklayout.lib.SwipeBackLayout.Cif) r7
            me.imid.swipebacklayout.lib.SwipeBackLayout r8 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            int r8 = r8.f10562while
            r7.mo2032new(r8)
            goto L60
        L74:
            r2.f10563do = r1
        L76:
            me.imid.swipebacklayout.lib.SwipeBackLayout r6 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            int r7 = r6.f10551do
            if (r7 == r1) goto L90
            if (r7 != r5) goto L7f
            goto L90
        L7f:
            if (r7 != r4) goto L88
            com.apk.me0 r2 = r6.f10561try
            boolean r2 = r2.m1700for(r1, r11)
            goto L98
        L88:
            r2 = 11
            if (r7 != r2) goto L8e
            r2 = 1
            goto L99
        L8e:
            r2 = 0
            goto L99
        L90:
            me.imid.swipebacklayout.lib.SwipeBackLayout r2 = me.imid.swipebacklayout.lib.SwipeBackLayout.this
            com.apk.me0 r2 = r2.f10561try
            boolean r2 = r2.m1700for(r5, r11)
        L98:
            r2 = r2 ^ r1
        L99:
            r2 = r2 & r3
            if (r2 == 0) goto Lce
            r9.f3013for = r11
            android.view.ViewParent r0 = r10.getParent()
            android.view.ViewGroup r2 = r9.f3020return
            if (r0 != r2) goto Lb4
            r9.f3017native = r10
            r9.f3013for = r11
            com.apk.me0$for r10 = r9.f3016import
            if (r10 == 0) goto Lb2
            r9.m1710while(r1)
            return r1
        Lb2:
            r10 = 0
            throw r10
        Lb4:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view ("
            java.lang.StringBuilder r11 = com.apk.Cgoto.m1016super(r11)
            android.view.ViewGroup r0 = r9.f3020return
            r11.append(r0)
            java.lang.String r0 = ")"
            r11.append(r0)
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        Lce:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.me0.m1704native(android.view.View, int):boolean");
    }

    /* renamed from: new  reason: not valid java name */
    public final boolean m1705new(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = (SwipeBackLayout.this.f10551do & 3) > 0;
        boolean z2 = (SwipeBackLayout.this.f10551do & 8) > 0;
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f3015if) : z2 && Math.abs(f2) > ((float) this.f3015if);
        }
        float f3 = f2 * f2;
        int i = this.f3015if;
        return f3 + (f * f) > ((float) (i * i));
    }

    /* renamed from: super  reason: not valid java name */
    public final void m1706super(float f, float f2, int i) {
        float[] fArr = this.f3018new;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            float[] fArr6 = this.f3018new;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.f3025try;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.f3006case;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.f3011else;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.f3014goto;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f3023this;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f3005break;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f3018new = fArr2;
            this.f3025try = fArr3;
            this.f3006case = fArr4;
            this.f3011else = fArr5;
            this.f3014goto = iArr;
            this.f3023this = iArr2;
            this.f3005break = iArr3;
        }
        float[] fArr10 = this.f3018new;
        this.f3006case[i] = f;
        fArr10[i] = f;
        float[] fArr11 = this.f3025try;
        this.f3011else[i] = f2;
        fArr11[i] = f2;
        int[] iArr7 = this.f3014goto;
        int i3 = (int) f;
        int i4 = (int) f2;
        int i5 = i3 < this.f3020return.getLeft() + this.f3022super ? 1 : 0;
        if (i4 < this.f3020return.getTop() + this.f3022super) {
            i5 = 4;
        }
        if (i3 > this.f3020return.getRight() - this.f3022super) {
            i5 = 2;
        }
        if (i4 > this.f3020return.getBottom() - this.f3022super) {
            i5 = 8;
        }
        iArr7[i] = i5;
        this.f3007catch |= 1 << i;
    }

    /* renamed from: this  reason: not valid java name */
    public final void m1707this(float f, float f2) {
        int i;
        int i2;
        this.f3019public = true;
        Cfor cfor = this.f3016import;
        View view = this.f3017native;
        SwipeBackLayout.Cnew cnew = (SwipeBackLayout.Cnew) cfor;
        if (cnew != null) {
            int width = view.getWidth();
            int height = view.getHeight();
            SwipeBackLayout swipeBackLayout = SwipeBackLayout.this;
            int i3 = swipeBackLayout.f10562while;
            if ((i3 & 1) != 0) {
                int i4 = (f > 0.0f ? 1 : (f == 0.0f ? 0 : -1));
                if (i4 > 0 || (i4 == 0 && swipeBackLayout.f10547case > swipeBackLayout.f10556if)) {
                    i2 = SwipeBackLayout.this.f10546break.getIntrinsicWidth() + width + 10;
                    i = 0;
                }
                i2 = 0;
                i = 0;
            } else {
                if ((i3 & 2) != 0) {
                    if (f < 0.0f || (f == 0.0f && swipeBackLayout.f10547case > swipeBackLayout.f10556if)) {
                        i2 = -(SwipeBackLayout.this.f10546break.getIntrinsicWidth() + width + 10);
                        i = 0;
                    }
                } else if ((i3 & 8) != 0 && (f2 < 0.0f || (f2 == 0.0f && swipeBackLayout.f10547case > swipeBackLayout.f10556if))) {
                    i = -(SwipeBackLayout.this.f10549class.getIntrinsicHeight() + height + 10);
                    i2 = 0;
                }
                i2 = 0;
                i = 0;
            }
            me0 me0Var = SwipeBackLayout.this.f10561try;
            if (me0Var.f3019public) {
                me0Var.m1694catch(i2, i, (int) VelocityTrackerCompat.getXVelocity(me0Var.f3008class, me0Var.f3013for), (int) VelocityTrackerCompat.getYVelocity(me0Var.f3008class, me0Var.f3013for));
                SwipeBackLayout.this.invalidate();
                this.f3019public = false;
                if (this.f3010do == 1) {
                    m1710while(0);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        throw null;
    }

    /* renamed from: throw  reason: not valid java name */
    public final void m1708throw(MotionEvent motionEvent) {
        int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = MotionEventCompat.getPointerId(motionEvent, i);
            float x = MotionEventCompat.getX(motionEvent, i);
            float y = MotionEventCompat.getY(motionEvent, i);
            this.f3006case[pointerId] = x;
            this.f3011else[pointerId] = y;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final float m1709try(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return 0.0f;
        }
        return abs > f3 ? f > 0.0f ? f3 : -f3 : f;
    }

    /* renamed from: while  reason: not valid java name */
    public void m1710while(int i) {
        if (this.f3010do != i) {
            this.f3010do = i;
            SwipeBackLayout.Cnew cnew = (SwipeBackLayout.Cnew) this.f3016import;
            List<SwipeBackLayout.Cif> list = SwipeBackLayout.this.f10559this;
            if (list != null && !list.isEmpty()) {
                for (SwipeBackLayout.Cif cif : SwipeBackLayout.this.f10559this) {
                    cif.mo2029do(i, SwipeBackLayout.this.f10547case);
                }
            }
            if (i == 0) {
                this.f3017native = null;
            }
        }
    }
}
