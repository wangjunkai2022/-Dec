package com.biquge.ebook.app.widget.pinnedheaderlistview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.apk.bi;
import com.apk.g1;
import com.biquge.ebook.app.R$styleable;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class SectionPinListView extends ListView implements AbsListView.OnScrollListener {

    /* renamed from: case  reason: not valid java name */
    public int f8405case;

    /* renamed from: do  reason: not valid java name */
    public AbsListView.OnScrollListener f8406do;

    /* renamed from: else  reason: not valid java name */
    public g1 f8407else;

    /* renamed from: for  reason: not valid java name */
    public boolean f8408for;

    /* renamed from: if  reason: not valid java name */
    public View f8409if;

    /* renamed from: new  reason: not valid java name */
    public float f8410new;

    /* renamed from: try  reason: not valid java name */
    public int f8411try;

    public SectionPinListView(Context context, AttributeSet attributeSet) {
        super(new ContextThemeWrapper(context, (int) R.style.fe), attributeSet);
        this.f8406do = null;
        this.f8409if = null;
        this.f8408for = true;
        this.f8410new = 0.0f;
        this.f8411try = -1;
        this.f8405case = 1073741824;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SectionPinListView);
        this.f8408for = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
        super.setOnScrollListener(this);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (getAdapter() == null || !(getAdapter() instanceof bi) || this.f8409if == null || !this.f8408for) {
            return;
        }
        int save = canvas.save();
        canvas.translate(0.0f, this.f8410new);
        canvas.clipRect(0, 0, getWidth(), this.f8409if.getMeasuredHeight());
        this.f8409if.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f8405case = View.MeasureSpec.getMode(i);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        int i4;
        int makeMeasureSpec;
        int i5;
        AbsListView.OnScrollListener onScrollListener = this.f8406do;
        if (onScrollListener != null) {
            onScrollListener.onScroll(absListView, i, i2, i3);
        }
        if (getAdapter() == null || (getAdapter() instanceof bi)) {
            int headerViewsCount = getHeaderViewsCount();
            if (getAdapter() != null && this.f8408for && i >= headerViewsCount) {
                if (getAdapter().getCount() <= 0) {
                    return;
                }
                int i6 = i - headerViewsCount;
                if (getAdapter() != null && (getAdapter() instanceof bi)) {
                    bi biVar = (bi) getAdapter();
                    i4 = i6;
                    while (i4 >= 0) {
                        if (biVar.mo178do(i4)) {
                            break;
                        }
                        i4--;
                    }
                }
                i4 = -1;
                if (i4 != -1 && this.f8411try != i4) {
                    View view = getAdapter() != null ? getAdapter().getView(i4, null, this) : null;
                    this.f8409if = view;
                    if (view.isLayoutRequested()) {
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), this.f8405case);
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams != null && (i5 = layoutParams.height) > 0) {
                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
                        } else {
                            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        }
                        view.measure(makeMeasureSpec2, makeMeasureSpec);
                        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
                    }
                }
                if (this.f8409if == null) {
                    return;
                }
                this.f8410new = 0.0f;
                for (int i7 = 0; i7 < i2; i7++) {
                    if (((bi) getAdapter()).mo178do(i7 + i6)) {
                        View childAt = getChildAt(i7);
                        int top2 = childAt.getTop();
                        int height = this.f8409if.getHeight();
                        childAt.setVisibility(0);
                        if (top2 < height && top2 > 0) {
                            this.f8410new = top2 - height;
                        } else if (top2 <= 0) {
                            childAt.setVisibility(4);
                        }
                    }
                }
                invalidate();
                return;
            }
            this.f8409if = null;
            this.f8410new = 0.0f;
            this.f8411try = -1;
            for (int i8 = 0; i8 < i2; i8++) {
                View childAt2 = getChildAt(i8);
                if (childAt2 != null) {
                    childAt2.setVisibility(0);
                }
            }
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        g1 g1Var;
        AbsListView.OnScrollListener onScrollListener = this.f8406do;
        if (onScrollListener != null) {
            onScrollListener.onScrollStateChanged(absListView, i);
        }
        if (i == 1 || i != 0 || (g1Var = this.f8407else) == null) {
            return;
        }
        g1Var.onData(null);
    }

    public void setOnDataCallBackListener(g1 g1Var) {
        this.f8407else = g1Var;
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f8406do = onScrollListener;
    }

    public void setSectionPinEnable(boolean z) {
        this.f8408for = z;
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
    }
}
