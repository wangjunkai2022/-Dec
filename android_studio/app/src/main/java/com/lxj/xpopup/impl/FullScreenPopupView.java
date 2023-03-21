package com.lxj.xpopup.impl;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.apk.cv;
import com.apk.hv;
import com.apk.ov;
import com.apk.pw;
import com.apk.zu;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import com.lxj.xpopup.core.BasePopupView;

/* loaded from: classes8.dex */
public class FullScreenPopupView extends BasePopupView {

    /* renamed from: case  reason: not valid java name */
    public int f9582case;

    /* renamed from: do  reason: not valid java name */
    public ArgbEvaluator f9583do;

    /* renamed from: for  reason: not valid java name */
    public FrameLayout f9584for;

    /* renamed from: if  reason: not valid java name */
    public View f9585if;

    /* renamed from: new  reason: not valid java name */
    public Paint f9586new;

    /* renamed from: try  reason: not valid java name */
    public Rect f9587try;

    /* renamed from: com.lxj.xpopup.impl.FullScreenPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ValueAnimator.AnimatorUpdateListener {
        public Cdo() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            FullScreenPopupView.this.f9582case = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            FullScreenPopupView.this.postInvalidate();
        }
    }

    public FullScreenPopupView(@NonNull Context context) {
        super(context);
        this.f9583do = new ArgbEvaluator();
        this.f9586new = new Paint();
        this.f9582case = 0;
        this.f9584for = (FrameLayout) findViewById(R$id.fullPopupContainer);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.popupInfo.f2934public.booleanValue()) {
            this.f9586new.setColor(this.f9582case);
            Rect rect = new Rect(0, 0, getMeasuredWidth(), pw.m2080class());
            this.f9587try = rect;
            canvas.drawRect(rect, this.f9586new);
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void doDismissAnimation() {
        super.doDismissAnimation();
        m3604if(false);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void doShowAnimation() {
        super.doShowAnimation();
        m3604if(true);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public cv getPopupAnimator() {
        return new hv(getPopupContentView(), ov.TranslateFromBottom);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupLayoutId() {
        return R$layout._xpopup_fullscreen_popup_view;
    }

    /* renamed from: if  reason: not valid java name */
    public void m3604if(boolean z) {
        if (this.popupInfo.f2934public.booleanValue()) {
            ArgbEvaluator argbEvaluator = this.f9583do;
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(z ? 0 : zu.f6263for);
            objArr[1] = Integer.valueOf(z ? zu.f6263for : 0);
            ValueAnimator ofObject = ValueAnimator.ofObject(argbEvaluator, objArr);
            ofObject.addUpdateListener(new Cdo());
            ofObject.setDuration(zu.f6264if).start();
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        if (this.f9584for.getChildCount() == 0) {
            View inflate = LayoutInflater.from(getContext()).inflate(getImplLayoutId(), (ViewGroup) this.f9584for, false);
            this.f9585if = inflate;
            this.f9584for.addView(inflate);
        }
        getPopupContentView().setTranslationX(this.popupInfo.f2942throws);
        getPopupContentView().setTranslationY(this.popupInfo.f2918default);
    }

    @Override // com.lxj.xpopup.core.BasePopupView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f9586new = null;
    }
}
