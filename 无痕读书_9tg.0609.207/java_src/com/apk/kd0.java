package com.apk;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayIterator.kt */
/* loaded from: classes7.dex */
public final class kd0<T> implements Iterator<T>, ud0 {

    /* renamed from: do  reason: not valid java name */
    public int f2516do;

    /* renamed from: if  reason: not valid java name */
    public final T[] f2517if;

    public kd0(@NotNull T[] tArr) {
        nd0.m1875new(tArr, "array");
        this.f2517if = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f2516do < this.f2517if.length;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.f2517if;
            int i = this.f2516do;
            this.f2516do = i + 1;
            return tArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f2516do--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
