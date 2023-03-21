package com.apk;

import android.app.Application;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: EMUI3NavigationBarObserver.java */
/* loaded from: classes8.dex */
public final class fu extends ContentObserver {

    /* renamed from: do  reason: not valid java name */
    public ArrayList<ju> f1465do;

    /* renamed from: for  reason: not valid java name */
    public Boolean f1466for;

    /* renamed from: if  reason: not valid java name */
    public Application f1467if;

    /* compiled from: EMUI3NavigationBarObserver.java */
    /* renamed from: com.apk.fu$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public static final fu f1468do = new fu(null);
    }

    public fu(Cdo cdo) {
        super(new Handler(Looper.getMainLooper()));
        this.f1466for = Boolean.FALSE;
    }

    /* renamed from: do  reason: not valid java name */
    public static fu m892do() {
        return Cif.f1468do;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        ArrayList<ju> arrayList;
        super.onChange(z);
        Application application = this.f1467if;
        if (application == null || application.getContentResolver() == null || (arrayList = this.f1465do) == null || arrayList.isEmpty()) {
            return;
        }
        int i = Settings.System.getInt(this.f1467if.getContentResolver(), "navigationbar_is_min", 0);
        Iterator<ju> it = this.f1465do.iterator();
        while (it.hasNext()) {
            ju next = it.next();
            boolean z2 = true;
            if (i == 1) {
                z2 = false;
            }
            next.mo1280do(z2);
        }
    }
}
