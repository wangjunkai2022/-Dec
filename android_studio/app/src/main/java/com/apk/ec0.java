package com.apk;

import android.content.Context;

/* compiled from: BannerIndicatorView.java */
/* loaded from: classes7.dex */
public class ec0 extends wr0 {

    /* renamed from: for  reason: not valid java name */
    public int f1032for;

    public ec0(Context context) {
        super(context, null);
    }

    @Override // com.apk.wr0, com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        super.mo101do();
        try {
            if (this.f1032for != 0) {
                setImageResource(tr0.m2617do(this.f1032for));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.wr0, androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        this.f1032for = i;
    }
}
