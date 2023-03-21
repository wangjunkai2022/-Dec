package com.apk;

import androidx.annotation.NonNull;

/* compiled from: EngineResource.java */
/* loaded from: classes8.dex */
public class al<Z> implements gl<Z> {

    /* renamed from: case  reason: not valid java name */
    public int f114case;

    /* renamed from: do  reason: not valid java name */
    public final boolean f115do;

    /* renamed from: else  reason: not valid java name */
    public boolean f116else;

    /* renamed from: for  reason: not valid java name */
    public final gl<Z> f117for;

    /* renamed from: if  reason: not valid java name */
    public final boolean f118if;

    /* renamed from: new  reason: not valid java name */
    public final Cdo f119new;

    /* renamed from: try  reason: not valid java name */
    public final kj f120try;

    /* compiled from: EngineResource.java */
    /* renamed from: com.apk.al$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
        /* renamed from: do  reason: not valid java name */
        void mo70do(kj kjVar, al<?> alVar);
    }

    public al(gl<Z> glVar, boolean z, boolean z2, kj kjVar, Cdo cdo) {
        eg.m593else(glVar, "Argument must not be null");
        this.f117for = glVar;
        this.f115do = z;
        this.f118if = z2;
        this.f120try = kjVar;
        eg.m593else(cdo, "Argument must not be null");
        this.f119new = cdo;
    }

    @Override // com.apk.gl
    /* renamed from: do  reason: not valid java name */
    public synchronized void mo65do() {
        if (this.f114case <= 0) {
            if (!this.f116else) {
                this.f116else = true;
                if (this.f118if) {
                    this.f117for.mo65do();
                }
            } else {
                throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
            }
        } else {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
    }

    @Override // com.apk.gl
    /* renamed from: for  reason: not valid java name */
    public int mo66for() {
        return this.f117for.mo66for();
    }

    @Override // com.apk.gl
    @NonNull
    public Z get() {
        return this.f117for.get();
    }

    /* renamed from: if  reason: not valid java name */
    public synchronized void m67if() {
        if (!this.f116else) {
            this.f114case++;
        } else {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
    }

    @Override // com.apk.gl
    @NonNull
    /* renamed from: new  reason: not valid java name */
    public Class<Z> mo68new() {
        return this.f117for.mo68new();
    }

    public synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f115do + ", listener=" + this.f119new + ", key=" + this.f120try + ", acquired=" + this.f114case + ", isRecycled=" + this.f116else + ", resource=" + this.f117for + '}';
    }

    /* renamed from: try  reason: not valid java name */
    public void m69try() {
        boolean z;
        synchronized (this) {
            if (this.f114case > 0) {
                z = true;
                int i = this.f114case - 1;
                this.f114case = i;
                if (i != 0) {
                    z = false;
                }
            } else {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
        }
        if (z) {
            this.f119new.mo70do(this.f120try, this);
        }
    }
}
