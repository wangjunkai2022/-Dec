package com.apk;

import android.view.MotionEvent;
/* compiled from: ThrottledTouchEventHandler.java */
/* loaded from: classes7.dex */
public class at0 {

    /* renamed from: do  reason: not valid java name */
    public int f168do;

    /* renamed from: for  reason: not valid java name */
    public long f169for = 0;

    /* renamed from: if  reason: not valid java name */
    public bt0 f170if;

    public at0(bt0 bt0Var) {
        this.f168do = 16;
        this.f168do = 16;
        this.f170if = bt0Var;
    }

    /* renamed from: do  reason: not valid java name */
    public void m110do(MotionEvent motionEvent) {
        if (this.f170if == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f169for <= this.f168do) {
            return;
        }
        this.f169for = currentTimeMillis;
        this.f170if.update(motionEvent);
    }
}
