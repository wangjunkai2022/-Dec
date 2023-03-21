package com.apk;

import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.apk.al;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* compiled from: ActiveResources.java */
/* loaded from: classes8.dex */
public final class kk {

    /* renamed from: do  reason: not valid java name */
    public final boolean f2577do;

    /* renamed from: for  reason: not valid java name */
    public final ReferenceQueue<al<?>> f2578for;
    @VisibleForTesting

    /* renamed from: if  reason: not valid java name */
    public final Map<kj, Cif> f2579if;

    /* renamed from: new  reason: not valid java name */
    public al.Cdo f2580new;

    /* compiled from: ActiveResources.java */
    /* renamed from: com.apk.kk$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ThreadFactory {

        /* compiled from: ActiveResources.java */
        /* renamed from: com.apk.kk$do$do  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes8.dex */
        public class RunnableC0067do implements Runnable {

            /* renamed from: do  reason: not valid java name */
            public final /* synthetic */ Runnable f2581do;

            public RunnableC0067do(Cdo cdo, Runnable runnable) {
                this.f2581do = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.f2581do.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(new RunnableC0067do(this, runnable), "glide-active-resources");
        }
    }

    /* compiled from: ActiveResources.java */
    @VisibleForTesting
    /* renamed from: com.apk.kk$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cif extends WeakReference<al<?>> {

        /* renamed from: do  reason: not valid java name */
        public final kj f2582do;
        @Nullable

        /* renamed from: for  reason: not valid java name */
        public gl<?> f2583for;

        /* renamed from: if  reason: not valid java name */
        public final boolean f2584if;

        public Cif(@NonNull kj kjVar, @NonNull al<?> alVar, @NonNull ReferenceQueue<? super al<?>> referenceQueue, boolean z) {
            super(alVar, referenceQueue);
            gl<?> glVar;
            eg.m593else(kjVar, "Argument must not be null");
            this.f2582do = kjVar;
            if (alVar.f115do && z) {
                glVar = alVar.f117for;
                eg.m593else(glVar, "Argument must not be null");
            } else {
                glVar = null;
            }
            this.f2583for = glVar;
            this.f2584if = alVar.f115do;
        }
    }

    public kk(boolean z) {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new Cdo());
        this.f2579if = new HashMap();
        this.f2578for = new ReferenceQueue<>();
        this.f2577do = z;
        newSingleThreadExecutor.execute(new lk(this));
    }

    /* renamed from: do  reason: not valid java name */
    public synchronized void m1512do(kj kjVar, al<?> alVar) {
        Cif put = this.f2579if.put(kjVar, new Cif(kjVar, alVar, this.f2578for, this.f2577do));
        if (put != null) {
            put.f2583for = null;
            put.clear();
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m1513if(@NonNull Cif cif) {
        synchronized (this) {
            this.f2579if.remove(cif.f2582do);
            if (cif.f2584if && cif.f2583for != null) {
                this.f2580new.mo70do(cif.f2582do, new al<>(cif.f2583for, true, false, cif.f2582do, this.f2580new));
            }
        }
    }
}
