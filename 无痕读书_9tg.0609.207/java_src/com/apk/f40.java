package com.apk;

import android.content.Context;
import android.view.View;
import com.apk.h40;
/* compiled from: ColorBar.java */
/* loaded from: classes8.dex */
public class f40 implements h40 {

    /* renamed from: case  reason: not valid java name */
    public int f1218case;

    /* renamed from: do  reason: not valid java name */
    public final Context f1219do;

    /* renamed from: for  reason: not valid java name */
    public final z30 f1220for;

    /* renamed from: if  reason: not valid java name */
    public h40.Cdo f1221if;

    /* renamed from: new  reason: not valid java name */
    public int f1222new;

    /* renamed from: try  reason: not valid java name */
    public int f1223try;

    public f40(Context context, int i, int i2) {
        h40.Cdo cdo = h40.Cdo.BOTTOM;
        z30 z30Var = new z30(context);
        this.f1220for = z30Var;
        this.f1219do = context;
        this.f1222new = i;
        z30Var.setBgColor(i);
        this.f1220for.setBackgroundColor(lq0.m1660do(context.getApplicationContext(), tr0.m2617do(i)));
        this.f1223try = i2;
        this.f1221if = cdo;
    }

    @Override // com.apk.h40
    /* renamed from: do  reason: not valid java name */
    public void mo748do() {
        try {
            this.f1220for.setBackgroundColor(lq0.m1660do(this.f1219do.getApplicationContext(), tr0.m2617do(this.f1222new)));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.h40
    /* renamed from: for */
    public int mo450for(int i) {
        int i2 = this.f1223try;
        return i2 == 0 ? i : i2;
    }

    @Override // com.apk.h40
    public h40.Cdo getGravity() {
        return this.f1221if;
    }

    @Override // com.apk.h40
    /* renamed from: if  reason: not valid java name */
    public View mo749if() {
        return this.f1220for;
    }

    @Override // com.apk.h40
    /* renamed from: new */
    public int mo451new(int i) {
        int i2 = this.f1218case;
        return i2 == 0 ? i : i2;
    }

    @Override // com.apk.h40
    public void onPageScrolled(int i, float f, int i2) {
    }
}
