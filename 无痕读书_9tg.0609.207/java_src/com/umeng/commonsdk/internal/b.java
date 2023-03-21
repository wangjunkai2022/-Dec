package com.umeng.commonsdk.internal;

import android.content.Context;
/* compiled from: UMInternalData.java */
/* loaded from: classes7.dex */
public class b {
    public static b b;

    /* renamed from: a  reason: collision with root package name */
    public Context f12265a;
    public c c;

    public b(Context context) {
        this.f12265a = context;
        this.c = new c(context);
    }

    public static synchronized b a(Context context) {
        b bVar;
        synchronized (b.class) {
            if (b == null) {
                b = new b(context.getApplicationContext());
            }
            bVar = b;
        }
        return bVar;
    }

    public c a() {
        return this.c;
    }
}
