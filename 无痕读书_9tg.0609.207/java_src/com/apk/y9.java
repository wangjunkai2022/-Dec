package com.apk;

import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.Scroller;
/* compiled from: PageAnimation.java */
/* loaded from: classes8.dex */
public abstract class y9 {

    /* renamed from: break  reason: not valid java name */
    public int f5877break;

    /* renamed from: case  reason: not valid java name */
    public int f5878case;

    /* renamed from: catch  reason: not valid java name */
    public float f5879catch;

    /* renamed from: class  reason: not valid java name */
    public float f5880class;

    /* renamed from: const  reason: not valid java name */
    public float f5881const;

    /* renamed from: do  reason: not valid java name */
    public ViewGroup f5882do;

    /* renamed from: else  reason: not valid java name */
    public int f5883else;

    /* renamed from: final  reason: not valid java name */
    public float f5884final;

    /* renamed from: for  reason: not valid java name */
    public Cif f5885for;

    /* renamed from: goto  reason: not valid java name */
    public int f5886goto;

    /* renamed from: if  reason: not valid java name */
    public Scroller f5887if;

    /* renamed from: new  reason: not valid java name */
    public Cdo f5888new = Cdo.NONE;

    /* renamed from: super  reason: not valid java name */
    public boolean f5889super;

    /* renamed from: this  reason: not valid java name */
    public int f5890this;

    /* renamed from: throw  reason: not valid java name */
    public int f5891throw;

    /* renamed from: try  reason: not valid java name */
    public int f5892try;

    /* renamed from: while  reason: not valid java name */
    public i1 f5893while;

    /* compiled from: PageAnimation.java */
    /* renamed from: com.apk.y9$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public enum Cdo {
        NONE(true),
        NEXT(true),
        PRE(true),
        UP(false),
        DOWN(false);

        Cdo(boolean z) {
        }
    }

    /* compiled from: PageAnimation.java */
    /* renamed from: com.apk.y9$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
    }

    public y9(int i, int i2, int i3, int i4, final ViewGroup viewGroup, Cif cif) {
        this.f5892try = i;
        this.f5878case = i2;
        this.f5883else = i3;
        this.f5886goto = i4;
        this.f5890this = i - (i3 * 2);
        this.f5877break = i2 - (i4 * 2);
        this.f5882do = viewGroup;
        this.f5885for = cif;
        viewGroup.post(new Runnable() { // from class: com.apk.w9
            @Override // java.lang.Runnable
            public final void run() {
                y9.this.m3057do(viewGroup);
            }
        });
        this.f5887if = new Scroller(this.f5882do.getContext(), new AccelerateInterpolator());
    }

    /* renamed from: do  reason: not valid java name */
    public /* synthetic */ void m3057do(ViewGroup viewGroup) {
        this.f5890this = viewGroup.getWidth();
        this.f5877break = viewGroup.getHeight();
    }

    /* renamed from: for */
    public void mo34for(Cdo cdo) {
        this.f5888new = cdo;
    }

    /* renamed from: if */
    public abstract boolean mo2987if(MotionEvent motionEvent);

    /* renamed from: new */
    public void mo36new(float f, float f2) {
        this.f5881const = f;
        this.f5884final = f2;
    }
}
