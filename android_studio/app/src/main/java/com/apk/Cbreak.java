package com.apk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* compiled from: AdBaseHelper.java */
/* renamed from: com.apk.break  reason: invalid class name */
/* loaded from: classes8.dex */
public abstract class Cbreak {

    /* renamed from: do  reason: not valid java name */
    public boolean f457do;

    /* compiled from: AdBaseHelper.java */
    /* renamed from: com.apk.break$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo extends Handler {

        /* renamed from: do  reason: not valid java name */
        public final WeakReference<Cbreak> f458do;

        public Cdo(Cbreak cbreak) {
            super(Looper.getMainLooper());
            this.f458do = new WeakReference<>(cbreak);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<Cbreak> weakReference = this.f458do;
            if (weakReference != null) {
                try {
                    if (message.what == 101) {
                        if (weakReference.get() != null) {
                            Cclass cclass = (Cclass) this.f458do.get();
                            cclass.f664try = false;
                            cclass.mo279do();
                        }
                    } else if (message.what == 102 && weakReference.get() != null) {
                        this.f458do.get().mo279do();
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    /* renamed from: do  reason: not valid java name */
    public abstract void mo279do();
}
