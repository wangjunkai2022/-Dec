package com.apk;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: RequestTracker.java */
/* loaded from: classes8.dex */
public class jq {

    /* renamed from: for  reason: not valid java name */
    public boolean f2403for;

    /* renamed from: do  reason: not valid java name */
    public final Set<zq> f2402do = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: if  reason: not valid java name */
    public final List<zq> f2404if = new ArrayList();

    /* renamed from: do  reason: not valid java name */
    public boolean m1392do(@Nullable zq zqVar) {
        boolean z = true;
        if (zqVar == null) {
            return true;
        }
        boolean remove = this.f2402do.remove(zqVar);
        if (!this.f2404if.remove(zqVar) && !remove) {
            z = false;
        }
        if (z) {
            zqVar.clear();
        }
        return z;
    }

    public String toString() {
        return super.toString() + "{numRequests=" + this.f2402do.size() + ", isPaused=" + this.f2403for + "}";
    }
}
