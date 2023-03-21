package com.apk;

import android.os.Looper;

/* compiled from: CrashHandler.java */
/* loaded from: classes8.dex */
public class q implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ t f3769do;

    public q(t tVar) {
        this.f3769do = tVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                Looper.loop();
            } catch (Throwable th) {
                try {
                    if (this.f3769do.f4623do != null) {
                        this.f3769do.f4623do.m2569do(Looper.getMainLooper().getThread(), th);
                    }
                    t.m2567do(this.f3769do, th, true);
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
        }
    }
}
