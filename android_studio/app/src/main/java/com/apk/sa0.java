package com.apk;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;

/* compiled from: SmartKeyboardManager.java */
/* loaded from: classes7.dex */
public class sa0 extends l80 {

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ za0 f4316if;

    public sa0(za0 za0Var) {
        this.f4316if = za0Var;
    }

    @Override // com.apk.l80
    /* renamed from: do */
    public void mo1614do(View view) {
        if (this.f4316if.f6160new.isShown()) {
            za0.m3149do(this.f4316if);
            return;
        }
        View view2 = this.f4316if.f6159if;
        if (view2 != null) {
            if (ja0.m1299else(view2.getRootView())) {
                za0 za0Var = this.f4316if;
                za0Var.f6160new.setVisibility(0);
                ViewGroup.LayoutParams layoutParams = za0Var.f6160new.getLayoutParams();
                layoutParams.height = ja0.m1298do(za0Var.f6155do);
                za0Var.f6160new.setLayoutParams(layoutParams);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(za0Var.f6160new, "alpha", 0.0f, 1.0f);
                ofFloat.setDuration(150L);
                ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
                ofFloat.addListener(new ua0(za0Var));
                ofFloat.start();
                return;
            }
            za0 za0Var2 = this.f4316if;
            if (za0Var2.f6154case.isShown()) {
                za0Var2.f6154case.setVisibility(8);
            }
            za0Var2.f6160new.setVisibility(0);
            ViewGroup.LayoutParams layoutParams2 = za0Var2.f6160new.getLayoutParams();
            layoutParams2.height = ja0.m1298do(za0Var2.f6155do);
            za0Var2.f6160new.setLayoutParams(layoutParams2);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(za0Var2.f6160new, "alpha", 0.0f, 1.0f);
            ofFloat2.setDuration(150L);
            ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
            ofFloat2.addListener(new ya0(za0Var2));
            ofFloat2.start();
        }
    }
}
