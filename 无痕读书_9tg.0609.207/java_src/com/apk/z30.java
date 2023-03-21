package com.apk;

import android.content.Context;
/* compiled from: ColorBarView.java */
/* loaded from: classes8.dex */
public class z30 extends os0 {

    /* renamed from: if  reason: not valid java name */
    public int f6117if;

    public z30(Context context) {
        super(context, null, 0);
    }

    @Override // com.apk.os0, com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        try {
            setBackgroundColor(lq0.m1660do(getContext().getApplicationContext(), tr0.m2617do(this.f6117if)));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View
    public boolean isInEditMode() {
        return true;
    }

    public void setBgColor(int i) {
        this.f6117if = i;
    }
}
