package com.apk;

import android.app.Activity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.codelibrary.R$style;
/* compiled from: PopBase.java */
/* loaded from: classes8.dex */
public class lt {

    /* renamed from: do  reason: not valid java name */
    public Activity f2903do;

    /* renamed from: for  reason: not valid java name */
    public boolean f2904for;

    /* renamed from: if  reason: not valid java name */
    public PopupWindow f2905if;

    /* renamed from: new  reason: not valid java name */
    public float f2906new;

    /* renamed from: try  reason: not valid java name */
    public Cdo f2907try;

    /* compiled from: PopBase.java */
    /* renamed from: com.apk.lt$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
    }

    public lt(Activity activity, View view, Cdo cdo) {
        int i = R$style.popShowAnim_scale;
        this.f2906new = 0.6f;
        this.f2903do = activity;
        this.f2907try = cdo;
        int i2 = activity.getResources().getDisplayMetrics().widthPixels;
        if (view == null) {
            return;
        }
        PopupWindow popupWindow = new PopupWindow(view, -2, -2, true);
        this.f2905if = popupWindow;
        popupWindow.setBackgroundDrawable(null);
        this.f2905if.setAnimationStyle(i);
        this.f2905if.setInputMethodMode(1);
        this.f2905if.getContentView().measure(0, 0);
        this.f2905if.setOnDismissListener(new it(this));
        view.setOnTouchListener(new jt(this));
        view.setFocusableInTouchMode(true);
        view.setOnKeyListener(new kt(this));
    }

    /* renamed from: do  reason: not valid java name */
    public final void m1668do(float f) {
        Activity activity = this.f2903do;
        if (activity == null || activity.isFinishing() || this.f2903do.getWindow() == null) {
            return;
        }
        WindowManager.LayoutParams attributes = this.f2903do.getWindow().getAttributes();
        attributes.alpha = f;
        this.f2903do.getWindow().setAttributes(attributes);
    }

    /* renamed from: if  reason: not valid java name */
    public void m1669if() {
        PopupWindow popupWindow = this.f2905if;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.f2905if.dismiss();
    }
}
