package com.apk;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.jetbrains.annotations.NotNull;
/* compiled from: Collections.kt */
/* loaded from: classes7.dex */
public final class sc0<T> implements Collection<T>, ud0 {

    /* renamed from: do  reason: not valid java name */
    public final T[] f4322do;

    /* renamed from: if  reason: not valid java name */
    public final boolean f4323if;

    public sc0(@NotNull T[] tArr, boolean z) {
        nd0.m1875new(tArr, "values");
        this.f4322do = tArr;
        this.f4323if = z;
    }

    @Override // java.util.Collection
    public boolean add(T t) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        int i;
        T[] tArr = this.f4322do;
        nd0.m1875new(tArr, "$this$contains");
        nd0.m1875new(tArr, "$this$indexOf");
        if (obj == null) {
            int length = tArr.length;
            i = 0;
            while (i < length) {
                if (tArr[i] == null) {
                    break;
                }
                i++;
            }
            i = -1;
        } else {
            int length2 = tArr.length;
            for (int i2 = 0; i2 < length2; i2++) {
                if (nd0.m1870do(obj, tArr[i2])) {
                    i = i2;
                    break;
                }
            }
            i = -1;
        }
        return i >= 0;
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> collection) {
        nd0.m1875new(collection, "elements");
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f4322do.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        T[] tArr = this.f4322do;
        nd0.m1875new(tArr, "array");
        return new kd0(tArr);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f4322do.length;
    }

    @Override // java.util.Collection
    @NotNull
    public final Object[] toArray() {
        Object[] objArr = this.f4322do;
        boolean z = this.f4323if;
        nd0.m1875new(objArr, "$this$copyToArrayOfAny");
        if (!z || !nd0.m1870do(objArr.getClass(), Object[].class)) {
            objArr = Arrays.copyOf(objArr, objArr.length, Object[].class);
        }
        nd0.m1872for(objArr, "if (isVarargs && this.ja… Array<Any?>::class.java)");
        return objArr;
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) ld0.m1627if(this, tArr);
    }
}
