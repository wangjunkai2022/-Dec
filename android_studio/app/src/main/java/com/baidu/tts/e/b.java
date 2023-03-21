package com.baidu.tts.e;

import android.content.Context;

/* compiled from: StatThread.java */
/* loaded from: classes8.dex */
public class b extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public Context f11208a;
    public String b;

    public b(Context context, String str) {
        this.f11208a = context;
        this.b = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        a.a(this.f11208a, this.b);
        this.f11208a = null;
    }
}
