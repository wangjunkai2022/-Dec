package com.apk;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;
import android.widget.TextView;
import com.biquge.ebook.app.R$styleable;
/* compiled from: PtrFrameLayout.java */
/* loaded from: classes8.dex */
public class ss extends ViewGroup {

    /* renamed from: extends  reason: not valid java name */
    public static boolean f4542extends = false;

    /* renamed from: finally  reason: not valid java name */
    public static int f4543finally = 1;

    /* renamed from: break  reason: not valid java name */
    public View f4544break;

    /* renamed from: case  reason: not valid java name */
    public int f4545case;

    /* renamed from: catch  reason: not valid java name */
    public vs f4546catch;

    /* renamed from: class  reason: not valid java name */
    public ts f4547class;

    /* renamed from: const  reason: not valid java name */
    public Cfor f4548const;

    /* renamed from: default  reason: not valid java name */
    public Runnable f4549default;

    /* renamed from: do  reason: not valid java name */
    public byte f4550do;

    /* renamed from: else  reason: not valid java name */
    public int f4551else;

    /* renamed from: final  reason: not valid java name */
    public int f4552final;

    /* renamed from: for  reason: not valid java name */
    public View f4553for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f4554goto;

    /* renamed from: if  reason: not valid java name */
    public final String f4555if;

    /* renamed from: import  reason: not valid java name */
    public boolean f4556import;

    /* renamed from: native  reason: not valid java name */
    public MotionEvent f4557native;

    /* renamed from: new  reason: not valid java name */
    public int f4558new;

    /* renamed from: public  reason: not valid java name */
    public ws f4559public;

    /* renamed from: return  reason: not valid java name */
    public int f4560return;

    /* renamed from: static  reason: not valid java name */
    public long f4561static;

    /* renamed from: super  reason: not valid java name */
    public int f4562super;

    /* renamed from: switch  reason: not valid java name */
    public xs f4563switch;

    /* renamed from: this  reason: not valid java name */
    public boolean f4564this;

    /* renamed from: throw  reason: not valid java name */
    public boolean f4565throw;

    /* renamed from: throws  reason: not valid java name */
    public boolean f4566throws;

    /* renamed from: try  reason: not valid java name */
    public int f4567try;

    /* renamed from: while  reason: not valid java name */
    public int f4568while;

    /* compiled from: PtrFrameLayout.java */
    /* renamed from: com.apk.ss$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ss.this.m2543this();
        }
    }

    /* compiled from: PtrFrameLayout.java */
    /* renamed from: com.apk.ss$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public int f4571do;

        /* renamed from: for  reason: not valid java name */
        public boolean f4572for = false;

        /* renamed from: if  reason: not valid java name */
        public Scroller f4573if;

        /* renamed from: new  reason: not valid java name */
        public int f4574new;

        /* renamed from: try  reason: not valid java name */
        public int f4575try;

        public Cfor() {
            this.f4573if = new Scroller(ss.this.getContext());
        }

        /* renamed from: do  reason: not valid java name */
        public final void m2545do() {
            this.f4572for = false;
            this.f4571do = 0;
            ss.this.removeCallbacks(this);
        }

        /* renamed from: if  reason: not valid java name */
        public void m2546if(int i, int i2) {
            if (ss.this.f4563switch.f5800try == i) {
                return;
            }
            ss ssVar = ss.this;
            int i3 = ssVar.f4563switch.f5800try;
            this.f4574new = i3;
            this.f4575try = i;
            int i4 = i - i3;
            boolean z = ss.f4542extends;
            ssVar.removeCallbacks(this);
            this.f4571do = 0;
            if (!this.f4573if.isFinished()) {
                this.f4573if.forceFinished(true);
            }
            this.f4573if.startScroll(0, 0, 0, i4, i2);
            ss.this.post(this);
            this.f4572for = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z = !this.f4573if.computeScrollOffset() || this.f4573if.isFinished();
            int currY = this.f4573if.getCurrY();
            int i = currY - this.f4571do;
            boolean z2 = ss.f4542extends;
            if (!z) {
                this.f4571do = currY;
                ss.this.m2542new(i);
                ss.this.post(this);
                return;
            }
            m2545do();
            ss ssVar = ss.this;
            if (ssVar.f4563switch.m3049if() && ssVar.m2539for()) {
                ssVar.m2537else(true);
            }
        }
    }

    /* compiled from: PtrFrameLayout.java */
    /* renamed from: com.apk.ss$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends ViewGroup.MarginLayoutParams {
        public Cif(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public Cif(int i, int i2) {
            super(i, i2);
        }

        public Cif(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ss(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: break  reason: not valid java name */
    public final void m2532break() {
        int currentTimeMillis = (int) (this.f4560return - (System.currentTimeMillis() - this.f4561static));
        if (currentTimeMillis <= 0) {
            m2543this();
        } else {
            postDelayed(this.f4549default, currentTimeMillis);
        }
    }

    /* renamed from: case  reason: not valid java name */
    public void m2533case() {
    }

    /* renamed from: catch  reason: not valid java name */
    public final void m2534catch() {
        MotionEvent motionEvent = this.f4557native;
        if (motionEvent == null) {
            return;
        }
        super.dispatchTouchEvent(MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime() + ViewConfiguration.getLongPressTimeout(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState()));
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof Cif);
    }

    /* renamed from: class  reason: not valid java name */
    public final void m2535class() {
        if (this.f4563switch.f5790catch) {
            return;
        }
        this.f4548const.m2546if(0, this.f4551else);
    }

    /* renamed from: const  reason: not valid java name */
    public final boolean m2536const() {
        byte b = this.f4550do;
        if ((b == 4 || b == 2) && this.f4563switch.m3048for()) {
            if (this.f4546catch.m2835case()) {
                vs vsVar = this.f4546catch;
                if (vsVar == null) {
                    throw null;
                }
                do {
                    us usVar = vsVar.f5200do;
                    if (usVar != null) {
                        usVar.mo2352do(this);
                    }
                    vsVar = vsVar.f5201if;
                } while (vsVar != null);
                this.f4550do = (byte) 1;
                this.f4568while &= -4;
                return true;
            }
            this.f4550do = (byte) 1;
            this.f4568while &= -4;
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001e, code lost:
        if (r0 != 3) goto L14;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ss.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: else  reason: not valid java name */
    public final void m2537else(boolean z) {
        m2538final();
        byte b = this.f4550do;
        if (b != 3) {
            if (b == 4) {
                m2544try(false);
            } else {
                m2535class();
            }
        } else if (this.f4554goto) {
            xs xsVar = this.f4563switch;
            if (!(xsVar.f5800try > xsVar.m3047do()) || z) {
                return;
            }
            this.f4548const.m2546if(this.f4563switch.m3047do(), this.f4545case);
        } else {
            m2535class();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0027, code lost:
        if ((r0.f5800try >= r0.f5793do) != false) goto L11;
     */
    /* renamed from: final  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2538final() {
        /*
            r4 = this;
            byte r0 = r4.f4550do
            r1 = 0
            r2 = 2
            if (r0 == r2) goto L7
            return r1
        L7:
            com.apk.xs r0 = r4.f4563switch
            int r2 = r0.f5800try
            int r0 = r0.m3047do()
            r3 = 1
            if (r2 <= r0) goto L14
            r0 = 1
            goto L15
        L14:
            r0 = 0
        L15:
            if (r0 == 0) goto L1d
            boolean r0 = r4.m2539for()
            if (r0 != 0) goto L29
        L1d:
            com.apk.xs r0 = r4.f4563switch
            int r2 = r0.f5800try
            int r0 = r0.f5793do
            if (r2 < r0) goto L26
            goto L27
        L26:
            r3 = 0
        L27:
            if (r3 == 0) goto L2f
        L29:
            r0 = 3
            r4.f4550do = r0
            r4.m2540goto()
        L2f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ss.m2538final():boolean");
    }

    /* renamed from: for  reason: not valid java name */
    public boolean m2539for() {
        return (this.f4568while & 3) > 0;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new Cif(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new Cif(layoutParams);
    }

    public View getContentView() {
        return this.f4553for;
    }

    public float getDurationToClose() {
        return this.f4545case;
    }

    public long getDurationToCloseHeader() {
        return this.f4551else;
    }

    public int getHeaderHeight() {
        return this.f4562super;
    }

    public View getHeaderView() {
        return this.f4544break;
    }

    public int getOffsetToKeepHeaderWhileLoading() {
        return this.f4563switch.m3047do();
    }

    public int getOffsetToRefresh() {
        return this.f4563switch.f5793do;
    }

    public float getRatioOfHeaderToHeightRefresh() {
        return this.f4563switch.f5799this;
    }

    public float getResistance() {
        return this.f4563switch.f5788break;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* renamed from: goto  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2540goto() {
        /*
            r2 = this;
            long r0 = java.lang.System.currentTimeMillis()
            r2.f4561static = r0
            com.apk.vs r0 = r2.f4546catch
            boolean r0 = r0.m2835case()
            if (r0 == 0) goto L20
            com.apk.vs r0 = r2.f4546catch
            if (r0 == 0) goto L1e
        L12:
            com.apk.us r1 = r0.f5200do
            if (r1 == 0) goto L19
            r1.mo2356try(r2)
        L19:
            com.apk.vs r0 = r0.f5201if
            if (r0 != 0) goto L12
            goto L20
        L1e:
            r0 = 0
            throw r0
        L20:
            com.apk.ts r0 = r2.f4547class
            if (r0 == 0) goto L27
            r0.mo41do(r2)
        L27:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ss.m2540goto():void");
    }

    /* renamed from: if  reason: not valid java name */
    public void m2541if() {
        int i = this.f4551else;
        if (this.f4550do != 1) {
            return;
        }
        this.f4568while |= 1;
        this.f4550do = (byte) 2;
        if (this.f4546catch.m2835case()) {
            this.f4546catch.mo2353for(this);
        }
        this.f4548const.m2546if(this.f4563switch.f5793do, i);
        this.f4550do = (byte) 3;
        m2540goto();
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0073, code lost:
        if (((r14.f4568while & 4) > 0) != false) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0112  */
    /* renamed from: new  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2542new(float r15) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ss.m2542new(float):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Cfor cfor = this.f4548const;
        if (cfor != null) {
            cfor.m2545do();
            if (!cfor.f4573if.isFinished()) {
                cfor.f4573if.forceFinished(true);
            }
        }
        Runnable runnable = this.f4549default;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        int childCount = getChildCount();
        if (childCount >= 2) {
            int i = this.f4558new;
            if (i != 0 && this.f4544break == null) {
                this.f4544break = findViewById(i);
            }
            int i2 = this.f4567try;
            if (i2 != 0 && this.f4553for == null) {
                this.f4553for = findViewById(i2);
            }
            if (this.f4553for == null || this.f4544break == null) {
                View childAt = getChildAt(0);
                View childAt2 = getChildAt(1);
                if (childAt instanceof us) {
                    this.f4544break = childAt;
                    this.f4553for = childAt2;
                } else if (childAt2 instanceof us) {
                    this.f4544break = childAt2;
                    this.f4553for = childAt;
                } else if (this.f4553for == null && this.f4544break == null) {
                    this.f4544break = childAt;
                    this.f4553for = childAt2;
                } else {
                    View view = this.f4544break;
                    if (view == null) {
                        if (this.f4553for == childAt) {
                            childAt = childAt2;
                        }
                        this.f4544break = childAt;
                    } else {
                        if (view == childAt) {
                            childAt = childAt2;
                        }
                        this.f4553for = childAt;
                    }
                }
            }
        } else if (childCount == 1) {
            this.f4553for = getChildAt(0);
        } else {
            TextView textView = new TextView(getContext());
            textView.setClickable(true);
            textView.setTextColor(-39424);
            textView.setGravity(17);
            textView.setTextSize(20.0f);
            textView.setText("The content view in PtrFrameLayout is empty. Do you forget to specify its id in xml layout file?");
            this.f4553for = textView;
            addView(textView);
        }
        View view2 = this.f4544break;
        if (view2 != null) {
            view2.bringToFront();
        }
        super.onFinishInflate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = this.f4563switch.f5800try;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        View view = this.f4544break;
        if (view != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            int i6 = marginLayoutParams.leftMargin + paddingLeft;
            int i7 = -(((this.f4562super - paddingTop) - marginLayoutParams.topMargin) - i5);
            this.f4544break.layout(i6, i7, this.f4544break.getMeasuredWidth() + i6, this.f4544break.getMeasuredHeight() + i7);
        }
        if (this.f4553for != null) {
            if ((this.f4568while & 8) > 0) {
                i5 = 0;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) this.f4553for.getLayoutParams();
            int i8 = paddingLeft + marginLayoutParams2.leftMargin;
            int i9 = paddingTop + marginLayoutParams2.topMargin + i5;
            this.f4553for.layout(i8, i9, this.f4553for.getMeasuredWidth() + i8, this.f4553for.getMeasuredHeight() + i9);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        View view = this.f4544break;
        if (view != null) {
            measureChildWithMargins(view, i, 0, i2, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f4544break.getLayoutParams();
            int measuredHeight = this.f4544break.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            this.f4562super = measuredHeight;
            xs xsVar = this.f4563switch;
            xsVar.f5794else = measuredHeight;
            xsVar.f5793do = (int) (xsVar.f5799this * measuredHeight);
        }
        View view2 = this.f4553for;
        if (view2 != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
            view2.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin, marginLayoutParams2.width), ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop() + marginLayoutParams2.topMargin, marginLayoutParams2.height));
        }
    }

    public void setDurationToClose(int i) {
        this.f4545case = i;
    }

    public void setDurationToCloseHeader(int i) {
        this.f4551else = i;
    }

    public void setEnabledNextPtrAtOnce(boolean z) {
        if (z) {
            this.f4568while |= 4;
        } else {
            this.f4568while &= -5;
        }
    }

    public void setHeaderView(View view) {
        View view2 = this.f4544break;
        if (view2 != null && view != null && view2 != view) {
            removeView(view2);
        }
        if (view.getLayoutParams() == null) {
            view.setLayoutParams(new Cif(-1, -2));
        }
        this.f4544break = view;
        addView(view);
    }

    @Deprecated
    public void setInterceptEventWhileWorking(boolean z) {
    }

    public void setKeepHeaderWhenRefresh(boolean z) {
        this.f4554goto = z;
    }

    public void setLoadingMinTime(int i) {
        this.f4560return = i;
    }

    public void setOffsetToKeepHeaderWhileLoading(int i) {
        this.f4563switch.f5791class = i;
    }

    public void setOffsetToRefresh(int i) {
        xs xsVar = this.f4563switch;
        xsVar.f5799this = xsVar.f5794else / i;
        xsVar.f5793do = i;
    }

    public void setPinContent(boolean z) {
        if (z) {
            this.f4568while |= 8;
        } else {
            this.f4568while &= -9;
        }
    }

    public void setPtrHandler(ts tsVar) {
        this.f4547class = tsVar;
    }

    public void setPtrIndicator(xs xsVar) {
        xs xsVar2 = this.f4563switch;
        if (xsVar2 != null && xsVar2 != xsVar) {
            if (xsVar != null) {
                xsVar.f5800try = xsVar2.f5800try;
                xsVar.f5789case = xsVar2.f5789case;
                xsVar.f5794else = xsVar2.f5794else;
            } else {
                throw null;
            }
        }
        this.f4563switch = xsVar;
    }

    public void setPullToRefresh(boolean z) {
        this.f4564this = z;
    }

    public void setRatioOfHeaderHeightToRefresh(float f) {
        xs xsVar = this.f4563switch;
        xsVar.f5799this = f;
        xsVar.f5793do = (int) (xsVar.f5794else * f);
    }

    public void setRefreshCompleteHook(ws wsVar) {
        this.f4559public = wsVar;
        throw null;
    }

    public void setResistance(float f) {
        this.f4563switch.f5788break = f;
    }

    /* renamed from: this  reason: not valid java name */
    public final void m2543this() {
        this.f4550do = (byte) 4;
        if (this.f4548const.f4572for && m2539for()) {
            return;
        }
        m2544try(false);
    }

    /* renamed from: try  reason: not valid java name */
    public final void m2544try(boolean z) {
        this.f4563switch.m3049if();
        if (this.f4546catch.m2835case()) {
            vs vsVar = this.f4546catch;
            if (vsVar == null) {
                throw null;
            }
            do {
                us usVar = vsVar.f5200do;
                if (usVar != null) {
                    usVar.mo2355new(this);
                }
                vsVar = vsVar.f5201if;
            } while (vsVar != null);
            xs xsVar = this.f4563switch;
            xsVar.f5792const = xsVar.f5800try;
            m2535class();
            m2536const();
        }
        xs xsVar2 = this.f4563switch;
        xsVar2.f5792const = xsVar2.f5800try;
        m2535class();
        m2536const();
    }

    public ss(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4550do = (byte) 1;
        StringBuilder m1016super = Cgoto.m1016super("ptr-frame-");
        int i2 = f4543finally + 1;
        f4543finally = i2;
        m1016super.append(i2);
        this.f4555if = m1016super.toString();
        this.f4558new = 0;
        this.f4567try = 0;
        this.f4545case = 200;
        this.f4551else = 1000;
        this.f4554goto = true;
        this.f4564this = false;
        this.f4546catch = new vs();
        this.f4565throw = false;
        this.f4568while = 0;
        this.f4556import = false;
        this.f4560return = 500;
        this.f4561static = 0L;
        this.f4566throws = false;
        this.f4549default = new Cdo();
        this.f4563switch = new xs();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PtrFrameLayout, 0, 0);
        if (obtainStyledAttributes != null) {
            this.f4558new = obtainStyledAttributes.getResourceId(3, this.f4558new);
            this.f4567try = obtainStyledAttributes.getResourceId(0, this.f4567try);
            xs xsVar = this.f4563switch;
            xsVar.f5788break = obtainStyledAttributes.getFloat(7, xsVar.f5788break);
            this.f4545case = obtainStyledAttributes.getInt(1, this.f4545case);
            this.f4551else = obtainStyledAttributes.getInt(2, this.f4551else);
            float f = obtainStyledAttributes.getFloat(6, this.f4563switch.f5799this);
            xs xsVar2 = this.f4563switch;
            xsVar2.f5799this = f;
            xsVar2.f5793do = (int) (xsVar2.f5794else * f);
            this.f4554goto = obtainStyledAttributes.getBoolean(4, this.f4554goto);
            this.f4564this = obtainStyledAttributes.getBoolean(5, this.f4564this);
            obtainStyledAttributes.recycle();
        }
        this.f4548const = new Cfor();
        this.f4552final = ViewConfiguration.get(getContext()).getScaledTouchSlop() / 2;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new Cif(getContext(), attributeSet);
    }
}
