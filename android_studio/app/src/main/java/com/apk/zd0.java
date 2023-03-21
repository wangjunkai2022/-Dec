package com.apk;

import java.util.Iterator;
import org.jetbrains.annotations.NotNull;

/* compiled from: Sequences.kt */
/* loaded from: classes7.dex */
public final class zd0<T> implements be0<T>, ae0<T> {

    /* renamed from: do  reason: not valid java name */
    public final be0<T> f6175do;

    /* renamed from: if  reason: not valid java name */
    public final int f6176if;

    /* compiled from: Sequences.kt */
    /* renamed from: com.apk.zd0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo implements Iterator<T>, ud0 {

        /* renamed from: do  reason: not valid java name */
        public final Iterator<T> f6177do;

        /* renamed from: if  reason: not valid java name */
        public int f6178if;

        public Cdo(zd0 zd0Var) {
            this.f6177do = zd0Var.f6175do.iterator();
            this.f6178if = zd0Var.f6176if;
        }

        /* renamed from: do  reason: not valid java name */
        public final void m3155do() {
            while (this.f6178if > 0 && this.f6177do.hasNext()) {
                this.f6177do.next();
                this.f6178if--;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            m3155do();
            return this.f6177do.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            m3155do();
            return this.f6177do.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zd0(@NotNull be0<? extends T> be0Var, int i) {
        nd0.m1875new(be0Var, "sequence");
        this.f6175do = be0Var;
        this.f6176if = i;
        if (i >= 0) {
            return;
        }
        StringBuilder m1016super = Cgoto.m1016super("count must be non-negative, but was ");
        m1016super.append(this.f6176if);
        m1016super.append('.');
        throw new IllegalArgumentException(m1016super.toString().toString());
    }

    @Override // com.apk.ae0
    @NotNull
    /* renamed from: do */
    public be0<T> mo45do(int i) {
        int i2 = this.f6176if + i;
        return i2 < 0 ? new zd0(this, i) : new zd0(this.f6175do, i2);
    }

    @Override // com.apk.be0
    @NotNull
    public Iterator<T> iterator() {
        return new Cdo(this);
    }
}
