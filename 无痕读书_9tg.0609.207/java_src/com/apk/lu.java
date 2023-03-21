package com.apk;

import android.app.Application;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
/* compiled from: NavigationBarObserver.java */
/* loaded from: classes8.dex */
public final class lu extends ContentObserver {

    /* renamed from: do  reason: not valid java name */
    public Application f2908do;

    /* renamed from: if  reason: not valid java name */
    public Boolean f2909if;

    /* compiled from: NavigationBarObserver.java */
    /* renamed from: com.apk.lu$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public static final lu f2910do = new lu(null);
    }

    public lu(Cdo cdo) {
        super(new Handler(Looper.getMainLooper()));
        this.f2909if = Boolean.FALSE;
    }

    /* renamed from: do  reason: not valid java name */
    public static lu m1670do() {
        return Cif.f2910do;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        Application application = this.f2908do;
        if (application != null) {
            application.getContentResolver();
        }
    }
}
