package com.lxj.xpopup.impl;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.transition.ChangeBounds;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.pw;
import com.apk.zu;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import com.lxj.xpopup.core.CenterPopupView;
/* loaded from: classes8.dex */
public class LoadingPopupView extends CenterPopupView {

    /* renamed from: do  reason: not valid java name */
    public TextView f9593do;

    /* renamed from: if  reason: not valid java name */
    public CharSequence f9594if;

    /* renamed from: com.lxj.xpopup.impl.LoadingPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (LoadingPopupView.this.f9593do.getText().length() != 0) {
                TransitionManager.beginDelayedTransition((ViewGroup) LoadingPopupView.this.f9593do.getParent(), new TransitionSet().setDuration(zu.f6264if).addTransition(new ChangeBounds()));
            }
            LoadingPopupView.this.f9593do.setVisibility(0);
            LoadingPopupView loadingPopupView = LoadingPopupView.this;
            loadingPopupView.f9593do.setText(loadingPopupView.f9594if);
        }
    }

    public LoadingPopupView(@NonNull Context context, int i) {
        super(context);
        this.bindLayoutId = i;
        addInnerContent();
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        int i = this.bindLayoutId;
        return i != 0 ? i : R$layout._xpopup_center_impl_loading;
    }

    public CharSequence getTitle() {
        return this.f9594if;
    }

    /* renamed from: if  reason: not valid java name */
    public LoadingPopupView m3605if(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            this.f9594if = charSequence;
        }
        m3606this();
        return this;
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        this.f9593do = (TextView) findViewById(R$id.tv_title);
        getPopupImplView().setElevation(10.0f);
        if (this.bindLayoutId == 0) {
            getPopupImplView().setBackground(pw.m2078case(Color.parseColor("#dd111111"), this.popupInfo.f2922final));
        }
        m3606this();
    }

    /* renamed from: this  reason: not valid java name */
    public void m3606this() {
        CharSequence charSequence = this.f9594if;
        if (charSequence == null || charSequence.length() == 0 || this.f9593do == null) {
            return;
        }
        post(new Cdo());
    }
}
