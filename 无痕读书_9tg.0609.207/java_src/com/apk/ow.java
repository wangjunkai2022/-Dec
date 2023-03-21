package com.apk;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import com.lxj.xpopup.core.BasePopupView;
import java.util.HashMap;
/* compiled from: KeyboardUtils.java */
/* loaded from: classes8.dex */
public final class ow {

    /* renamed from: do  reason: not valid java name */
    public static int f3523do;

    /* renamed from: if  reason: not valid java name */
    public static ViewTreeObserver.OnGlobalLayoutListener f3525if;

    /* renamed from: for  reason: not valid java name */
    public static HashMap<View, Cif> f3524for = new HashMap<>();

    /* renamed from: new  reason: not valid java name */
    public static int f3526new = 0;

    /* compiled from: KeyboardUtils.java */
    /* renamed from: com.apk.ow$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Window f3527do;

        public Cdo(Window window) {
            this.f3527do = window;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int m1982do = ow.m1982do(this.f3527do);
            if (ow.f3523do != m1982do) {
                for (Cif cif : ow.f3524for.values()) {
                    cif.mo1986do(m1982do);
                }
                ow.f3523do = m1982do;
            }
        }
    }

    /* compiled from: KeyboardUtils.java */
    /* renamed from: com.apk.ow$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do  reason: not valid java name */
        void mo1986do(int i);
    }

    /* renamed from: do  reason: not valid java name */
    public static int m1982do(Window window) {
        View decorView = window.getDecorView();
        if (decorView == null) {
            return f3523do;
        }
        Rect rect = new Rect();
        decorView.getWindowVisibleDisplayFrame(rect);
        int abs = Math.abs(decorView.getBottom() - rect.bottom);
        Resources system = Resources.getSystem();
        int identifier = system.getIdentifier("navigation_bar_height", "dimen", "android");
        if (abs <= (identifier != 0 ? system.getDimensionPixelSize(identifier) : 0)) {
            f3526new = abs;
            return 0;
        }
        return abs - f3526new;
    }

    /* renamed from: for  reason: not valid java name */
    public static void m1983for(Window window, BasePopupView basePopupView, Cif cif) {
        if ((window.getAttributes().flags & 512) != 0) {
            window.clearFlags(512);
        }
        f3523do = m1982do(window);
        f3524for.put(basePopupView, cif);
        ((FrameLayout) window.findViewById(16908290)).getViewTreeObserver().addOnGlobalLayoutListener(new Cdo(window));
    }

    /* renamed from: if  reason: not valid java name */
    public static void m1984if(View view) {
        ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    /* renamed from: new  reason: not valid java name */
    public static void m1985new(View view) {
        ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 2);
    }
}
