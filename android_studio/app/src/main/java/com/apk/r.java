package com.apk;

import java.lang.Thread;

/* compiled from: CrashHandler.java */
/* loaded from: classes8.dex */
public class r implements Thread.UncaughtExceptionHandler {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ t f3972do;

    public r(t tVar) {
        this.f3972do = tVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            if (this.f3972do.f4623do != null) {
                this.f3972do.f4623do.m2569do(thread, th);
            }
            t.m2567do(this.f3972do, th, false);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
