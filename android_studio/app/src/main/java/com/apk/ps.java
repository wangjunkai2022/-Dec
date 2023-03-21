package com.apk;

import android.content.Context;
import android.graphics.Rect;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;

/* compiled from: RefreshableBannerView.java */
/* loaded from: classes8.dex */
public class ps extends FrameLayout {

    /* renamed from: case  reason: not valid java name */
    public Cif f3738case;

    /* renamed from: do  reason: not valid java name */
    public boolean f3739do;

    /* renamed from: for  reason: not valid java name */
    public boolean f3740for;

    /* renamed from: if  reason: not valid java name */
    public boolean f3741if;

    /* renamed from: new  reason: not valid java name */
    public final Rect f3742new;

    /* renamed from: try  reason: not valid java name */
    public final ViewTreeObserver.OnScrollChangedListener f3743try;

    /* compiled from: RefreshableBannerView.java */
    /* renamed from: com.apk.ps$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ViewTreeObserver.OnScrollChangedListener {
        public Cdo() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            ps psVar = ps.this;
            psVar.f3741if = psVar.getGlobalVisibleRect(psVar.f3742new);
            ps psVar2 = ps.this;
            psVar2.m2076do(psVar2.f3741if);
        }
    }

    /* compiled from: RefreshableBannerView.java */
    /* renamed from: com.apk.ps$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        void a(boolean z);
    }

    public ps(Context context) {
        super(context);
        this.f3739do = true;
        this.f3741if = true;
        this.f3740for = true;
        this.f3742new = new Rect();
        this.f3743try = new Cdo();
    }

    /* renamed from: do  reason: not valid java name */
    public final void m2076do(boolean z) {
        boolean z2 = this.f3739do && this.f3741if;
        if (z) {
            if (!z2 || this.f3740for) {
                return;
            }
            this.f3740for = true;
            Cif cif = this.f3738case;
            if (cif != null) {
                cif.a(true);
            }
        } else if (z2 || !this.f3740for) {
        } else {
            this.f3740for = false;
            Cif cif2 = this.f3738case;
            if (cif2 != null) {
                cif2.a(false);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnScrollChangedListener(this.f3743try);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnScrollChangedListener(this.f3743try);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        boolean z = i == 0;
        this.f3739do = z;
        m2076do(z);
    }

    public void setVisibilityChangeListener(Cif cif) {
        this.f3738case = cif;
    }
}
