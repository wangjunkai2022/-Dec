package com.apk;

import java.util.logging.Level;

/* compiled from: BackgroundPoster.java */
/* loaded from: classes7.dex */
public final class ql0 implements Runnable, am0 {

    /* renamed from: do  reason: not valid java name */
    public final zl0 f3886do = new zl0();

    /* renamed from: for  reason: not valid java name */
    public volatile boolean f3887for;

    /* renamed from: if  reason: not valid java name */
    public final rl0 f3888if;

    public ql0(rl0 rl0Var) {
        this.f3888if = rl0Var;
    }

    @Override // com.apk.am0
    /* renamed from: do */
    public void mo75do(em0 em0Var, Object obj) {
        yl0 m3084do = yl0.m3084do(em0Var, obj);
        synchronized (this) {
            this.f3886do.m3208do(m3084do);
            if (!this.f3887for) {
                this.f3887for = true;
                this.f3888if.f4113break.execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        yl0 m3209if;
        while (true) {
            try {
                zl0 zl0Var = this.f3886do;
                synchronized (zl0Var) {
                    if (zl0Var.f6217do == null) {
                        zl0Var.wait(1000);
                    }
                    m3209if = zl0Var.m3209if();
                }
                if (m3209if == null) {
                    synchronized (this) {
                        m3209if = this.f3886do.m3209if();
                        if (m3209if == null) {
                            return;
                        }
                    }
                }
                this.f3888if.m2311for(m3209if);
            } catch (InterruptedException e) {
                vl0 vl0Var = this.f3888if.f4124import;
                Level level = Level.WARNING;
                vl0Var.mo866if(level, Thread.currentThread().getName() + " was interruppted", e);
                return;
            } finally {
                this.f3887for = false;
            }
        }
    }
}
