package com.apk;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;

/* compiled from: SmartKeyboardManager.java */
/* loaded from: classes7.dex */
public class za0 {

    /* renamed from: case  reason: not valid java name */
    public final View f6154case;

    /* renamed from: do  reason: not valid java name */
    public final Activity f6155do;

    /* renamed from: else  reason: not valid java name */
    public final View f6156else;

    /* renamed from: for  reason: not valid java name */
    public final EditText f6157for;

    /* renamed from: goto  reason: not valid java name */
    public final InputMethodManager f6158goto;

    /* renamed from: if  reason: not valid java name */
    public final View f6159if;

    /* renamed from: new  reason: not valid java name */
    public final View f6160new;

    /* renamed from: this  reason: not valid java name */
    public final Cif f6161this;

    /* renamed from: try  reason: not valid java name */
    public final View f6162try;

    /* compiled from: SmartKeyboardManager.java */
    /* renamed from: com.apk.za0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo {

        /* renamed from: case  reason: not valid java name */
        public View f6163case;

        /* renamed from: do  reason: not valid java name */
        public final Activity f6164do;

        /* renamed from: else  reason: not valid java name */
        public View f6165else;

        /* renamed from: for  reason: not valid java name */
        public EditText f6166for;

        /* renamed from: goto  reason: not valid java name */
        public InputMethodManager f6167goto;

        /* renamed from: if  reason: not valid java name */
        public View f6168if;

        /* renamed from: new  reason: not valid java name */
        public View f6169new;

        /* renamed from: this  reason: not valid java name */
        public Cif f6170this;

        /* renamed from: try  reason: not valid java name */
        public View f6171try;

        public Cdo(Activity activity) {
            this.f6164do = activity;
        }
    }

    /* compiled from: SmartKeyboardManager.java */
    /* renamed from: com.apk.za0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cif {
    }

    public za0(Cdo cdo) {
        this.f6155do = cdo.f6164do;
        this.f6159if = cdo.f6168if;
        EditText editText = cdo.f6166for;
        this.f6157for = editText;
        this.f6160new = cdo.f6169new;
        this.f6162try = cdo.f6171try;
        this.f6154case = cdo.f6163case;
        this.f6156else = cdo.f6165else;
        this.f6158goto = cdo.f6167goto;
        this.f6161this = cdo.f6170this;
        editText.requestFocus();
        this.f6157for.setOnClickListener(new qa0(this));
        this.f6159if.addOnLayoutChangeListener(new ra0(this));
        this.f6162try.setOnClickListener(new sa0(this));
        this.f6156else.setOnClickListener(new ta0(this));
    }

    /* renamed from: case  reason: not valid java name */
    public static void m3148case(za0 za0Var) {
        ((LinearLayout.LayoutParams) za0Var.f6159if.getLayoutParams()).weight = 1.0f;
    }

    /* renamed from: do  reason: not valid java name */
    public static void m3149do(za0 za0Var) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(za0Var.f6160new, "alpha", 1.0f, 0.0f);
        ofFloat.setDuration(150L);
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat.addListener(new wa0(za0Var));
        ofFloat.start();
    }

    /* renamed from: for  reason: not valid java name */
    public static void m3150for(za0 za0Var) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) za0Var.f6159if.getLayoutParams();
        layoutParams.height = za0Var.f6159if.getHeight();
        layoutParams.weight = 0.0f;
    }

    /* renamed from: if  reason: not valid java name */
    public static void m3151if(za0 za0Var) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(za0Var.f6154case, "alpha", 1.0f, 0.0f);
        ofFloat.setDuration(150L);
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat.addListener(new xa0(za0Var));
        ofFloat.start();
    }

    /* renamed from: try  reason: not valid java name */
    public static void m3152try(za0 za0Var) {
        za0Var.f6158goto.hideSoftInputFromWindow(za0Var.f6157for.getWindowToken(), 0);
    }

    /* renamed from: new  reason: not valid java name */
    public void m3153new() {
        this.f6157for.requestFocus();
        this.f6158goto.showSoftInput(this.f6157for, 0);
    }
}
