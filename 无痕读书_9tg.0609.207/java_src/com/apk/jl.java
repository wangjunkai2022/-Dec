package com.apk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* compiled from: ResourceRecycler.java */
/* loaded from: classes8.dex */
public class jl {

    /* renamed from: do  reason: not valid java name */
    public boolean f2362do;

    /* renamed from: if  reason: not valid java name */
    public final Handler f2363if = new Handler(Looper.getMainLooper(), new Cdo());

    /* compiled from: ResourceRecycler.java */
    /* renamed from: com.apk.jl$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static final class Cdo implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((gl) message.obj).mo65do();
                return true;
            }
            return false;
        }
    }

    /* renamed from: do  reason: not valid java name */
    public synchronized void m1356do(gl<?> glVar, boolean z) {
        if (!this.f2362do && !z) {
            this.f2362do = true;
            glVar.mo65do();
            this.f2362do = false;
        }
        this.f2363if.obtainMessage(1, glVar).sendToTarget();
    }
}
