package com.apk;

import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.apk.y9;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.book.simulation.PageView;
/* compiled from: HorizonPageAnim.java */
/* loaded from: classes8.dex */
public abstract class x9 extends y9 {

    /* renamed from: default  reason: not valid java name */
    public boolean f5494default;

    /* renamed from: extends  reason: not valid java name */
    public boolean f5495extends;

    /* renamed from: finally  reason: not valid java name */
    public boolean f5496finally;

    /* renamed from: import  reason: not valid java name */
    public final int f5497import;

    /* renamed from: native  reason: not valid java name */
    public ViewGroup f5498native;

    /* renamed from: package  reason: not valid java name */
    public boolean f5499package;

    /* renamed from: public  reason: not valid java name */
    public ViewGroup f5500public;

    /* renamed from: return  reason: not valid java name */
    public boolean f5501return;

    /* renamed from: static  reason: not valid java name */
    public int f5502static;

    /* renamed from: switch  reason: not valid java name */
    public int f5503switch;

    /* renamed from: throws  reason: not valid java name */
    public boolean f5504throws;

    public x9(int i, int i2, ViewGroup viewGroup, y9.Cif cif) {
        super(i, i2, 0, 0, viewGroup, cif);
        this.f5501return = false;
        this.f5502static = 0;
        this.f5503switch = 0;
        this.f5504throws = false;
        this.f5494default = false;
        this.f5495extends = false;
        this.f5496finally = false;
        this.f5497import = ViewConfiguration.get(viewGroup.getContext()).getScaledTouchSlop();
        LinearLayout linearLayout = new LinearLayout(viewGroup.getContext());
        this.f5498native = linearLayout;
        linearLayout.setTag("CurView");
        LinearLayout linearLayout2 = new LinearLayout(viewGroup.getContext());
        this.f5500public = linearLayout2;
        linearLayout2.setTag("NextView");
        if (viewGroup.getChildCount() > 0) {
            viewGroup.removeAllViews();
        }
        viewGroup.addView(this.f5500public);
        viewGroup.addView(this.f5498native);
    }

    @Override // com.apk.y9
    /* renamed from: if  reason: not valid java name */
    public boolean mo2987if(MotionEvent motionEvent) {
        int i;
        int i2;
        float f;
        float f2;
        int i3;
        y9.Cdo cdo = y9.Cdo.NEXT;
        if (this.f5889super) {
            return true;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        float f3 = x;
        float f4 = y;
        mo36new(f3, f4);
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f5502static = 0;
            this.f5503switch = 0;
            this.f5504throws = false;
            this.f5495extends = false;
            this.f5494default = false;
            this.f5496finally = false;
            this.f5501return = false;
            this.f5499package = true;
            aa aaVar = (aa) this;
            aaVar.f5879catch = f3;
            aaVar.f5880class = f4;
            aaVar.m38try(f3);
            if (!this.f5887if.isFinished()) {
                this.f5887if.abortAnimation();
                this.f5496finally = false;
                mo36new(this.f5887if.getFinalX(), this.f5887if.getFinalY());
            }
        } else if (action == 1) {
            if (this.f5501return) {
                PageView pageView = PageView.this;
                pageView.f7177this = true;
                if (((NewBookReadActivity.Cif) pageView.f7166catch) != null) {
                    h2 h2Var = pageView.f7175new;
                    if (h2Var != null) {
                        h2Var.p = h2Var.q;
                        int currentItem = h2Var.f1671break.getCurrentItem();
                        h2Var.f1671break.setCurrentItem(h2Var.u ? currentItem - 1 : currentItem + 1, false);
                    }
                } else {
                    throw null;
                }
            }
            if (!this.f5495extends) {
                this.f5496finally = true;
                aa aaVar2 = (aa) this;
                if (aaVar2.f5501return) {
                    if (aaVar2.f61abstract > 0 && aaVar2.f5888new.equals(cdo)) {
                        i2 = (int) (aaVar2.f5892try - aaVar2.f5881const);
                    } else {
                        i2 = -((int) aaVar2.f5881const);
                    }
                    if (!aaVar2.f5888new.equals(cdo)) {
                        i2 = (int) (-(aaVar2.f5892try + aaVar2.f5881const));
                    }
                    if (aaVar2.f62continue > 0) {
                        i3 = (int) (aaVar2.f5878case - aaVar2.f5884final);
                    } else {
                        i3 = -((int) aaVar2.f5884final);
                    }
                    aaVar2.f5889super = true;
                } else {
                    if (aaVar2.f61abstract > 0 && aaVar2.f5888new.equals(cdo)) {
                        i = -((int) (aaVar2.f5892try + aaVar2.f5881const));
                    } else {
                        float f5 = aaVar2.f5892try;
                        i = (int) ((f5 - aaVar2.f5881const) + f5);
                    }
                    i2 = i;
                    if (aaVar2.f62continue > 0) {
                        f = aaVar2.f5878case;
                        f2 = aaVar2.f5884final;
                    } else {
                        f = 1.0f;
                        f2 = aaVar2.f5884final;
                    }
                    i3 = (int) (f - f2);
                }
                aaVar2.f5887if.startScroll((int) aaVar2.f5881const, (int) aaVar2.f5884final, i2, i3, 250);
                aaVar2.f66private.removeMessages(1103);
                aaVar2.f66private.sendEmptyMessageDelayed(1103, 250L);
                this.f5882do.invalidate();
            }
        } else if (action == 2) {
            if (!this.f5504throws) {
                this.f5504throws = Math.abs(this.f5879catch - f3) > ((float) this.f5497import) || Math.abs(this.f5880class - f4) > ((float) this.f5497import);
            }
            if (this.f5504throws) {
                if (this.f5502static == 0 && this.f5503switch == 0) {
                    if (f3 - this.f5879catch > 0.0f) {
                        this.f5494default = false;
                        boolean m3361if = ((PageView.Cdo) this.f5885for).m3361if(this.f5499package);
                        this.f5499package = false;
                        mo34for(y9.Cdo.PRE);
                        if (!m3361if) {
                            this.f5495extends = true;
                            return true;
                        }
                    } else {
                        this.f5494default = true;
                        boolean m3360do = ((PageView.Cdo) this.f5885for).m3360do(this.f5499package);
                        this.f5499package = false;
                        mo34for(cdo);
                        if (!m3360do) {
                            this.f5495extends = true;
                            return true;
                        }
                    }
                } else {
                    if (this.f5494default) {
                        this.f5501return = x - this.f5502static > 0;
                    } else {
                        this.f5501return = x - this.f5502static < 0;
                    }
                    this.f5882do.invalidate();
                }
                this.f5502static = x;
                this.f5503switch = y;
                this.f5496finally = true;
            }
        }
        return true;
    }
}
