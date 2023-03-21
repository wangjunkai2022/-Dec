package com.apk;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* compiled from: Executors.java */
/* loaded from: classes8.dex */
public final class as {

    /* renamed from: do  reason: not valid java name */
    public static final Executor f159do = new Cdo();

    /* renamed from: if  reason: not valid java name */
    public static final Executor f160if = new Cif();

    /* compiled from: Executors.java */
    /* renamed from: com.apk.as$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Executor {

        /* renamed from: do  reason: not valid java name */
        public final Handler f161do = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.f161do.post(runnable);
        }
    }

    /* compiled from: Executors.java */
    /* renamed from: com.apk.as$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    }
}
