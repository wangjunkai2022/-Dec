package com.apk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
/* compiled from: TargetTracker.java */
/* loaded from: classes8.dex */
public final class lq implements eq {

    /* renamed from: do  reason: not valid java name */
    public final Set<pr<?>> f2878do = Collections.newSetFromMap(new WeakHashMap());

    @Override // com.apk.eq
    public void onDestroy() {
        Iterator it = ((ArrayList) gs.m1036else(this.f2878do)).iterator();
        while (it.hasNext()) {
            ((pr) it.next()).onDestroy();
        }
    }

    @Override // com.apk.eq
    public void onStart() {
        Iterator it = ((ArrayList) gs.m1036else(this.f2878do)).iterator();
        while (it.hasNext()) {
            ((pr) it.next()).onStart();
        }
    }

    @Override // com.apk.eq
    public void onStop() {
        Iterator it = ((ArrayList) gs.m1036else(this.f2878do)).iterator();
        while (it.hasNext()) {
            ((pr) it.next()).onStop();
        }
    }
}
