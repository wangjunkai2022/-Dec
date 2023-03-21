package me.imid.swipebacklayout.lib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import com.apk.me0;
import com.biquge.ebook.app.R$styleable;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes7.dex */
public class SwipeBackLayout extends FrameLayout {

    /* renamed from: import  reason: not valid java name */
    public static final int[] f10545import = {1, 2, 8, 11};

    /* renamed from: break  reason: not valid java name */
    public Drawable f10546break;

    /* renamed from: case  reason: not valid java name */
    public float f10547case;

    /* renamed from: catch  reason: not valid java name */
    public Drawable f10548catch;

    /* renamed from: class  reason: not valid java name */
    public Drawable f10549class;

    /* renamed from: const  reason: not valid java name */
    public float f10550const;

    /* renamed from: do  reason: not valid java name */
    public int f10551do;

    /* renamed from: else  reason: not valid java name */
    public int f10552else;

    /* renamed from: final  reason: not valid java name */
    public int f10553final;

    /* renamed from: for  reason: not valid java name */
    public boolean f10554for;

    /* renamed from: goto  reason: not valid java name */
    public int f10555goto;

    /* renamed from: if  reason: not valid java name */
    public float f10556if;

    /* renamed from: new  reason: not valid java name */
    public View f10557new;

    /* renamed from: super  reason: not valid java name */
    public boolean f10558super;

    /* renamed from: this  reason: not valid java name */
    public List<Cif> f10559this;

    /* renamed from: throw  reason: not valid java name */
    public Rect f10560throw;

    /* renamed from: try  reason: not valid java name */
    public me0 f10561try;

    /* renamed from: while  reason: not valid java name */
    public int f10562while;

    /* renamed from: me.imid.swipebacklayout.lib.SwipeBackLayout$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cfor extends Cif {
        /* renamed from: if */
        void mo2031if();
    }

    /* renamed from: me.imid.swipebacklayout.lib.SwipeBackLayout$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cif {
        /* renamed from: do */
        void mo2029do(int i, float f);

        /* renamed from: for */
        void mo2030for();

        /* renamed from: new */
        void mo2032new(int i);
    }

    /* renamed from: me.imid.swipebacklayout.lib.SwipeBackLayout$new  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cnew extends me0.Cfor {

        /* renamed from: do  reason: not valid java name */
        public boolean f10563do;

        public Cnew(Cdo cdo) {
        }

        @Override // com.apk.me0.Cfor
        /* renamed from: do */
        public void mo1711do(View view, int i, int i2, int i3, int i4) {
            List<Cif> list;
            SwipeBackLayout swipeBackLayout = SwipeBackLayout.this;
            int i5 = swipeBackLayout.f10562while;
            if ((i5 & 1) != 0) {
                swipeBackLayout.f10547case = Math.abs(i / (SwipeBackLayout.this.f10546break.getIntrinsicWidth() + swipeBackLayout.f10557new.getWidth()));
            } else if ((i5 & 2) != 0) {
                swipeBackLayout.f10547case = Math.abs(i / (SwipeBackLayout.this.f10548catch.getIntrinsicWidth() + swipeBackLayout.f10557new.getWidth()));
            } else if ((i5 & 8) != 0) {
                swipeBackLayout.f10547case = Math.abs(i2 / (SwipeBackLayout.this.f10549class.getIntrinsicHeight() + swipeBackLayout.f10557new.getHeight()));
            }
            SwipeBackLayout swipeBackLayout2 = SwipeBackLayout.this;
            swipeBackLayout2.f10552else = i;
            swipeBackLayout2.f10555goto = i2;
            swipeBackLayout2.invalidate();
            SwipeBackLayout swipeBackLayout3 = SwipeBackLayout.this;
            if (swipeBackLayout3.f10547case < swipeBackLayout3.f10556if && !this.f10563do) {
                this.f10563do = true;
            }
            List<Cif> list2 = SwipeBackLayout.this.f10559this;
            if (list2 != null && !list2.isEmpty()) {
                for (Cif cif : SwipeBackLayout.this.f10559this) {
                    SwipeBackLayout swipeBackLayout4 = SwipeBackLayout.this;
                    cif.mo2029do(swipeBackLayout4.f10561try.f3010do, swipeBackLayout4.f10547case);
                }
            }
            List<Cif> list3 = SwipeBackLayout.this.f10559this;
            if (list3 != null && !list3.isEmpty()) {
                SwipeBackLayout swipeBackLayout5 = SwipeBackLayout.this;
                if (swipeBackLayout5.f10561try.f3010do == 1 && swipeBackLayout5.f10547case >= swipeBackLayout5.f10556if && this.f10563do) {
                    this.f10563do = false;
                    for (Cif cif2 : swipeBackLayout5.f10559this) {
                        cif2.mo2030for();
                    }
                }
            }
            SwipeBackLayout swipeBackLayout6 = SwipeBackLayout.this;
            if (swipeBackLayout6.f10547case < 1.0f || (list = swipeBackLayout6.f10559this) == null || list.isEmpty()) {
                return;
            }
            for (Cif cif3 : SwipeBackLayout.this.f10559this) {
                if (cif3 instanceof Cfor) {
                    ((Cfor) cif3).mo2031if();
                }
            }
        }
    }

    public SwipeBackLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10556if = 0.3f;
        this.f10554for = true;
        this.f10553final = DrawerLayout.DEFAULT_SCRIM_COLOR;
        this.f10560throw = new Rect();
        this.f10561try = new me0(getContext(), this, new Cnew(null));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SwipeBackLayout, R.attr.f12348a, R.style.h5);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, -1);
        if (dimensionPixelSize > 0) {
            setEdgeSize(dimensionPixelSize);
        }
        setEdgeTrackingEnabled(f10545import[obtainStyledAttributes.getInt(0, 0)]);
        int resourceId = obtainStyledAttributes.getResourceId(3, R.drawable.shadow_left);
        int resourceId2 = obtainStyledAttributes.getResourceId(4, R.drawable.shadow_right);
        int resourceId3 = obtainStyledAttributes.getResourceId(2, R.drawable.shadow_bottom);
        m3729do(resourceId, 1);
        m3729do(resourceId2, 2);
        m3729do(resourceId3, 8);
        obtainStyledAttributes.recycle();
        float f = getResources().getDisplayMetrics().density * 400.0f;
        me0 me0Var = this.f10561try;
        me0Var.f3012final = f;
        me0Var.f3009const = f * 2.0f;
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f10550const = 1.0f - this.f10547case;
        me0 me0Var = this.f10561try;
        if (me0Var.f3010do == 2) {
            boolean computeScrollOffset = me0Var.f3026while.computeScrollOffset();
            int currX = me0Var.f3026while.getCurrX();
            int currY = me0Var.f3026while.getCurrY();
            int left = currX - me0Var.f3017native.getLeft();
            int top2 = currY - me0Var.f3017native.getTop();
            if (left != 0) {
                me0Var.f3017native.offsetLeftAndRight(left);
            }
            if (top2 != 0) {
                me0Var.f3017native.offsetTopAndBottom(top2);
            }
            if (left != 0 || top2 != 0) {
                me0Var.f3016import.mo1711do(me0Var.f3017native, currX, currY, left, top2);
            }
            if (computeScrollOffset && currX == me0Var.f3026while.getFinalX() && currY == me0Var.f3026while.getFinalY()) {
                me0Var.f3026while.abortAnimation();
                computeScrollOffset = me0Var.f3026while.isFinished();
            }
            if (!computeScrollOffset) {
                me0Var.f3020return.post(me0Var.f3021static);
            }
        }
        if (me0Var.f3010do == 2) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m3729do(int i, int i2) {
        Drawable drawable = getResources().getDrawable(i);
        if ((i2 & 1) != 0) {
            this.f10546break = drawable;
        } else if ((i2 & 2) != 0) {
            this.f10548catch = drawable;
        } else if ((i2 & 8) != 0) {
            this.f10549class = drawable;
        }
        invalidate();
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        boolean z = view == this.f10557new;
        boolean drawChild = super.drawChild(canvas, view, j);
        if (this.f10550const > 0.0f && z && this.f10561try.f3010do != 0) {
            Rect rect = this.f10560throw;
            view.getHitRect(rect);
            if ((this.f10551do & 1) != 0) {
                Drawable drawable = this.f10546break;
                drawable.setBounds(rect.left - drawable.getIntrinsicWidth(), rect.top, rect.left, rect.bottom);
                this.f10546break.setAlpha((int) (this.f10550const * 255.0f));
                this.f10546break.draw(canvas);
            }
            if ((this.f10551do & 2) != 0) {
                Drawable drawable2 = this.f10548catch;
                int i = rect.right;
                drawable2.setBounds(i, rect.top, drawable2.getIntrinsicWidth() + i, rect.bottom);
                this.f10548catch.setAlpha((int) (this.f10550const * 255.0f));
                this.f10548catch.draw(canvas);
            }
            if ((this.f10551do & 8) != 0) {
                Drawable drawable3 = this.f10549class;
                int i2 = rect.left;
                int i3 = rect.bottom;
                drawable3.setBounds(i2, i3, rect.right, drawable3.getIntrinsicHeight() + i3);
                this.f10549class.setAlpha((int) (this.f10550const * 255.0f));
                this.f10549class.draw(canvas);
            }
            int i4 = this.f10553final;
            int i5 = (i4 & 16777215) | (((int) ((((-16777216) & i4) >>> 24) * this.f10550const)) << 24);
            int i6 = this.f10562while;
            if ((i6 & 1) != 0) {
                canvas.clipRect(0, 0, view.getLeft(), getHeight());
            } else if ((i6 & 2) != 0) {
                canvas.clipRect(view.getRight(), 0, getRight(), getHeight());
            } else if ((i6 & 8) != 0) {
                canvas.clipRect(view.getLeft(), view.getBottom(), getRight(), getHeight());
            }
            canvas.drawColor(i5);
        }
        return drawChild;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f10554for) {
            try {
                return this.f10561try.m1703import(motionEvent);
            } catch (ArrayIndexOutOfBoundsException unused) {
                return false;
            }
        }
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f10558super = true;
        View view = this.f10557new;
        if (view != null) {
            int i5 = this.f10552else;
            view.layout(i5, this.f10555goto, view.getMeasuredWidth() + i5, this.f10557new.getMeasuredHeight() + this.f10555goto);
        }
        this.f10558super = false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        int i2;
        if (this.f10554for) {
            me0 me0Var = this.f10561try;
            if (me0Var != null) {
                int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
                int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                if (actionMasked == 0) {
                    me0Var.m1697do();
                }
                if (me0Var.f3008class == null) {
                    me0Var.f3008class = VelocityTracker.obtain();
                }
                me0Var.f3008class.addMovement(motionEvent);
                if (actionMasked == 0) {
                    float x = motionEvent.getX();
                    float y = motionEvent.getY();
                    int pointerId = MotionEventCompat.getPointerId(motionEvent, 0);
                    View m1692break = me0Var.m1692break((int) x, (int) y);
                    me0Var.m1706super(x, y, pointerId);
                    me0Var.m1704native(m1692break, pointerId);
                    if ((me0Var.f3014goto[pointerId] & me0Var.f3024throw) != 0 && me0Var.f3016import == null) {
                        throw null;
                    }
                } else if (actionMasked == 1) {
                    if (me0Var.f3010do == 1) {
                        me0Var.m1696const();
                    }
                    me0Var.m1697do();
                } else if (actionMasked != 2) {
                    if (actionMasked == 3) {
                        if (me0Var.f3010do == 1) {
                            me0Var.m1707this(0.0f, 0.0f);
                        }
                        me0Var.m1697do();
                    } else if (actionMasked == 5) {
                        int pointerId2 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                        float x2 = MotionEventCompat.getX(motionEvent, actionIndex);
                        float y2 = MotionEventCompat.getY(motionEvent, actionIndex);
                        me0Var.m1706super(x2, y2, pointerId2);
                        if (me0Var.f3010do == 0) {
                            me0Var.m1704native(me0Var.m1692break((int) x2, (int) y2), pointerId2);
                            if ((me0Var.f3014goto[pointerId2] & me0Var.f3024throw) != 0 && me0Var.f3016import == null) {
                                throw null;
                            }
                        } else {
                            int i3 = (int) x2;
                            int i4 = (int) y2;
                            View view = me0Var.f3017native;
                            if (view != null && i3 >= view.getLeft() && i3 < view.getRight() && i4 >= view.getTop() && i4 < view.getBottom()) {
                                r3 = 1;
                            }
                            if (r3 != 0) {
                                me0Var.m1704native(me0Var.f3017native, pointerId2);
                            }
                        }
                    } else if (actionMasked == 6) {
                        int pointerId3 = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                        if (me0Var.f3010do == 1 && pointerId3 == me0Var.f3013for) {
                            int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
                            while (true) {
                                if (r3 >= pointerCount) {
                                    i2 = -1;
                                    break;
                                }
                                int pointerId4 = MotionEventCompat.getPointerId(motionEvent, r3);
                                if (pointerId4 != me0Var.f3013for) {
                                    View m1692break2 = me0Var.m1692break((int) MotionEventCompat.getX(motionEvent, r3), (int) MotionEventCompat.getY(motionEvent, r3));
                                    View view2 = me0Var.f3017native;
                                    if (m1692break2 == view2 && me0Var.m1704native(view2, pointerId4)) {
                                        i2 = me0Var.f3013for;
                                        break;
                                    }
                                }
                                r3++;
                            }
                            if (i2 == -1) {
                                me0Var.m1696const();
                            }
                        }
                        me0Var.m1698else(pointerId3);
                    }
                } else if (me0Var.f3010do == 1) {
                    int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, me0Var.f3013for);
                    float x3 = MotionEventCompat.getX(motionEvent, findPointerIndex);
                    float y3 = MotionEventCompat.getY(motionEvent, findPointerIndex);
                    float[] fArr = me0Var.f3006case;
                    int i5 = me0Var.f3013for;
                    int i6 = (int) (x3 - fArr[i5]);
                    int i7 = (int) (y3 - me0Var.f3011else[i5]);
                    int left = me0Var.f3017native.getLeft() + i6;
                    int top2 = me0Var.f3017native.getTop() + i7;
                    int left2 = me0Var.f3017native.getLeft();
                    int top3 = me0Var.f3017native.getTop();
                    if (i6 != 0) {
                        me0.Cfor cfor = me0Var.f3016import;
                        View view3 = me0Var.f3017native;
                        int i8 = SwipeBackLayout.this.f10562while;
                        if ((i8 & 1) != 0) {
                            left = Math.min(view3.getWidth(), Math.max(left, 0));
                        } else {
                            left = (2 & i8) != 0 ? Math.min(0, Math.max(left, -view3.getWidth())) : 0;
                        }
                        me0Var.f3017native.offsetLeftAndRight(left - left2);
                    }
                    int i9 = left;
                    if (i7 != 0) {
                        r3 = (SwipeBackLayout.this.f10562while & 8) != 0 ? Math.min(0, Math.max(top2, -me0Var.f3017native.getHeight())) : 0;
                        me0Var.f3017native.offsetTopAndBottom(r3 - top3);
                        i = r3;
                    } else {
                        i = top2;
                    }
                    if (i6 != 0 || i7 != 0) {
                        me0Var.f3016import.mo1711do(me0Var.f3017native, i9, i, i9 - left2, i - top3);
                    }
                    me0Var.m1708throw(motionEvent);
                } else {
                    int pointerCount2 = MotionEventCompat.getPointerCount(motionEvent);
                    while (r3 < pointerCount2) {
                        int pointerId5 = MotionEventCompat.getPointerId(motionEvent, r3);
                        float x4 = MotionEventCompat.getX(motionEvent, r3);
                        float y4 = MotionEventCompat.getY(motionEvent, r3);
                        float f = x4 - me0Var.f3018new[pointerId5];
                        float f2 = y4 - me0Var.f3025try[pointerId5];
                        me0Var.m1699final(f, f2, pointerId5);
                        if (me0Var.f3010do != 1) {
                            View m1692break3 = me0Var.m1692break((int) x4, (int) y4);
                            if (me0Var.m1705new(m1692break3, f, f2) && me0Var.m1704native(m1692break3, pointerId5)) {
                                break;
                            }
                            r3++;
                        } else {
                            break;
                        }
                    }
                    me0Var.m1708throw(motionEvent);
                }
                return true;
            }
            throw null;
        }
        return false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f10558super) {
            return;
        }
        super.requestLayout();
    }

    public void setContentView(View view) {
        this.f10557new = view;
    }

    public void setEdgeSize(int i) {
        this.f10561try.f3022super = i;
    }

    public void setEdgeTrackingEnabled(int i) {
        this.f10551do = i;
        this.f10561try.f3024throw = i;
    }

    public void setEnableGesture(boolean z) {
        this.f10554for = z;
    }

    public void setScrimColor(int i) {
        this.f10553final = i;
        invalidate();
    }

    public void setScrollThresHold(float f) {
        if (f < 1.0f && f > 0.0f) {
            this.f10556if = f;
            return;
        }
        throw new IllegalArgumentException("Threshold value should be between 0 and 1.0");
    }

    @Deprecated
    public void setSwipeListener(Cif cif) {
        if (this.f10559this == null) {
            this.f10559this = new ArrayList();
        }
        this.f10559this.add(cif);
    }
}
