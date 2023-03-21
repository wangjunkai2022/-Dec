package com.apk;

import android.content.Context;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* compiled from: PageIndicatorView.java */
/* loaded from: classes8.dex */
public class sg extends xr0 {

    /* renamed from: case  reason: not valid java name */
    public int f4346case;

    /* renamed from: for  reason: not valid java name */
    public int f4347for;

    /* renamed from: if  reason: not valid java name */
    public Context f4348if;

    /* renamed from: new  reason: not valid java name */
    public int f4349new;

    /* renamed from: try  reason: not valid java name */
    public List<ec0> f4350try;

    public sg(Context context) {
        super(context, null, 0);
        this.f4348if = null;
        this.f4347for = 7;
        this.f4349new = 4;
        this.f4350try = null;
        this.f4348if = context;
        setGravity(17);
        setOrientation(0);
        this.f4347for = eg.m587catch(this.f4347for);
        this.f4349new = eg.m587catch(this.f4349new);
    }

    @Override // com.apk.xr0, com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        super.mo101do();
        try {
            if (this.f4350try == null || this.f4346case >= this.f4350try.size()) {
                return;
            }
            this.f4350try.get(this.f4346case).setImageResource(R.drawable.view_radius_indicator);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m2452for(int i) {
        List<ec0> list = this.f4350try;
        if (list == null) {
            this.f4350try = new ArrayList();
        } else {
            list.clear();
            removeAllViews();
        }
        int i2 = this.f4347for;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i2, i2);
        int i3 = this.f4349new;
        layoutParams.setMargins(i3, i3, i3, i3);
        for (int i4 = 0; i4 < i; i4++) {
            ec0 ec0Var = new ec0(this.f4348if);
            ec0Var.setImageResource(R.drawable.view_radius_indicator_gray);
            addView(ec0Var, layoutParams);
            this.f4350try.add(ec0Var);
        }
        if (this.f4350try.size() > 0) {
            this.f4350try.get(0).setImageResource(R.drawable.view_radius_indicator);
        }
    }

    public void setSelectedPage(int i) {
        this.f4346case = i;
        for (int i2 = 0; i2 < this.f4350try.size(); i2++) {
            if (i2 == i) {
                this.f4350try.get(i2).setImageResource(R.drawable.view_radius_indicator);
            } else {
                this.f4350try.get(i2).setImageResource(R.drawable.view_radius_indicator_gray);
            }
        }
    }
}
