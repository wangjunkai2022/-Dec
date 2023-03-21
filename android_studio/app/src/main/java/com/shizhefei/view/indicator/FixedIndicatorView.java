package com.shizhefei.view.indicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.Scroller;
import androidx.core.view.ViewCompat;
import com.apk.b40;
import com.apk.f40;
import com.apk.h40;
import com.apk.i40;
import com.apk.xr0;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes8.dex */
public class FixedIndicatorView extends xr0 implements b40 {

    /* renamed from: break  reason: not valid java name */
    public int f10260break;

    /* renamed from: case  reason: not valid java name */
    public int f10261case;

    /* renamed from: catch  reason: not valid java name */
    public final List<ViewGroup> f10262catch;

    /* renamed from: class  reason: not valid java name */
    public final b40.Cdo f10263class;

    /* renamed from: const  reason: not valid java name */
    public final View.OnClickListener f10264const;

    /* renamed from: else  reason: not valid java name */
    public int f10265else;

    /* renamed from: final  reason: not valid java name */
    public h40 f10266final;

    /* renamed from: for  reason: not valid java name */
    public b40.Cnew f10267for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f10268goto;

    /* renamed from: if  reason: not valid java name */
    public b40.Cif f10269if;

    /* renamed from: import  reason: not valid java name */
    public int[] f10270import;

    /* renamed from: native  reason: not valid java name */
    public int f10271native;

    /* renamed from: new  reason: not valid java name */
    public b40.Cfor f10272new;

    /* renamed from: public  reason: not valid java name */
    public int f10273public;

    /* renamed from: return  reason: not valid java name */
    public float f10274return;

    /* renamed from: static  reason: not valid java name */
    public b40.Ctry f10275static;

    /* renamed from: super  reason: not valid java name */
    public Cfor f10276super;

    /* renamed from: switch  reason: not valid java name */
    public View f10277switch;

    /* renamed from: this  reason: not valid java name */
    public boolean f10278this;

    /* renamed from: throw  reason: not valid java name */
    public Matrix f10279throw;

    /* renamed from: throws  reason: not valid java name */
    public LinearLayout.LayoutParams f10280throws;

    /* renamed from: try  reason: not valid java name */
    public int f10281try;

    /* renamed from: while  reason: not valid java name */
    public Canvas f10282while;

    /* renamed from: com.shizhefei.view.indicator.FixedIndicatorView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements b40.Cdo {
        public Cdo() {
        }

        @Override // com.apk.b40.Cdo
        /* renamed from: do */
        public void mo146do() {
            View mo150if;
            if (!FixedIndicatorView.this.f10276super.m3681do()) {
                FixedIndicatorView.this.f10276super.m3682if();
            }
            int tabCountInLayout = FixedIndicatorView.this.getTabCountInLayout();
            int mo148do = FixedIndicatorView.this.f10269if.mo148do();
            FixedIndicatorView.this.f10262catch.clear();
            for (int i = 0; i < tabCountInLayout && i < mo148do; i++) {
                FixedIndicatorView fixedIndicatorView = FixedIndicatorView.this;
                fixedIndicatorView.f10262catch.add((ViewGroup) fixedIndicatorView.m3680try(i));
            }
            FixedIndicatorView.this.removeAllViews();
            int size = FixedIndicatorView.this.f10262catch.size();
            int i2 = 0;
            while (i2 < mo148do) {
                LinearLayout linearLayout = new LinearLayout(FixedIndicatorView.this.getContext());
                if (i2 < size) {
                    View childAt = FixedIndicatorView.this.f10262catch.get(i2).getChildAt(0);
                    FixedIndicatorView.this.f10262catch.get(i2).removeView(childAt);
                    mo150if = FixedIndicatorView.this.f10269if.mo150if(i2, childAt, linearLayout);
                } else {
                    mo150if = FixedIndicatorView.this.f10269if.mo150if(i2, null, linearLayout);
                }
                FixedIndicatorView fixedIndicatorView2 = FixedIndicatorView.this;
                b40.Ctry ctry = fixedIndicatorView2.f10275static;
                if (ctry != null) {
                    ((i40) ctry).m1182if(mo150if, i2, i2 == fixedIndicatorView2.f10281try ? 1.0f : 0.0f);
                }
                linearLayout.addView(mo150if);
                linearLayout.setOnClickListener(FixedIndicatorView.this.f10264const);
                linearLayout.setTag(Integer.valueOf(i2));
                FixedIndicatorView.this.addView(linearLayout, new LinearLayout.LayoutParams(-2, -1));
                i2++;
            }
            FixedIndicatorView fixedIndicatorView3 = FixedIndicatorView.this;
            View view = fixedIndicatorView3.f10277switch;
            if (view != null) {
                fixedIndicatorView3.m3673break(view, fixedIndicatorView3.f10280throws);
            }
            FixedIndicatorView fixedIndicatorView4 = FixedIndicatorView.this;
            fixedIndicatorView4.f10260break = -1;
            fixedIndicatorView4.mo145if(fixedIndicatorView4.f10281try, false);
            FixedIndicatorView.this.m3677goto();
        }
    }

    /* renamed from: com.shizhefei.view.indicator.FixedIndicatorView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public int f10284do = 20;

        /* renamed from: for  reason: not valid java name */
        public final Interpolator f10285for = new Cdo(this);

        /* renamed from: if  reason: not valid java name */
        public Scroller f10286if;

        /* renamed from: com.shizhefei.view.indicator.FixedIndicatorView$for$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Interpolator {
            public Cdo(Cfor cfor) {
            }

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2 * f2 * f2) + 1.0f;
            }
        }

        public Cfor() {
            this.f10286if = new Scroller(FixedIndicatorView.this.getContext(), this.f10285for);
        }

        /* renamed from: do  reason: not valid java name */
        public boolean m3681do() {
            return this.f10286if.isFinished();
        }

        /* renamed from: if  reason: not valid java name */
        public void m3682if() {
            if (this.f10286if.isFinished()) {
                this.f10286if.abortAnimation();
            }
            FixedIndicatorView.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewCompat.postInvalidateOnAnimation(FixedIndicatorView.this);
            if (this.f10286if.isFinished()) {
                return;
            }
            FixedIndicatorView.this.postDelayed(this, this.f10284do);
        }
    }

    /* renamed from: com.shizhefei.view.indicator.FixedIndicatorView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FixedIndicatorView.this.f10278this) {
                int intValue = ((Integer) view.getTag()).intValue();
                ViewGroup viewGroup = (ViewGroup) view;
                View childAt = viewGroup.getChildAt(0);
                b40.Cfor cfor = FixedIndicatorView.this.f10272new;
                if (cfor == null || !cfor.m147do(childAt, intValue)) {
                    FixedIndicatorView.this.setCurrentItem(intValue);
                    b40.Cnew cnew = FixedIndicatorView.this.f10267for;
                    if (cnew != null) {
                        cnew.mo151do(viewGroup.getChildAt(0), intValue, FixedIndicatorView.this.f10260break);
                    }
                }
            }
        }
    }

    public FixedIndicatorView(Context context) {
        super(context, null);
        this.f10281try = -1;
        this.f10261case = 0;
        this.f10265else = 0;
        this.f10268goto = true;
        this.f10278this = true;
        this.f10260break = -1;
        this.f10262catch = new LinkedList();
        this.f10263class = new Cdo();
        this.f10264const = new Cif();
        this.f10279throw = new Matrix();
        this.f10282while = new Canvas();
        this.f10270import = new int[]{-1, -1};
        this.f10276super = new Cfor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getTabCountInLayout() {
        if (this.f10277switch != null) {
            return getChildCount() - 1;
        }
        return getChildCount();
    }

    /* renamed from: break  reason: not valid java name */
    public void m3673break(View view, ViewGroup.LayoutParams layoutParams) {
        LinearLayout.LayoutParams generateLayoutParams;
        View view2 = this.f10277switch;
        if (view2 != null) {
            removeView(view2);
            this.f10277switch = null;
        }
        this.f10280throws = null;
        if (layoutParams == null) {
            generateLayoutParams = new LinearLayout.LayoutParams(-2, -1);
        } else {
            generateLayoutParams = generateLayoutParams(layoutParams);
        }
        this.f10280throws = generateLayoutParams;
        this.f10277switch = view;
        addView(view, getChildCount() / 2, generateLayoutParams);
    }

    /* renamed from: case  reason: not valid java name */
    public View m3674case(int i) {
        ViewGroup viewGroup;
        b40.Cif cif = this.f10269if;
        if (cif != null && i >= 0 && i <= cif.mo148do() - 1 && (viewGroup = (ViewGroup) m3680try(i)) != null) {
            return viewGroup.getChildAt(0);
        }
        return null;
    }

    /* renamed from: catch  reason: not valid java name */
    public final void m3675catch(int i) {
        b40.Cif cif = this.f10269if;
        if (cif == null) {
            return;
        }
        int mo148do = cif.mo148do();
        int i2 = 0;
        while (i2 < mo148do) {
            ViewGroup viewGroup = (ViewGroup) m3680try(i2);
            View childAt = viewGroup == null ? null : viewGroup.getChildAt(0);
            if (childAt != null) {
                childAt.setSelected(i == i2);
            }
            i2++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        h40.Cdo cdo = h40.Cdo.CENTENT_BACKGROUND;
        h40 h40Var = this.f10266final;
        if (h40Var != null && h40Var.getGravity() == cdo) {
            m3678new(canvas);
        }
        super.dispatchDraw(canvas);
        h40 h40Var2 = this.f10266final;
        if (h40Var2 == null || h40Var2.getGravity() == cdo) {
            return;
        }
        m3678new(canvas);
    }

    @Override // com.apk.xr0, com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        super.mo101do();
        try {
            if (this.f10275static != null) {
                ((i40) this.f10275static).m1180do();
            }
            if (this.f10269if != null) {
                this.f10269if.m149for();
            }
            if (this.f10266final != null) {
                this.f10266final.mo748do();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final int m3676else(int i, float f, boolean z) {
        View m3680try;
        h40 h40Var = this.f10266final;
        if (h40Var == null || this.f10269if == null) {
            return 0;
        }
        View mo749if = h40Var.mo749if();
        if (mo749if.isLayoutRequested() || z) {
            View m3680try2 = m3680try(i);
            int i2 = i + 1;
            if (i2 < this.f10269if.mo148do()) {
                m3680try = m3680try(i2);
            } else {
                m3680try = m3680try(0);
            }
            if (m3680try2 != null) {
                int width = (int) (((1.0f - f) * m3680try2.getWidth()) + (m3680try == null ? 0.0f : m3680try.getWidth() * f));
                int mo451new = this.f10266final.mo451new(width);
                int mo450for = this.f10266final.mo450for(getHeight());
                mo749if.measure(mo451new, mo450for);
                mo749if.layout(0, 0, mo451new, mo450for);
                return width;
            }
        }
        return this.f10266final.mo749if().getWidth();
    }

    public View getCenterView() {
        return this.f10277switch;
    }

    public int getCount() {
        b40.Cif cif = this.f10269if;
        if (cif == null) {
            return 0;
        }
        return cif.mo148do();
    }

    @Override // com.apk.b40
    public int getCurrentItem() {
        return this.f10281try;
    }

    public b40.Cif getIndicatorAdapter() {
        return this.f10269if;
    }

    public b40.Cfor getOnIndicatorItemClickListener() {
        return this.f10272new;
    }

    public b40.Cnew getOnItemSelectListener() {
        return this.f10267for;
    }

    public b40.Ctry getOnTransitionListener() {
        return this.f10275static;
    }

    @Override // com.apk.b40
    public int getPreSelectItem() {
        return this.f10260break;
    }

    public h40 getScrollBar() {
        return this.f10266final;
    }

    public int getSplitMethod() {
        return this.f10261case;
    }

    /* renamed from: goto  reason: not valid java name */
    public final void m3677goto() {
        int tabCountInLayout = getTabCountInLayout();
        int i = this.f10261case;
        int i2 = 0;
        if (i == 0) {
            for (int i3 = 0; i3 < tabCountInLayout; i3++) {
                View m3680try = m3680try(i3);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m3680try.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                m3680try.setLayoutParams(layoutParams);
            }
        } else if (i == 1) {
            while (i2 < tabCountInLayout) {
                View m3680try2 = m3680try(i2);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) m3680try2.getLayoutParams();
                layoutParams2.width = -2;
                layoutParams2.weight = 1.0f;
                m3680try2.setLayoutParams(layoutParams2);
                i2++;
            }
        } else if (i == 2) {
            while (i2 < tabCountInLayout) {
                View m3680try3 = m3680try(i2);
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) m3680try3.getLayoutParams();
                layoutParams3.width = -2;
                layoutParams3.weight = 0.0f;
                m3680try3.setLayoutParams(layoutParams3);
                i2++;
            }
        }
    }

    @Override // com.apk.b40
    /* renamed from: if */
    public void mo145if(int i, boolean z) {
        int i2;
        int count = getCount();
        if (count == 0) {
            return;
        }
        if (i < 0) {
            i = 0;
        } else {
            int i3 = count - 1;
            if (i > i3) {
                i = i3;
            }
        }
        int i4 = this.f10281try;
        if (i4 != i) {
            this.f10260break = i4;
            this.f10281try = i;
            if (!this.f10276super.m3681do()) {
                this.f10276super.m3682if();
            }
            if (this.f10265else == 0) {
                m3675catch(i);
                if (z && getMeasuredWidth() != 0 && m3680try(i).getMeasuredWidth() != 0 && (i2 = this.f10260break) >= 0 && i2 < getTabCountInLayout()) {
                    int left = m3680try(this.f10260break).getLeft();
                    int left2 = m3680try(i).getLeft() - left;
                    int min = Math.min((int) (((Math.abs(left2) / m3680try(i).getMeasuredWidth()) + 1.0f) * 100.0f), 600);
                    Cfor cfor = this.f10276super;
                    cfor.f10286if.startScroll(left, 0, left2, 0, min);
                    ViewCompat.postInvalidateOnAnimation(FixedIndicatorView.this);
                    FixedIndicatorView.this.post(cfor);
                    return;
                }
                m3679this(i, 0.0f, 0);
            } else if (this.f10275static == null) {
                m3675catch(i);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void measureChildren(int i, int i2) {
        super.measureChildren(i, i2);
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3678new(Canvas canvas) {
        float f;
        int m3676else;
        float left;
        View m3680try;
        int height;
        int paddingBottom;
        int i;
        b40.Cif cif = this.f10269if;
        if (cif != null && this.f10266final != null) {
            int mo148do = cif.mo148do();
            if (mo148do == 0) {
                this.f10276super.m3682if();
                return;
            } else if (getCurrentItem() >= mo148do) {
                setCurrentItem(mo148do - 1);
                this.f10276super.m3682if();
                return;
            } else {
                int ordinal = this.f10266final.getGravity().ordinal();
                if (ordinal == 0 || ordinal == 1) {
                    f = 0.0f;
                } else {
                    if (ordinal == 2 || ordinal == 3) {
                        if (this.f10268goto && (this.f10266final instanceof f40)) {
                            height = getHeight();
                            paddingBottom = getPaddingBottom();
                            i = height - paddingBottom;
                            f = i;
                        }
                    } else if (ordinal == 4 || ordinal == 5) {
                        i = (getHeight() - this.f10266final.mo450for(getHeight())) / 2;
                        f = i;
                    }
                    height = getHeight();
                    paddingBottom = this.f10266final.mo450for(getHeight());
                    i = height - paddingBottom;
                    f = i;
                }
                if (!this.f10276super.m3681do() && this.f10276super.f10286if.computeScrollOffset()) {
                    left = this.f10276super.f10286if.getCurrX();
                    View view = null;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= mo148do) {
                            i2 = 0;
                            break;
                        }
                        view = m3680try(i2);
                        if (view.getLeft() <= left && left < view.getRight()) {
                            break;
                        }
                        i2++;
                    }
                    float left2 = (left - view.getLeft()) / view.getWidth();
                    m3679this(i2, left2, (int) (left - view.getLeft()));
                    m3676else = m3676else(i2, left2, true);
                } else if (this.f10265else != 0) {
                    int width = m3680try(this.f10271native).getWidth();
                    float f2 = this.f10274return;
                    left = (width * f2) + m3680try.getLeft();
                    m3679this(this.f10271native, f2, this.f10273public);
                    m3676else = m3676else(this.f10271native, this.f10274return, true);
                } else {
                    m3676else = m3676else(this.f10281try, 0.0f, true);
                    View m3680try2 = m3680try(this.f10281try);
                    if (m3680try2 == null) {
                        return;
                    }
                    left = m3680try2.getLeft();
                }
                int height2 = this.f10266final.mo749if().getHeight();
                int width2 = this.f10266final.mo749if().getWidth();
                float f3 = left + ((m3676else - width2) / 2);
                int save = canvas.save();
                getMeasuredWidth();
                getMeasuredHeight();
                if (this.f10269if != null) {
                    canvas.translate(f3, f);
                    canvas.clipRect(0, 0, width2, height2);
                    this.f10266final.mo749if().draw(canvas);
                    canvas.restoreToCount(save);
                    return;
                }
                throw null;
            }
        }
        this.f10276super.m3682if();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f10276super.m3682if();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            this.f10277switch = childAt;
            this.f10280throws = (LinearLayout.LayoutParams) childAt.getLayoutParams();
        }
    }

    @Override // com.apk.b40
    public void onPageScrollStateChanged(int i) {
        this.f10265else = i;
        if (i == 0) {
            m3675catch(this.f10281try);
        }
    }

    @Override // com.apk.b40
    public void onPageScrolled(int i, float f, int i2) {
        this.f10271native = i;
        this.f10274return = f;
        this.f10273public = i2;
        if (this.f10266final != null) {
            ViewCompat.postInvalidateOnAnimation(this);
        } else {
            m3679this(i, f, i2);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m3676else(this.f10281try, 1.0f, true);
    }

    @Override // com.apk.b40
    public void setAdapter(b40.Cif cif) {
        b40.Cif cif2 = this.f10269if;
        if (cif2 != null) {
            cif2.f242do.remove(this.f10263class);
        }
        this.f10269if = cif;
        cif.f242do.add(this.f10263class);
        cif.m149for();
    }

    public void setCenterView(View view) {
        m3673break(view, view.getLayoutParams());
    }

    public void setCurrentItem(int i) {
        mo145if(i, true);
    }

    @Override // com.apk.b40
    public void setItemClickable(boolean z) {
        this.f10278this = z;
    }

    public void setOnIndicatorItemClickListener(b40.Cfor cfor) {
        this.f10272new = cfor;
    }

    @Override // com.apk.b40
    public void setOnItemSelectListener(b40.Cnew cnew) {
        this.f10267for = cnew;
    }

    @Override // com.apk.b40
    public void setOnTransitionListener(b40.Ctry ctry) {
        this.f10275static = ctry;
        m3675catch(this.f10281try);
        if (this.f10269if != null) {
            int i = 0;
            while (i < this.f10269if.mo148do()) {
                View m3674case = m3674case(i);
                if (m3674case != null) {
                    ((i40) ctry).m1182if(m3674case, i, this.f10281try == i ? 1.0f : 0.0f);
                }
                i++;
            }
        }
    }

    public void setOpenPaddingBottom(boolean z) {
        this.f10268goto = z;
    }

    @Override // com.apk.b40
    public void setScrollBar(h40 h40Var) {
        int paddingBottom = getPaddingBottom();
        int paddingTop = getPaddingTop();
        h40 h40Var2 = this.f10266final;
        if (h40Var2 != null) {
            int ordinal = h40Var2.getGravity().ordinal();
            if (ordinal == 1) {
                paddingTop -= h40Var.mo450for(getHeight());
            } else if (ordinal == 3) {
                paddingBottom -= h40Var.mo450for(getHeight());
            }
        }
        this.f10266final = h40Var;
        int ordinal2 = h40Var.getGravity().ordinal();
        if (ordinal2 == 1) {
            paddingTop += h40Var.mo450for(getHeight());
        } else if (ordinal2 == 3) {
            paddingBottom += h40Var.mo450for(getHeight());
        }
        setPadding(getPaddingLeft(), paddingTop, getPaddingRight(), paddingBottom);
    }

    public void setSplitMethod(int i) {
        this.f10261case = i;
        m3677goto();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    /* renamed from: this  reason: not valid java name */
    public final void m3679this(int i, float f, int i2) {
        int[] iArr;
        View m3674case;
        if (i < 0 || i > getCount() - 1) {
            return;
        }
        h40 h40Var = this.f10266final;
        if (h40Var != null) {
            h40Var.onPageScrolled(i, f, i2);
        }
        if (this.f10275static != null) {
            for (int i3 : this.f10270import) {
                if (i3 != i && i3 != i + 1 && (m3674case = m3674case(i3)) != null) {
                    ((i40) this.f10275static).m1182if(m3674case, i3, 0.0f);
                }
            }
            int[] iArr2 = this.f10270import;
            iArr2[0] = i;
            int i4 = i + 1;
            iArr2[1] = i4;
            View m3674case2 = m3674case(this.f10260break);
            if (m3674case2 != null) {
                ((i40) this.f10275static).m1182if(m3674case2, this.f10260break, 0.0f);
            }
            View m3674case3 = m3674case(i);
            if (m3674case3 != null) {
                ((i40) this.f10275static).m1182if(m3674case3, i, 1.0f - f);
            }
            View m3674case4 = m3674case(i4);
            if (m3674case4 != null) {
                ((i40) this.f10275static).m1182if(m3674case4, i4, f);
            }
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final View m3680try(int i) {
        if (this.f10277switch != null && i >= (getChildCount() - 1) / 2) {
            i++;
        }
        return getChildAt(i);
    }

    public FixedIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10281try = -1;
        this.f10261case = 0;
        this.f10265else = 0;
        this.f10268goto = true;
        this.f10278this = true;
        this.f10260break = -1;
        this.f10262catch = new LinkedList();
        this.f10263class = new Cdo();
        this.f10264const = new Cif();
        this.f10279throw = new Matrix();
        this.f10282while = new Canvas();
        this.f10270import = new int[]{-1, -1};
        this.f10276super = new Cfor();
    }
}
