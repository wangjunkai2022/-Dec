package com.shizhefei.view.indicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.apk.b40;
import com.apk.h40;
import com.apk.i40;
import com.apk.js0;

/* loaded from: classes8.dex */
public class ScrollIndicatorView extends HorizontalScrollView implements b40, js0 {

    /* renamed from: break  reason: not valid java name */
    public View f10289break;

    /* renamed from: case  reason: not valid java name */
    public int f10290case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f10291catch;

    /* renamed from: class  reason: not valid java name */
    public int f10292class;

    /* renamed from: const  reason: not valid java name */
    public float f10293const;

    /* renamed from: do  reason: not valid java name */
    public final Cfor f10294do;

    /* renamed from: else  reason: not valid java name */
    public Drawable f10295else;

    /* renamed from: for  reason: not valid java name */
    public boolean f10296for;

    /* renamed from: goto  reason: not valid java name */
    public final b40.Cdo f10297goto;

    /* renamed from: if  reason: not valid java name */
    public final Cnew f10298if;

    /* renamed from: new  reason: not valid java name */
    public Paint f10299new;

    /* renamed from: this  reason: not valid java name */
    public Runnable f10300this;

    /* renamed from: try  reason: not valid java name */
    public int f10301try;

    /* renamed from: com.shizhefei.view.indicator.ScrollIndicatorView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements b40.Cdo {
        public Cdo() {
        }

        @Override // com.apk.b40.Cdo
        /* renamed from: do */
        public void mo146do() {
            ScrollIndicatorView scrollIndicatorView = ScrollIndicatorView.this;
            Runnable runnable = scrollIndicatorView.f10300this;
            if (runnable != null) {
                scrollIndicatorView.removeCallbacks(runnable);
            }
            ScrollIndicatorView scrollIndicatorView2 = ScrollIndicatorView.this;
            scrollIndicatorView2.f10293const = 0.0f;
            scrollIndicatorView2.mo145if(scrollIndicatorView2.getCurrentItemIndex(), false);
            ScrollIndicatorView scrollIndicatorView3 = ScrollIndicatorView.this;
            if (!scrollIndicatorView3.f10296for || scrollIndicatorView3.f10298if.getChildCount() <= 0) {
                return;
            }
            ScrollIndicatorView scrollIndicatorView4 = ScrollIndicatorView.this;
            scrollIndicatorView4.f10289break = scrollIndicatorView4.f10298if.getChildAt(0);
        }
    }

    /* renamed from: com.shizhefei.view.indicator.ScrollIndicatorView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements b40.Cnew {

        /* renamed from: do  reason: not valid java name */
        public b40.Cnew f10303do;

        public Cfor(ScrollIndicatorView scrollIndicatorView, Cdo cdo) {
        }

        @Override // com.apk.b40.Cnew
        /* renamed from: do */
        public void mo151do(View view, int i, int i2) {
            b40.Cnew cnew = this.f10303do;
            if (cnew != null) {
                cnew.mo151do(view, i, i2);
            }
        }
    }

    /* renamed from: com.shizhefei.view.indicator.ScrollIndicatorView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ View f10304do;

        public Cif(View view) {
            this.f10304do = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ScrollIndicatorView.this.smoothScrollTo(this.f10304do.getLeft() - ((ScrollIndicatorView.this.getWidth() - this.f10304do.getWidth()) / 2), 0);
            ScrollIndicatorView.this.f10300this = null;
        }
    }

    /* renamed from: com.shizhefei.view.indicator.ScrollIndicatorView$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cnew extends FixedIndicatorView {

        /* renamed from: default  reason: not valid java name */
        public boolean f10306default;

        public Cnew(Context context) {
            super(context);
            setOpenPaddingBottom(false);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            ScrollIndicatorView scrollIndicatorView;
            int measuredWidth;
            if (this.f10306default && (measuredWidth = (scrollIndicatorView = (ScrollIndicatorView) getParent()).getMeasuredWidth()) != 0) {
                int childCount = getChildCount();
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = getChildAt(i5);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                    childAt.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), -2), ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop(), layoutParams.height));
                    int measuredWidth2 = childAt.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
                    if (i4 < measuredWidth2) {
                        i4 = measuredWidth2;
                    }
                    i3 += measuredWidth2;
                }
                if (i3 > measuredWidth) {
                    scrollIndicatorView.setFillViewport(false);
                    setSplitMethod(2);
                } else if (i4 * childCount > measuredWidth) {
                    scrollIndicatorView.setFillViewport(true);
                    setSplitMethod(1);
                } else {
                    scrollIndicatorView.setFillViewport(true);
                    setSplitMethod(0);
                }
            }
            super.onMeasure(i, i2);
        }
    }

    @TargetApi(11)
    public ScrollIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10296for = false;
        this.f10299new = null;
        this.f10290case = 0;
        this.f10297goto = new Cdo();
        this.f10292class = -1;
        Cnew cnew = new Cnew(context);
        this.f10298if = cnew;
        addView(cnew, new FrameLayout.LayoutParams(-2, -1));
        setHorizontalScrollBarEnabled(false);
        setSplitAuto(true);
        Paint paint = new Paint();
        this.f10299new = paint;
        paint.setAntiAlias(true);
        this.f10299new.setColor(866822826);
        int m3686try = m3686try(3.0f);
        this.f10301try = m3686try;
        this.f10299new.setShadowLayer(m3686try, 0.0f, 0.0f, ViewCompat.MEASURED_STATE_MASK);
        setLayerType(1, null);
        Cnew cnew2 = this.f10298if;
        Cfor cfor = new Cfor(this, null);
        this.f10294do = cfor;
        cnew2.setOnItemSelectListener(cfor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentItemIndex() {
        int currentItem = this.f10298if.getCurrentItem();
        if (currentItem < 0) {
            return 0;
        }
        return currentItem;
    }

    /* renamed from: case  reason: not valid java name */
    public final void m3684case(Canvas canvas) {
        int i;
        h40 scrollBar = this.f10298if.getScrollBar();
        if (scrollBar == null || getCurrentItemIndex() != 0) {
            return;
        }
        int save = canvas.save();
        int ordinal = scrollBar.getGravity().ordinal();
        if (ordinal == 0 || ordinal == 1) {
            i = 0;
        } else if (ordinal != 4 && ordinal != 5) {
            i = getHeight() - scrollBar.mo450for(getHeight());
        } else {
            i = (getHeight() - scrollBar.mo450for(getHeight())) / 2;
        }
        int mo451new = scrollBar.mo451new(this.f10289break.getWidth());
        int mo450for = scrollBar.mo450for(this.f10289break.getHeight());
        scrollBar.mo749if().measure(mo451new, mo450for);
        scrollBar.mo749if().layout(0, 0, mo451new, mo450for);
        canvas.translate((this.f10289break.getWidth() - mo451new) / 2, i);
        canvas.clipRect(0, 0, mo451new, mo450for);
        scrollBar.mo749if().draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        h40.Cdo cdo = h40.Cdo.CENTENT_BACKGROUND;
        super.dispatchDraw(canvas);
        if (this.f10296for) {
            int scrollX = getScrollX();
            if (this.f10289break == null || scrollX <= 0) {
                return;
            }
            int save = canvas.save();
            canvas.translate(getPaddingLeft() + scrollX, getPaddingTop());
            Drawable drawable = this.f10295else;
            if (drawable != null) {
                drawable.setBounds(0, 0, this.f10289break.getWidth(), this.f10289break.getHeight());
                this.f10295else.draw(canvas);
            }
            h40 scrollBar = this.f10298if.getScrollBar();
            if (scrollBar != null && scrollBar.getGravity() == cdo) {
                m3684case(canvas);
            }
            this.f10289break.draw(canvas);
            if (scrollBar != null && scrollBar.getGravity() != cdo) {
                m3684case(canvas);
            }
            canvas.translate(this.f10289break.getWidth(), 0.0f);
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            canvas.clipRect(0, 0, m3686try(1.0f) + this.f10301try, height);
            canvas.drawRect(0.0f, 0.0f, m3686try(1.0f), height, this.f10299new);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f10296for) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            View view = this.f10289break;
            if (view != null && y >= view.getTop() && y <= this.f10289break.getBottom() && x > this.f10289break.getLeft() && x < this.f10289break.getRight()) {
                if (motionEvent.getAction() == 0) {
                    this.f10291catch = true;
                } else if (motionEvent.getAction() == 1 && this.f10291catch) {
                    this.f10289break.performClick();
                    invalidate(new Rect(0, 0, this.f10289break.getMeasuredWidth(), this.f10289break.getMeasuredHeight()));
                    this.f10291catch = false;
                }
                return true;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        try {
            if (getOnTransitionListener() != null) {
                ((i40) getOnTransitionListener()).m1180do();
            }
            if (getIndicatorAdapter() != null) {
                getIndicatorAdapter().m149for();
            }
            if (this.f10298if.getScrollBar() != null) {
                this.f10298if.getScrollBar().mo748do();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.b40
    public int getCurrentItem() {
        return getCurrentItemIndex();
    }

    public b40.Cif getIndicatorAdapter() {
        return this.f10298if.getIndicatorAdapter();
    }

    public b40.Cfor getOnIndicatorItemClickListener() {
        return this.f10298if.getOnIndicatorItemClickListener();
    }

    public b40.Cnew getOnItemSelectListener() {
        return this.f10294do.f10303do;
    }

    public b40.Ctry getOnTransitionListener() {
        return this.f10298if.getOnTransitionListener();
    }

    @Override // com.apk.b40
    public int getPreSelectItem() {
        return this.f10298if.getPreSelectItem();
    }

    @Override // com.apk.b40
    /* renamed from: if */
    public void mo145if(int i, boolean z) {
        int count = this.f10298if.getCount();
        if (count == 0) {
            return;
        }
        if (i < 0) {
            i = 0;
        } else {
            int i2 = count - 1;
            if (i > i2) {
                i = i2;
            }
        }
        this.f10292class = -1;
        if (this.f10290case == 0) {
            if (z) {
                m3685new(i);
            } else {
                View childAt = this.f10298if.getChildAt(i);
                scrollTo(childAt.getLeft() - ((getWidth() - childAt.getWidth()) / 2), 0);
                this.f10292class = i;
            }
        }
        this.f10298if.mo145if(i, z);
    }

    /* renamed from: new  reason: not valid java name */
    public final void m3685new(int i) {
        if (i < 0 || i > this.f10298if.getCount() - 1) {
            return;
        }
        View childAt = this.f10298if.getChildAt(i);
        Runnable runnable = this.f10300this;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Cif cif = new Cif(childAt);
        this.f10300this = cif;
        post(cif);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f10300this;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f10300this;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt;
        int left;
        super.onLayout(z, i, i2, i3, i4);
        int i5 = this.f10292class;
        if (i5 == -1 || (childAt = this.f10298if.getChildAt(i5)) == null || (left = childAt.getLeft() - ((getMeasuredWidth() - childAt.getMeasuredWidth()) / 2)) < 0) {
            return;
        }
        smoothScrollTo(left, 0);
        this.f10292class = -1;
    }

    @Override // com.apk.b40
    public void onPageScrollStateChanged(int i) {
        this.f10290case = i;
        Cnew cnew = this.f10298if;
        cnew.f10265else = i;
        if (i == 0) {
            cnew.m3675catch(cnew.f10281try);
        }
    }

    @Override // com.apk.b40
    public void onPageScrolled(int i, float f, int i2) {
        View childAt = this.f10298if.getChildAt(i);
        if (childAt == null) {
            return;
        }
        View childAt2 = this.f10298if.getChildAt(i + 1);
        scrollTo((int) ((childAt.getLeft() - ((getWidth() - childAt.getWidth()) / 2)) + (((childAt.getWidth() + (childAt2 == null ? childAt.getWidth() : childAt2.getWidth())) / 2) * f)), 0);
        Cnew cnew = this.f10298if;
        cnew.f10271native = i;
        cnew.f10274return = f;
        cnew.f10273public = i2;
        if (cnew.f10266final != null) {
            ViewCompat.postInvalidateOnAnimation(cnew);
        } else {
            cnew.m3679this(i, f, i2);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f10298if.getCount() > 0) {
            m3685new(getCurrentItemIndex());
        }
    }

    @Override // com.apk.b40
    public void setAdapter(b40.Cif cif) {
        if (getIndicatorAdapter() != null) {
            b40.Cif indicatorAdapter = getIndicatorAdapter();
            indicatorAdapter.f242do.remove(this.f10297goto);
        }
        this.f10298if.setAdapter(cif);
        cif.f242do.add(this.f10297goto);
        this.f10297goto.mo146do();
    }

    public void setCurrentItem(int i) {
        mo145if(i, true);
    }

    @Override // com.apk.b40
    public void setItemClickable(boolean z) {
        this.f10298if.setItemClickable(z);
    }

    public void setOnIndicatorItemClickListener(b40.Cfor cfor) {
        this.f10298if.setOnIndicatorItemClickListener(cfor);
    }

    @Override // com.apk.b40
    public void setOnItemSelectListener(b40.Cnew cnew) {
        this.f10294do.f10303do = cnew;
    }

    @Override // com.apk.b40
    public void setOnTransitionListener(b40.Ctry ctry) {
        this.f10298if.setOnTransitionListener(ctry);
    }

    public void setPinnedTabBg(Drawable drawable) {
        this.f10295else = drawable;
        ViewCompat.postInvalidateOnAnimation(this);
    }

    public void setPinnedTabBgColor(int i) {
        setPinnedTabBg(new ColorDrawable(i));
    }

    public void setPinnedTabBgId(int i) {
        setPinnedTabBg(ContextCompat.getDrawable(getContext(), i));
    }

    public void setPinnedTabView(boolean z) {
        this.f10296for = z;
        if (z && this.f10298if.getChildCount() > 0) {
            this.f10289break = this.f10298if.getChildAt(0);
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // com.apk.b40
    public void setScrollBar(h40 h40Var) {
        this.f10298if.setScrollBar(h40Var);
    }

    public void setSplitAuto(boolean z) {
        setFillViewport(z);
        Cnew cnew = this.f10298if;
        if (cnew.f10306default != z) {
            cnew.f10306default = z;
            if (!z) {
                cnew.setSplitMethod(2);
            }
            cnew.requestLayout();
            cnew.invalidate();
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final int m3686try(float f) {
        return (int) TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }
}
