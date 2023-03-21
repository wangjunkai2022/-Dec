package com.ss.android.socialbase.downloader.network;

import androidx.appcompat.widget.ActivityChooserView;
/* loaded from: classes7.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final double f12002a;
    public final int b;
    public double c = -1.0d;
    public int d;

    public d(double d) {
        this.f12002a = d;
        this.b = d == 0.0d ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : (int) Math.ceil(1.0d / d);
    }

    public void a(double d) {
        double d2 = 1.0d - this.f12002a;
        int i = this.d;
        if (i > this.b) {
            this.c = Math.exp((Math.log(d) * this.f12002a) + (Math.log(this.c) * d2));
        } else if (i > 0) {
            double d3 = (d2 * i) / (i + 1.0d);
            this.c = Math.exp((Math.log(d) * (1.0d - d3)) + (Math.log(this.c) * d3));
        } else {
            this.c = d;
        }
        this.d++;
    }

    public double a() {
        return this.c;
    }
}
