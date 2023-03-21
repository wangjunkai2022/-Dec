package com.apk;

import java.util.concurrent.ThreadFactory;

/* compiled from: Util.kt */
/* loaded from: classes7.dex */
public final class ih0 implements ThreadFactory {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f2110do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f2111if;

    public ih0(String str, boolean z) {
        this.f2110do = str;
        this.f2111if = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable, this.f2110do);
        thread.setDaemon(this.f2111if);
        return thread;
    }
}
