package com.apk;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.apk.hs;
import com.apk.ks;

/* compiled from: LockedResource.java */
/* loaded from: classes8.dex */
public final class fl<Z> implements gl<Z>, hs.Cnew {

    /* renamed from: try  reason: not valid java name */
    public static final Pools.Pool<fl<?>> f1394try = hs.m1168do(20, new Cdo());

    /* renamed from: do  reason: not valid java name */
    public final ks f1395do = new ks.Cif();

    /* renamed from: for  reason: not valid java name */
    public boolean f1396for;

    /* renamed from: if  reason: not valid java name */
    public gl<Z> f1397if;

    /* renamed from: new  reason: not valid java name */
    public boolean f1398new;

    /* compiled from: LockedResource.java */
    /* renamed from: com.apk.fl$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements hs.Cif<fl<?>> {
        @Override // com.apk.hs.Cif
        /* renamed from: do  reason: not valid java name */
        public fl<?> mo848do() {
            return new fl<>();
        }
    }

    @NonNull
    /* renamed from: try  reason: not valid java name */
    public static <Z> fl<Z> m845try(gl<Z> glVar) {
        fl<Z> flVar = (fl<Z>) f1394try.acquire();
        eg.m593else(flVar, "Argument must not be null");
        flVar.f1398new = false;
        flVar.f1396for = true;
        flVar.f1397if = glVar;
        return flVar;
    }

    /* renamed from: case  reason: not valid java name */
    public synchronized void m846case() {
        this.f1395do.mo1555do();
        if (this.f1396for) {
            this.f1396for = false;
            if (this.f1398new) {
                mo65do();
            }
        } else {
            throw new IllegalStateException("Already unlocked");
        }
    }

    @Override // com.apk.gl
    /* renamed from: do */
    public synchronized void mo65do() {
        this.f1395do.mo1555do();
        this.f1398new = true;
        if (!this.f1396for) {
            this.f1397if.mo65do();
            this.f1397if = null;
            f1394try.release(this);
        }
    }

    @Override // com.apk.gl
    /* renamed from: for */
    public int mo66for() {
        return this.f1397if.mo66for();
    }

    @Override // com.apk.gl
    @NonNull
    public Z get() {
        return this.f1397if.get();
    }

    @Override // com.apk.hs.Cnew
    @NonNull
    /* renamed from: if  reason: not valid java name */
    public ks mo847if() {
        return this.f1395do;
    }

    @Override // com.apk.gl
    @NonNull
    /* renamed from: new */
    public Class<Z> mo68new() {
        return this.f1397if.mo68new();
    }
}
