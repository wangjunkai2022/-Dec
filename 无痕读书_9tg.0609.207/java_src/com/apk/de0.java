package com.apk;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;
/* compiled from: Sequences.kt */
/* loaded from: classes7.dex */
public final class de0<T, R> implements be0<R> {

    /* renamed from: do  reason: not valid java name */
    public final be0<T> f850do;

    /* renamed from: if  reason: not valid java name */
    public final id0<T, R> f851if;

    /* compiled from: Sequences.kt */
    /* renamed from: com.apk.de0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo implements Iterator<R>, ud0 {

        /* renamed from: do  reason: not valid java name */
        public final Iterator<T> f852do;

        public Cdo() {
            this.f852do = de0.this.f850do.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f852do.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return de0.this.f851if.mo1187if(this.f852do.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public de0(@NotNull be0<? extends T> be0Var, @NotNull id0<? super T, ? extends R> id0Var) {
        nd0.m1875new(be0Var, "sequence");
        nd0.m1875new(id0Var, "transformer");
        this.f850do = be0Var;
        this.f851if = id0Var;
    }

    @Override // com.apk.be0
    @NotNull
    public Iterator<R> iterator() {
        return new Cdo();
    }
}
