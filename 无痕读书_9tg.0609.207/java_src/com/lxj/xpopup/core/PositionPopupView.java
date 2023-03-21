package com.lxj.xpopup.core;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.apk.cv;
import com.apk.dv;
import com.apk.lv;
import com.apk.ov;
import com.apk.pw;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import com.lxj.xpopup.widget.PartShadowContainer;
/* loaded from: classes8.dex */
public class PositionPopupView extends BasePopupView {

    /* renamed from: do  reason: not valid java name */
    public PartShadowContainer f9533do;

    /* renamed from: com.lxj.xpopup.core.PositionPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PositionPopupView positionPopupView = PositionPopupView.this;
            lv lvVar = positionPopupView.popupInfo;
            if (lvVar.f2923finally) {
                PositionPopupView.this.f9533do.setTranslationX((!pw.m2094throw(positionPopupView.getContext()) ? pw.m2084final(PositionPopupView.this.getContext()) - PositionPopupView.this.f9533do.getMeasuredWidth() : -(pw.m2084final(PositionPopupView.this.getContext()) - PositionPopupView.this.f9533do.getMeasuredWidth())) / 2.0f);
            } else {
                positionPopupView.f9533do.setTranslationX(lvVar.f2942throws);
            }
            PositionPopupView positionPopupView2 = PositionPopupView.this;
            positionPopupView2.f9533do.setTranslationY(positionPopupView2.popupInfo.f2918default);
        }
    }

    public PositionPopupView(@NonNull Context context) {
        super(context);
        this.f9533do = (PartShadowContainer) findViewById(R$id.attachPopupContainer);
        this.f9533do.addView(LayoutInflater.from(getContext()).inflate(getImplLayoutId(), (ViewGroup) this.f9533do, false));
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public cv getPopupAnimator() {
        return new dv(getPopupContentView(), ov.ScaleAlphaFromCenter);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupLayoutId() {
        return R$layout._xpopup_attach_popup_view;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        pw.m2085for((ViewGroup) getPopupContentView(), getMaxWidth(), getMaxHeight(), new Cdo());
    }
}
