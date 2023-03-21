package com.apk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
/* compiled from: HandlerPoster.java */
/* loaded from: classes7.dex */
public class ul0 extends Handler implements am0 {

    /* renamed from: do  reason: not valid java name */
    public final zl0 f4926do;

    /* renamed from: for  reason: not valid java name */
    public final rl0 f4927for;

    /* renamed from: if  reason: not valid java name */
    public final int f4928if;

    /* renamed from: new  reason: not valid java name */
    public boolean f4929new;

    public ul0(rl0 rl0Var, Looper looper, int i) {
        super(looper);
        this.f4927for = rl0Var;
        this.f4928if = i;
        this.f4926do = new zl0();
    }

    @Override // com.apk.am0
    /* renamed from: do */
    public void mo75do(em0 em0Var, Object obj) {
        yl0 m3084do = yl0.m3084do(em0Var, obj);
        synchronized (this) {
            this.f4926do.m3208do(m3084do);
            if (!this.f4929new) {
                this.f4929new = true;
                if (!sendMessage(obtainMessage())) {
                    throw new tl0("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                yl0 m3209if = this.f4926do.m3209if();
                if (m3209if == null) {
                    synchronized (this) {
                        m3209if = this.f4926do.m3209if();
                        if (m3209if == null) {
                            this.f4929new = false;
                            return;
                        }
                    }
                }
                this.f4927for.m2311for(m3209if);
            } while (SystemClock.uptimeMillis() - uptimeMillis < this.f4928if);
            if (sendMessage(obtainMessage())) {
                this.f4929new = true;
                return;
            }
            throw new tl0("Could not send handler message");
        } finally {
            this.f4929new = false;
        }
    }
}
