package com.apk;

/* compiled from: ProgressMonitor.java */
/* loaded from: classes7.dex */
public class pf0 {

    /* renamed from: do  reason: not valid java name */
    public int f3631do;

    /* renamed from: for  reason: not valid java name */
    public long f3632for;

    /* renamed from: if  reason: not valid java name */
    public long f3633if;

    /* renamed from: new  reason: not valid java name */
    public int f3634new;

    /* renamed from: try  reason: not valid java name */
    public String f3635try;

    public pf0() {
        m2033do();
        this.f3634new = 0;
    }

    /* renamed from: do  reason: not valid java name */
    public void m2033do() {
        this.f3631do = 0;
        this.f3635try = null;
        this.f3633if = 0L;
        this.f3632for = 0L;
        this.f3634new = 0;
    }

    /* renamed from: if  reason: not valid java name */
    public void m2034if(long j) {
        long j2 = this.f3632for + j;
        this.f3632for = j2;
        long j3 = this.f3633if;
        if (j3 > 0) {
            int i = (int) ((j2 * 100) / j3);
            this.f3634new = i;
            if (i > 100) {
                this.f3634new = 100;
            }
        }
    }

    public void setResult(int i) {
    }
}
