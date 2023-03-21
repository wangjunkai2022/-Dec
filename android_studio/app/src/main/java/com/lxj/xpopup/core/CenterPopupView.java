package com.lxj.xpopup.core;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.apk.cv;
import com.apk.dv;
import com.apk.ov;
import com.apk.pw;
import com.codelibrary.R$color;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;

/* loaded from: classes8.dex */
public class CenterPopupView extends BasePopupView {
    public int bindItemLayoutId;
    public int bindLayoutId;
    public FrameLayout centerPopupContainer;
    public View contentView;

    public CenterPopupView(@NonNull Context context) {
        super(context);
        this.centerPopupContainer = (FrameLayout) findViewById(R$id.centerPopupContainer);
    }

    public void addInnerContent() {
        View inflate = LayoutInflater.from(getContext()).inflate(getImplLayoutId(), (ViewGroup) this.centerPopupContainer, false);
        this.contentView = inflate;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) inflate.getLayoutParams();
        layoutParams.gravity = 17;
        this.centerPopupContainer.addView(this.contentView, layoutParams);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void applyDarkTheme() {
        super.applyDarkTheme();
        this.centerPopupContainer.setBackground(pw.m2078case(getResources().getColor(R$color._xpopup_dark_color), this.popupInfo.f2922final));
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void applyLightTheme() {
        super.applyLightTheme();
        this.centerPopupContainer.setBackground(pw.m2078case(getResources().getColor(R$color._xpopup_light_color), this.popupInfo.f2922final));
    }

    public void applyTheme() {
        if (this.bindLayoutId == 0) {
            if (this.popupInfo.f2917continue) {
                applyDarkTheme();
            } else {
                applyLightTheme();
            }
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return 0;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getMaxWidth() {
        int i = this.popupInfo.f2915class;
        return i == 0 ? (int) (pw.m2084final(getContext()) * 0.8f) : i;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public cv getPopupAnimator() {
        return new dv(getPopupContentView(), ov.ScaleAlphaFromCenter);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupLayoutId() {
        return R$layout._xpopup_center_popup_view;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        if (this.centerPopupContainer.getChildCount() == 0) {
            addInnerContent();
        }
        getPopupContentView().setTranslationX(this.popupInfo.f2942throws);
        getPopupContentView().setTranslationY(this.popupInfo.f2918default);
        ViewGroup viewGroup = (ViewGroup) getPopupContentView();
        viewGroup.post(new pw.Cdo(viewGroup, getMaxWidth(), getMaxHeight(), null));
    }

    @Override // com.lxj.xpopup.core.BasePopupView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setTranslationY(0.0f);
    }
}
