package com.apk;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.apk.h40;
/* compiled from: DrawableBar.java */
/* loaded from: classes8.dex */
public class g40 implements h40 {

    /* renamed from: do  reason: not valid java name */
    public Context f1503do;

    /* renamed from: for  reason: not valid java name */
    public View f1504for;

    /* renamed from: if  reason: not valid java name */
    public h40.Cdo f1505if;

    /* renamed from: new  reason: not valid java name */
    public int f1506new;

    /* renamed from: try  reason: not valid java name */
    public Drawable f1507try;

    public g40(Context context, int i, h40.Cdo cdo) {
        Drawable m1661for = lq0.m1661for(context.getApplicationContext(), tr0.m2617do(i));
        this.f1503do = context;
        View view = new View(context);
        this.f1504for = view;
        this.f1507try = m1661for;
        view.setBackground(m1661for);
        this.f1505if = cdo;
        this.f1506new = i;
    }

    @Override // com.apk.h40
    /* renamed from: do */
    public void mo748do() {
        try {
            Drawable m1661for = lq0.m1661for(this.f1503do.getApplicationContext(), tr0.m2617do(this.f1506new));
            this.f1507try = m1661for;
            this.f1504for.setBackground(m1661for);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.h40
    /* renamed from: for */
    public int mo450for(int i) {
        return this.f1507try.getIntrinsicHeight();
    }

    @Override // com.apk.h40
    public h40.Cdo getGravity() {
        return this.f1505if;
    }

    @Override // com.apk.h40
    /* renamed from: if */
    public View mo749if() {
        return this.f1504for;
    }

    @Override // com.apk.h40
    /* renamed from: new */
    public int mo451new(int i) {
        return this.f1507try.getIntrinsicWidth();
    }

    @Override // com.apk.h40
    public void onPageScrolled(int i, float f, int i2) {
    }
}
