package com.apk;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.apk.yp;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: RequestManager.java */
/* loaded from: classes8.dex */
public class qi implements ComponentCallbacks2, eq {

    /* renamed from: class  reason: not valid java name */
    public static final dr f3863class = new dr().mo2209case(Bitmap.class).mo2215final();

    /* renamed from: break  reason: not valid java name */
    public final CopyOnWriteArrayList<cr<Object>> f3864break;
    @GuardedBy("this")

    /* renamed from: case  reason: not valid java name */
    public final lq f3865case;
    @GuardedBy("this")

    /* renamed from: catch  reason: not valid java name */
    public dr f3866catch;

    /* renamed from: do  reason: not valid java name */
    public final ii f3867do;

    /* renamed from: else  reason: not valid java name */
    public final Runnable f3868else;

    /* renamed from: for  reason: not valid java name */
    public final dq f3869for;

    /* renamed from: goto  reason: not valid java name */
    public final Handler f3870goto;

    /* renamed from: if  reason: not valid java name */
    public final Context f3871if;
    @GuardedBy("this")

    /* renamed from: new  reason: not valid java name */
    public final jq f3872new;

    /* renamed from: this  reason: not valid java name */
    public final yp f3873this;
    @GuardedBy("this")

    /* renamed from: try  reason: not valid java name */
    public final iq f3874try;

    /* compiled from: RequestManager.java */
    /* renamed from: com.apk.qi$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qi qiVar = qi.this;
            qiVar.f3869for.mo504do(qiVar);
        }
    }

    /* compiled from: RequestManager.java */
    /* renamed from: com.apk.qi$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements yp.Cdo {
        @GuardedBy("RequestManager.this")

        /* renamed from: do  reason: not valid java name */
        public final jq f3876do;

        public Cif(@NonNull jq jqVar) {
            this.f3876do = jqVar;
        }
    }

    static {
        new dr().mo2209case(hp.class).mo2215final();
        new dr().mo2213else(uk.f4911if).mo2225switch(ni.LOW).mo2216finally(true);
    }

    public qi(@NonNull ii iiVar, @NonNull dq dqVar, @NonNull iq iqVar, @NonNull Context context) {
        yp fqVar;
        dr drVar;
        jq jqVar = new jq();
        zp zpVar = iiVar.f2118goto;
        this.f3865case = new lq();
        this.f3868else = new Cdo();
        this.f3870goto = new Handler(Looper.getMainLooper());
        this.f3867do = iiVar;
        this.f3869for = dqVar;
        this.f3874try = iqVar;
        this.f3872new = jqVar;
        this.f3871if = context;
        Context applicationContext = context.getApplicationContext();
        Cif cif = new Cif(jqVar);
        if (((bq) zpVar) != null) {
            if (ContextCompat.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
                fqVar = new aq(applicationContext, cif);
            } else {
                fqVar = new fq();
            }
            this.f3873this = fqVar;
            if (gs.m1032catch()) {
                this.f3870goto.post(this.f3868else);
            } else {
                dqVar.mo504do(this);
            }
            dqVar.mo504do(this.f3873this);
            this.f3864break = new CopyOnWriteArrayList<>(iiVar.f2120new.f2817try);
            li liVar = iiVar.f2120new;
            synchronized (liVar) {
                if (liVar.f2808break == null) {
                    liVar.f2808break = liVar.f2815new.mo1224do().mo2215final();
                }
                drVar = liVar.f2808break;
            }
            mo2134import(drVar);
            synchronized (iiVar.f2121this) {
                if (!iiVar.f2121this.contains(this)) {
                    iiVar.f2121this.add(this);
                } else {
                    throw new IllegalStateException("Cannot register already registered manager");
                }
            }
            return;
        }
        throw null;
    }

    @NonNull
    @CheckResult
    /* renamed from: case  reason: not valid java name */
    public pi<Bitmap> mo2129case() {
        return mo2136new(Bitmap.class).mo2037do(f3863class);
    }

    @NonNull
    @CheckResult
    /* renamed from: catch  reason: not valid java name */
    public pi<Drawable> mo2130catch() {
        return mo2136new(Drawable.class);
    }

    @NonNull
    @CheckResult
    /* renamed from: class  reason: not valid java name */
    public pi<File> mo2131class() {
        pi mo2136new = mo2136new(File.class);
        if (dr.f956finally == null) {
            dr.f956finally = new dr().mo2216finally(true).mo2218if();
        }
        return mo2136new.mo2037do(dr.f956finally);
    }

    /* renamed from: const  reason: not valid java name */
    public void m2132const(@Nullable pr<?> prVar) {
        boolean z;
        if (prVar == null) {
            return;
        }
        boolean m2135native = m2135native(prVar);
        zq mo274goto = prVar.mo274goto();
        if (m2135native) {
            return;
        }
        ii iiVar = this.f3867do;
        synchronized (iiVar.f2121this) {
            Iterator<qi> it = iiVar.f2121this.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (it.next().m2135native(prVar)) {
                    z = true;
                    break;
                }
            }
        }
        if (z || mo274goto == null) {
            return;
        }
        prVar.mo273for(null);
        mo274goto.clear();
    }

    @NonNull
    @CheckResult
    /* renamed from: final  reason: not valid java name */
    public pi<Drawable> mo2133final(@Nullable File file) {
        return mo2130catch().mo2044synchronized(file);
    }

    /* renamed from: import  reason: not valid java name */
    public synchronized void mo2134import(@NonNull dr drVar) {
        this.f3866catch = drVar.clone().mo2218if();
    }

    /* renamed from: native  reason: not valid java name */
    public synchronized boolean m2135native(@NonNull pr<?> prVar) {
        zq mo274goto = prVar.mo274goto();
        if (mo274goto == null) {
            return true;
        }
        if (this.f3872new.m1392do(mo274goto)) {
            this.f3865case.f2878do.remove(prVar);
            prVar.mo273for(null);
            return true;
        }
        return false;
    }

    @NonNull
    @CheckResult
    /* renamed from: new  reason: not valid java name */
    public <ResourceType> pi<ResourceType> mo2136new(@NonNull Class<ResourceType> cls) {
        return new pi<>(this.f3867do, this, cls, this.f3871if);
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
    }

    @Override // com.apk.eq
    public synchronized void onDestroy() {
        this.f3865case.onDestroy();
        for (pr<?> prVar : gs.m1036else(this.f3865case.f2878do)) {
            m2132const(prVar);
        }
        this.f3865case.f2878do.clear();
        jq jqVar = this.f3872new;
        Iterator it = ((ArrayList) gs.m1036else(jqVar.f2402do)).iterator();
        while (it.hasNext()) {
            jqVar.m1392do((zq) it.next());
        }
        jqVar.f2404if.clear();
        this.f3869for.mo505if(this);
        this.f3869for.mo505if(this.f3873this);
        this.f3870goto.removeCallbacks(this.f3868else);
        ii iiVar = this.f3867do;
        synchronized (iiVar.f2121this) {
            if (iiVar.f2121this.contains(this)) {
                iiVar.f2121this.remove(this);
            } else {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // com.apk.eq
    public synchronized void onStart() {
        m2139while();
        this.f3865case.onStart();
    }

    @Override // com.apk.eq
    public synchronized void onStop() {
        m2138throw();
        this.f3865case.onStop();
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
    }

    @NonNull
    @CheckResult
    /* renamed from: super  reason: not valid java name */
    public pi<Drawable> mo2137super(@Nullable Object obj) {
        return mo2130catch().a(obj);
    }

    /* renamed from: throw  reason: not valid java name */
    public synchronized void m2138throw() {
        jq jqVar = this.f3872new;
        jqVar.f2403for = true;
        Iterator it = ((ArrayList) gs.m1036else(jqVar.f2402do)).iterator();
        while (it.hasNext()) {
            zq zqVar = (zq) it.next();
            if (zqVar.isRunning()) {
                zqVar.mo881do();
                jqVar.f2404if.add(zqVar);
            }
        }
    }

    public synchronized String toString() {
        return super.toString() + "{tracker=" + this.f3872new + ", treeNode=" + this.f3874try + "}";
    }

    /* renamed from: while  reason: not valid java name */
    public synchronized void m2139while() {
        jq jqVar = this.f3872new;
        jqVar.f2403for = false;
        Iterator it = ((ArrayList) gs.m1036else(jqVar.f2402do)).iterator();
        while (it.hasNext()) {
            zq zqVar = (zq) it.next();
            if (!zqVar.mo891try() && !zqVar.isRunning()) {
                zqVar.mo887new();
            }
        }
        jqVar.f2404if.clear();
    }
}
