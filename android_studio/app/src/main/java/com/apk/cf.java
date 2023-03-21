package com.apk;

import android.content.Context;

/* compiled from: CommonsUtils.java */
/* loaded from: classes8.dex */
public final class cf implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Context f583do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ ft f584for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ String f585if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ boolean f586new;

    public cf(Context context, String str, ft ftVar, boolean z) {
        this.f583do = context;
        this.f585if = str;
        this.f584for = ftVar;
        this.f586new = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        eg.j(this.f583do, this.f585if, this.f584for, this.f586new, false);
    }
}
