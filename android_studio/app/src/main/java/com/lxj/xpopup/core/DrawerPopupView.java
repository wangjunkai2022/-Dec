package com.lxj.xpopup.core;

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
import com.apk.ow;
import com.apk.pv;
import com.apk.pw;
import com.apk.qv;
import com.apk.yv;
import com.apk.zu;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import com.lxj.xpopup.widget.PopupDrawerLayout;

/* loaded from: classes8.dex */
public abstract class DrawerPopupView extends BasePopupView {

    /* renamed from: case  reason: not valid java name */
    public ArgbEvaluator f9498case;

    /* renamed from: do  reason: not valid java name */
    public PopupDrawerLayout f9499do;

    /* renamed from: else  reason: not valid java name */
    public int f9500else;

    /* renamed from: for  reason: not valid java name */
    public float f9501for;

    /* renamed from: goto  reason: not valid java name */
    public int f9502goto;

    /* renamed from: if  reason: not valid java name */
    public FrameLayout f9503if;

    /* renamed from: new  reason: not valid java name */
    public Paint f9504new;

    /* renamed from: try  reason: not valid java name */
    public Rect f9505try;

    /* renamed from: com.lxj.xpopup.core.DrawerPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements PopupDrawerLayout.OnCloseListener {
        public Cdo() {
        }

        @Override // com.lxj.xpopup.widget.PopupDrawerLayout.OnCloseListener
        public void onClose() {
            DrawerPopupView.this.beforeDismiss();
            yv yvVar = DrawerPopupView.this.popupInfo.f2941throw;
            if (yvVar != null && yvVar == null) {
                throw null;
            }
            DrawerPopupView.this.doAfterDismiss();
        }

        @Override // com.lxj.xpopup.widget.PopupDrawerLayout.OnCloseListener
        public void onDrag(int i, float f, boolean z) {
            DrawerPopupView drawerPopupView = DrawerPopupView.this;
            drawerPopupView.f9499do.isDrawStatusBarShadow = drawerPopupView.popupInfo.f2934public.booleanValue();
            yv yvVar = DrawerPopupView.this.popupInfo.f2941throw;
            DrawerPopupView drawerPopupView2 = DrawerPopupView.this;
            drawerPopupView2.f9501for = f;
            drawerPopupView2.postInvalidate();
        }

        @Override // com.lxj.xpopup.widget.PopupDrawerLayout.OnCloseListener
        public void onOpen() {
            DrawerPopupView.super.doAfterShow();
        }
    }

    /* renamed from: com.lxj.xpopup.core.DrawerPopupView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements ValueAnimator.AnimatorUpdateListener {
        public Cfor() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            DrawerPopupView.this.f9500else = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            DrawerPopupView.this.postInvalidate();
        }
    }

    /* renamed from: com.lxj.xpopup.core.DrawerPopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DrawerPopupView.this.dismiss();
        }
    }

    public DrawerPopupView(@NonNull Context context) {
        super(context);
        this.f9501for = 0.0f;
        this.f9504new = new Paint();
        this.f9498case = new ArgbEvaluator();
        this.f9502goto = 0;
        this.f9499do = (PopupDrawerLayout) findViewById(R$id.drawerLayout);
        this.f9503if = (FrameLayout) findViewById(R$id.drawerContentContainer);
        this.f9503if.addView(LayoutInflater.from(getContext()).inflate(getImplLayoutId(), (ViewGroup) this.f9503if, false));
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void dismiss() {
        qv qvVar = this.popupStatus;
        qv qvVar2 = qv.Dismissing;
        if (qvVar == qvVar2) {
            return;
        }
        this.popupStatus = qvVar2;
        if (this.popupInfo.f2938super.booleanValue()) {
            ow.m1984if(this);
        }
        clearFocus();
        m3598this(false);
        this.f9499do.close();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.popupInfo.f2934public.booleanValue()) {
            if (this.f9505try == null) {
                this.f9505try = new Rect(0, 0, getMeasuredWidth(), pw.m2080class());
            }
            this.f9504new.setColor(((Integer) this.f9498case.evaluate(this.f9501for, Integer.valueOf(this.f9502goto), Integer.valueOf(zu.f6263for))).intValue());
            canvas.drawRect(this.f9505try, this.f9504new);
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void doAfterShow() {
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void doDismissAnimation() {
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void doShowAnimation() {
        this.f9499do.open();
        m3598this(true);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getAnimationDuration() {
        return 0;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public cv getPopupAnimator() {
        return null;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupLayoutId() {
        return R$layout._xpopup_drawer_popup_view;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public View getTargetSizeView() {
        return getPopupImplView();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        this.f9499do.enableShadow = this.popupInfo.f2943try.booleanValue();
        this.f9499do.isCanClose = this.popupInfo.f2924for.booleanValue();
        this.f9499do.setOnCloseListener(new Cdo());
        getPopupImplView().setTranslationX(this.popupInfo.f2942throws);
        getPopupImplView().setTranslationY(this.popupInfo.f2918default);
        PopupDrawerLayout popupDrawerLayout = this.f9499do;
        pv pvVar = this.popupInfo.f2929native;
        if (pvVar == null) {
            pvVar = pv.Left;
        }
        popupDrawerLayout.setDrawerPosition(pvVar);
        this.f9499do.enableDrag = this.popupInfo.f2921extends.booleanValue();
        this.f9499do.setOnClickListener(new Cif());
    }

    /* renamed from: this  reason: not valid java name */
    public void m3598this(boolean z) {
        if (this.popupInfo.f2934public.booleanValue()) {
            ArgbEvaluator argbEvaluator = this.f9498case;
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(z ? 0 : zu.f6263for);
            objArr[1] = Integer.valueOf(z ? zu.f6263for : 0);
            ValueAnimator ofObject = ValueAnimator.ofObject(argbEvaluator, objArr);
            ofObject.addUpdateListener(new Cfor());
            ofObject.setDuration(zu.f6264if).start();
        }
    }
}
