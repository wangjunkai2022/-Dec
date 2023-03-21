package com.lxj.xpopup.impl;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.apk.cv;
import com.apk.hv;
import com.apk.iv;
import com.apk.ov;
import com.apk.pv;
import com.apk.pw;
import com.apk.tv;
import com.codelibrary.R$layout;
import com.lxj.xpopup.core.BasePopupView;

/* loaded from: classes8.dex */
public abstract class PartShadowPopupView extends BasePopupView {

    /* renamed from: do  reason: not valid java name */
    public boolean f9596do;

    /* renamed from: com.lxj.xpopup.impl.PartShadowPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PartShadowPopupView.this.m3607if();
        }
    }

    /* renamed from: com.lxj.xpopup.impl.PartShadowPopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements tv {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ PartShadowPopupView f9598do;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public cv getPopupAnimator() {
        return new hv(getPopupImplView(), this.f9596do ? ov.TranslateFromBottom : ov.TranslateFromTop);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupLayoutId() {
        return R$layout._xpopup_partshadow_popup_view;
    }

    /* renamed from: if  reason: not valid java name */
    public void m3607if() {
        if (this.popupInfo.f2920else != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getPopupContentView().getLayoutParams();
            marginLayoutParams.width = getMeasuredWidth();
            int[] iArr = new int[2];
            this.popupInfo.f2920else.getLocationOnScreen(iArr);
            Rect rect = new Rect(iArr[0], iArr[1], this.popupInfo.f2920else.getMeasuredWidth() + iArr[0], this.popupInfo.f2920else.getMeasuredHeight() + iArr[1]);
            if (this.popupInfo.f2923finally && getPopupImplView() != null) {
                getPopupImplView().setTranslationX(((rect.left + rect.right) / 2) - (getPopupImplView().getMeasuredWidth() / 2));
            } else {
                int i = rect.left + this.popupInfo.f2942throws;
                if (getPopupImplView().getMeasuredWidth() + i > pw.m2084final(getContext())) {
                    i -= (getPopupImplView().getMeasuredWidth() + i) - pw.m2084final(getContext());
                }
                getPopupImplView().setTranslationX(i);
            }
            if (((rect.height() / 2) + rect.top > getMeasuredHeight() / 2 || this.popupInfo.f2929native == pv.Top) && this.popupInfo.f2929native != pv.Bottom) {
                marginLayoutParams.height = rect.top;
                this.f9596do = true;
                View childAt = ((ViewGroup) getPopupContentView()).getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                layoutParams.gravity = 80;
                if (getMaxHeight() != 0) {
                    layoutParams.height = Math.min(childAt.getMeasuredHeight(), getMaxHeight());
                }
                childAt.setLayoutParams(layoutParams);
            } else {
                int measuredHeight = getMeasuredHeight();
                int i2 = rect.bottom;
                marginLayoutParams.height = measuredHeight - i2;
                this.f9596do = false;
                marginLayoutParams.topMargin = i2;
                View childAt2 = ((ViewGroup) getPopupContentView()).getChildAt(0);
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) childAt2.getLayoutParams();
                layoutParams2.gravity = 48;
                if (getMaxHeight() != 0) {
                    layoutParams2.height = Math.min(childAt2.getMeasuredHeight(), getMaxHeight());
                }
                childAt2.setLayoutParams(layoutParams2);
            }
            getPopupContentView().setLayoutParams(marginLayoutParams);
            getPopupImplView().setTranslationY(this.popupInfo.f2918default);
            throw null;
        }
        throw new IllegalArgumentException("atView must not be null for PartShadowPopupView！");
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        throw null;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new Cdo());
    }

    @Override // com.lxj.xpopup.core.BasePopupView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.popupInfo.f2924for.booleanValue()) {
            dismiss();
        }
        iv ivVar = this.dialog;
        if (ivVar != null && this.popupInfo.f2911abstract) {
            ivVar.m1288if(motionEvent);
        }
        return this.popupInfo.f2911abstract;
    }
}
