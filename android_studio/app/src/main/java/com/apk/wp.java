package com.apk;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: ActivityFragmentLifecycle.java */
/* loaded from: classes8.dex */
public class wp implements dq {

    /* renamed from: do  reason: not valid java name */
    public final Set<eq> f5361do = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: for  reason: not valid java name */
    public boolean f5362for;

    /* renamed from: if  reason: not valid java name */
    public boolean f5363if;

    @Override // com.apk.dq
    /* renamed from: do */
    public void mo504do(@NonNull eq eqVar) {
        this.f5361do.add(eqVar);
        if (this.f5362for) {
            eqVar.onDestroy();
        } else if (this.f5363if) {
            eqVar.onStart();
        } else {
            eqVar.onStop();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m2932for() {
        this.f5362for = true;
        Iterator it = ((ArrayList) gs.m1036else(this.f5361do)).iterator();
        while (it.hasNext()) {
            ((eq) it.next()).onDestroy();
        }
    }

    @Override // com.apk.dq
    /* renamed from: if */
    public void mo505if(@NonNull eq eqVar) {
        this.f5361do.remove(eqVar);
    }

    /* renamed from: new  reason: not valid java name */
    public void m2933new() {
        this.f5363if = true;
        Iterator it = ((ArrayList) gs.m1036else(this.f5361do)).iterator();
        while (it.hasNext()) {
            ((eq) it.next()).onStart();
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m2934try() {
        this.f5363if = false;
        Iterator it = ((ArrayList) gs.m1036else(this.f5361do)).iterator();
        while (it.hasNext()) {
            ((eq) it.next()).onStop();
        }
    }
}
