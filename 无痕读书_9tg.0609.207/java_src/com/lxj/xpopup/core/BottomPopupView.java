package com.lxj.xpopup.core;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.apk.cv;
import com.apk.hv;
import com.apk.lv;
import com.apk.ov;
import com.apk.ow;
import com.apk.pw;
import com.apk.qv;
import com.apk.yv;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import com.lxj.xpopup.widget.SmartDragLayout;
/* loaded from: classes8.dex */
public class BottomPopupView extends BasePopupView {
    public SmartDragLayout bottomPopupContainer;

    /* renamed from: com.lxj.xpopup.core.BottomPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements SmartDragLayout.OnCloseListener {
        public Cdo() {
        }

        @Override // com.lxj.xpopup.widget.SmartDragLayout.OnCloseListener
        public void onClose() {
            BottomPopupView.this.beforeDismiss();
            yv yvVar = BottomPopupView.this.popupInfo.f2941throw;
            if (yvVar != null && yvVar == null) {
                throw null;
            }
            BottomPopupView.this.doAfterDismiss();
        }

        @Override // com.lxj.xpopup.widget.SmartDragLayout.OnCloseListener
        public void onDrag(int i, float f, boolean z) {
            yv yvVar = BottomPopupView.this.popupInfo.f2941throw;
        }

        @Override // com.lxj.xpopup.widget.SmartDragLayout.OnCloseListener
        public void onOpen() {
            BottomPopupView.super.doAfterShow();
        }
    }

    /* renamed from: com.lxj.xpopup.core.BottomPopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BottomPopupView.this.dismiss();
        }
    }

    public BottomPopupView(@NonNull Context context) {
        super(context);
        this.bottomPopupContainer = (SmartDragLayout) findViewById(R$id.bottomPopupContainer);
    }

    public void addInnerContent() {
        this.bottomPopupContainer.addView(LayoutInflater.from(getContext()).inflate(getImplLayoutId(), (ViewGroup) this.bottomPopupContainer, false));
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void dismiss() {
        lv lvVar = this.popupInfo;
        if (lvVar == null) {
            return;
        }
        if (lvVar.f2921extends.booleanValue()) {
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
            this.bottomPopupContainer.close();
            return;
        }
        super.dismiss();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void doAfterShow() {
        if (this.popupInfo.f2921extends.booleanValue()) {
            return;
        }
        super.doAfterShow();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void doDismissAnimation() {
        if (this.popupInfo.f2921extends.booleanValue()) {
            this.bottomPopupContainer.close();
        } else {
            super.doDismissAnimation();
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void doShowAnimation() {
        if (this.popupInfo.f2921extends.booleanValue()) {
            this.bottomPopupContainer.open();
        } else {
            super.doShowAnimation();
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getAnimationDuration() {
        if (this.popupInfo.f2921extends.booleanValue()) {
            return 0;
        }
        return super.getAnimationDuration();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return 0;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getMaxWidth() {
        int i = this.popupInfo.f2915class;
        return i == 0 ? pw.m2084final(getContext()) : i;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public cv getPopupAnimator() {
        if (this.popupInfo.f2921extends.booleanValue()) {
            return null;
        }
        return new hv(getPopupContentView(), ov.TranslateFromBottom);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupLayoutId() {
        return R$layout._xpopup_bottom_popup_view;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public View getTargetSizeView() {
        return getPopupImplView();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        if (this.bottomPopupContainer.getChildCount() == 0) {
            addInnerContent();
        }
        this.bottomPopupContainer.enableDrag(this.popupInfo.f2921extends.booleanValue());
        this.bottomPopupContainer.dismissOnTouchOutside(this.popupInfo.f2924for.booleanValue());
        this.bottomPopupContainer.hasShadowBg(this.popupInfo.f2943try.booleanValue());
        this.bottomPopupContainer.isThreeDrag(this.popupInfo.f2944volatile);
        getPopupImplView().setTranslationX(this.popupInfo.f2942throws);
        getPopupImplView().setTranslationY(this.popupInfo.f2918default);
        ViewGroup viewGroup = (ViewGroup) getPopupContentView();
        viewGroup.post(new pw.Cdo(viewGroup, getMaxWidth(), getMaxHeight(), null));
        this.bottomPopupContainer.setOnCloseListener(new Cdo());
        this.bottomPopupContainer.setOnClickListener(new Cif());
    }
}
