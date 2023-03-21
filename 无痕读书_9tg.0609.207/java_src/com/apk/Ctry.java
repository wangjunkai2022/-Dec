package com.apk;

import butterknife.internal.DebouncingOnClickListener;
/* compiled from: lambda */
/* renamed from: com.apk.try  reason: invalid class name */
/* loaded from: classes8.dex */
public final /* synthetic */ class Ctry implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public static final /* synthetic */ Ctry f4762do = new Ctry();

    private /* synthetic */ Ctry() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        DebouncingOnClickListener.enabled = true;
    }
}
