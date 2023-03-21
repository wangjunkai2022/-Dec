package com.apk;

import android.view.View;
import java.util.Calendar;
/* compiled from: TrBtnClickListener.java */
/* loaded from: classes7.dex */
public abstract class l80 implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public long f2769do = 0;

    /* renamed from: do  reason: not valid java name */
    public abstract void mo1614do(View view);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long timeInMillis = Calendar.getInstance().getTimeInMillis();
        if (timeInMillis - this.f2769do > 500) {
            this.f2769do = timeInMillis;
            mo1614do(view);
        }
    }
}
