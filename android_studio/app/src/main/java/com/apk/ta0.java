package com.apk;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;

/* compiled from: SmartKeyboardManager.java */
/* loaded from: classes7.dex */
public class ta0 extends l80 {

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ za0 f4670if;

    public ta0(za0 za0Var) {
        this.f4670if = za0Var;
    }

    @Override // com.apk.l80
    /* renamed from: do */
    public void mo1614do(View view) {
        if (this.f4670if.f6154case.isShown()) {
            za0.m3151if(this.f4670if);
            return;
        }
        View view2 = this.f4670if.f6159if;
        if (view2 != null) {
            if (ja0.m1299else(view2.getRootView())) {
                za0 za0Var = this.f4670if;
                za0Var.f6154case.setVisibility(0);
                ViewGroup.LayoutParams layoutParams = za0Var.f6154case.getLayoutParams();
                layoutParams.height = ja0.m1298do(za0Var.f6155do);
                za0Var.f6154case.setLayoutParams(layoutParams);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(za0Var.f6154case, "alpha", 0.0f, 1.0f);
                ofFloat.setDuration(150L);
                ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
                ofFloat.addListener(new va0(za0Var));
                ofFloat.start();
                return;
            }
            za0 za0Var2 = this.f4670if;
            if (za0Var2.f6160new.isShown()) {
                za0Var2.f6160new.setVisibility(8);
            }
            za0Var2.f6154case.setVisibility(0);
            ViewGroup.LayoutParams layoutParams2 = za0Var2.f6154case.getLayoutParams();
            layoutParams2.height = ja0.m1298do(za0Var2.f6155do);
            za0Var2.f6154case.setLayoutParams(layoutParams2);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(za0Var2.f6154case, "alpha", 0.0f, 1.0f);
            ofFloat2.setDuration(150L);
            ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
            ofFloat2.addListener(new na0(za0Var2));
            ofFloat2.start();
        }
    }
}
