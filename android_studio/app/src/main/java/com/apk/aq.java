package com.apk;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import androidx.annotation.NonNull;
import com.apk.qi;
import com.apk.yp;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: DefaultConnectivityMonitor.java */
/* loaded from: classes8.dex */
public final class aq implements yp {

    /* renamed from: do  reason: not valid java name */
    public final Context f149do;

    /* renamed from: for  reason: not valid java name */
    public boolean f150for;

    /* renamed from: if  reason: not valid java name */
    public final yp.Cdo f151if;

    /* renamed from: new  reason: not valid java name */
    public boolean f152new;

    /* renamed from: try  reason: not valid java name */
    public final BroadcastReceiver f153try = new Cdo();

    /* compiled from: DefaultConnectivityMonitor.java */
    /* renamed from: com.apk.aq$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends BroadcastReceiver {
        public Cdo() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, Intent intent) {
            aq aqVar = aq.this;
            boolean z = aqVar.f150for;
            aqVar.f150for = aqVar.m90new(context);
            if (z != aq.this.f150for) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    boolean z2 = aq.this.f150for;
                }
                aq aqVar2 = aq.this;
                yp.Cdo cdo = aqVar2.f151if;
                boolean z3 = aqVar2.f150for;
                qi.Cif cif = (qi.Cif) cdo;
                if (cif == null) {
                    throw null;
                }
                if (z3) {
                    synchronized (qi.this) {
                        jq jqVar = cif.f3876do;
                        Iterator it = ((ArrayList) gs.m1036else(jqVar.f2402do)).iterator();
                        while (it.hasNext()) {
                            zq zqVar = (zq) it.next();
                            if (!zqVar.mo891try() && !zqVar.mo884for()) {
                                zqVar.clear();
                                if (!jqVar.f2403for) {
                                    zqVar.mo887new();
                                } else {
                                    jqVar.f2404if.add(zqVar);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public aq(@NonNull Context context, @NonNull yp.Cdo cdo) {
        this.f149do = context.getApplicationContext();
        this.f151if = cdo;
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: new  reason: not valid java name */
    public boolean m90new(@NonNull Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        eg.m593else(connectivityManager, "Argument must not be null");
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException unused) {
            Log.isLoggable("ConnectivityMonitor", 5);
            return true;
        }
    }

    @Override // com.apk.eq
    public void onDestroy() {
    }

    @Override // com.apk.eq
    public void onStart() {
        if (this.f152new) {
            return;
        }
        this.f150for = m90new(this.f149do);
        try {
            this.f149do.registerReceiver(this.f153try, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f152new = true;
        } catch (SecurityException unused) {
        }
    }

    @Override // com.apk.eq
    public void onStop() {
        if (this.f152new) {
            this.f149do.unregisterReceiver(this.f153try);
            this.f152new = false;
        }
    }
}
