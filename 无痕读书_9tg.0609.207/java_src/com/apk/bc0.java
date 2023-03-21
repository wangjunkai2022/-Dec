package com.apk;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* compiled from: WeakHandler.java */
/* loaded from: classes7.dex */
public class bc0 {

    /* renamed from: do  reason: not valid java name */
    public final Cif f285do;
    @VisibleForTesting

    /* renamed from: for  reason: not valid java name */
    public final Cdo f286for;

    /* renamed from: if  reason: not valid java name */
    public Lock f287if;

    /* compiled from: WeakHandler.java */
    /* renamed from: com.apk.bc0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo {
        @Nullable

        /* renamed from: do  reason: not valid java name */
        public Cdo f288do;
        @NonNull

        /* renamed from: for  reason: not valid java name */
        public final Runnable f289for;
        @Nullable

        /* renamed from: if  reason: not valid java name */
        public Cdo f290if;
        @NonNull

        /* renamed from: new  reason: not valid java name */
        public final Cfor f291new;
        @NonNull

        /* renamed from: try  reason: not valid java name */
        public Lock f292try;

        public Cdo(@NonNull Lock lock, @NonNull Runnable runnable) {
            this.f289for = runnable;
            this.f292try = lock;
            this.f291new = new Cfor(new WeakReference(runnable), new WeakReference(this));
        }

        /* renamed from: do  reason: not valid java name */
        public Cfor m170do() {
            this.f292try.lock();
            try {
                if (this.f290if != null) {
                    this.f290if.f288do = this.f288do;
                }
                if (this.f288do != null) {
                    this.f288do.f290if = this.f290if;
                }
                this.f290if = null;
                this.f288do = null;
                this.f292try.unlock();
                return this.f291new;
            } catch (Throwable th) {
                this.f292try.unlock();
                throw th;
            }
        }
    }

    /* compiled from: WeakHandler.java */
    /* renamed from: com.apk.bc0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cfor implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final WeakReference<Runnable> f293do;

        /* renamed from: if  reason: not valid java name */
        public final WeakReference<Cdo> f294if;

        public Cfor(WeakReference<Runnable> weakReference, WeakReference<Cdo> weakReference2) {
            this.f293do = weakReference;
            this.f294if = weakReference2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.f293do.get();
            Cdo cdo = this.f294if.get();
            if (cdo != null) {
                cdo.m170do();
            }
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* compiled from: WeakHandler.java */
    /* renamed from: com.apk.bc0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cif extends Handler {

        /* renamed from: do  reason: not valid java name */
        public final WeakReference<Handler.Callback> f295do = null;

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            Handler.Callback callback;
            WeakReference<Handler.Callback> weakReference = this.f295do;
            if (weakReference == null || (callback = weakReference.get()) == null) {
                return;
            }
            callback.handleMessage(message);
        }
    }

    public bc0() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f287if = reentrantLock;
        this.f286for = new Cdo(reentrantLock, null);
        this.f285do = new Cif();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
        r4 = r1.m170do();
     */
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m168do(java.lang.Runnable r4) {
        /*
            r3 = this;
            com.apk.bc0$do r0 = r3.f286for
            java.util.concurrent.locks.Lock r1 = r0.f292try
            r1.lock()
            com.apk.bc0$do r1 = r0.f288do     // Catch: java.lang.Throwable -> L2a
        L9:
            if (r1 == 0) goto L1c
            java.lang.Runnable r2 = r1.f289for     // Catch: java.lang.Throwable -> L2a
            if (r2 != r4) goto L19
            com.apk.bc0$for r4 = r1.m170do()     // Catch: java.lang.Throwable -> L2a
            java.util.concurrent.locks.Lock r0 = r0.f292try
            r0.unlock()
            goto L22
        L19:
            com.apk.bc0$do r1 = r1.f288do     // Catch: java.lang.Throwable -> L2a
            goto L9
        L1c:
            java.util.concurrent.locks.Lock r4 = r0.f292try
            r4.unlock()
            r4 = 0
        L22:
            if (r4 == 0) goto L29
            com.apk.bc0$if r0 = r3.f285do
            r0.removeCallbacks(r4)
        L29:
            return
        L2a:
            r4 = move-exception
            java.util.concurrent.locks.Lock r0 = r0.f292try
            r0.unlock()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.bc0.m168do(java.lang.Runnable):void");
    }

    /* renamed from: if  reason: not valid java name */
    public final Cfor m169if(@NonNull Runnable runnable) {
        if (runnable != null) {
            Cdo cdo = new Cdo(this.f287if, runnable);
            Cdo cdo2 = this.f286for;
            cdo2.f292try.lock();
            try {
                if (cdo2.f288do != null) {
                    cdo2.f288do.f290if = cdo;
                }
                cdo.f288do = cdo2.f288do;
                cdo2.f288do = cdo;
                cdo.f290if = cdo2;
                cdo2.f292try.unlock();
                return cdo.f291new;
            } catch (Throwable th) {
                cdo2.f292try.unlock();
                throw th;
            }
        }
        throw new NullPointerException("Runnable can't be null");
    }
}
