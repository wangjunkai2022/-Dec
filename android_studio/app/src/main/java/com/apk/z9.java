package com.apk;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.apk.y9;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.book.simulation.PageView;

/* compiled from: PageView.java */
/* loaded from: classes8.dex */
public class z9 extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ PageView f6152do;

    public z9(PageView pageView) {
        this.f6152do = pageView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        PageView pageView = this.f6152do;
        pageView.f7167class = false;
        y9 y9Var = pageView.f7178try;
        if (y9Var != null) {
            y9Var.mo2987if(motionEvent);
            return true;
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        PageView pageView = this.f6152do;
        pageView.f7167class = true;
        y9 y9Var = pageView.f7178try;
        if (y9Var != null) {
            y9Var.mo2987if(motionEvent2);
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        y9.Cdo cdo = y9.Cdo.NEXT;
        this.f6152do.f7167class = true;
        float x = motionEvent.getX();
        PageView pageView = this.f6152do;
        double d = x / pageView.f7169do;
        if (d < 0.35d) {
            if (da.m416class()) {
                PageView pageView2 = this.f6152do;
                ((PageView.Cdo) pageView2.f7165case).m3360do(true);
                y9 y9Var = pageView2.f7178try;
                if (y9Var != null) {
                    y9Var.mo34for(cdo);
                }
                return true;
            }
            PageView pageView3 = this.f6152do;
            boolean m3361if = ((PageView.Cdo) pageView3.f7165case).m3361if(true);
            y9 y9Var2 = pageView3.f7178try;
            if (y9Var2 != null) {
                y9Var2.mo34for(y9.Cdo.PRE);
            }
            if (!m3361if) {
                return true;
            }
        } else if (d > 0.65d) {
            boolean m3360do = ((PageView.Cdo) pageView.f7165case).m3360do(true);
            y9 y9Var3 = pageView.f7178try;
            if (y9Var3 != null) {
                y9Var3.mo34for(cdo);
            }
            if (!m3360do) {
                return true;
            }
        } else {
            PageView.Cif cif = pageView.f7166catch;
            if (cif != null) {
                NewBookReadActivity.this.mo1607throw();
            }
            return true;
        }
        return super.onSingleTapUp(motionEvent);
    }
}
