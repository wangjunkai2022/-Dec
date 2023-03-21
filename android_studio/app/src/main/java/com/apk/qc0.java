package com.apk;

import java.util.Collection;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;

/* compiled from: AbstractCollection.kt */
@SinceKotlin(version = "1.1")
/* loaded from: classes7.dex */
public abstract class qc0<E> implements Collection<E>, ud0 {

    /* compiled from: AbstractCollection.kt */
    /* renamed from: com.apk.qc0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends od0 implements id0<E, CharSequence> {
        public Cdo() {
            super(1);
        }

        @Override // com.apk.id0
        /* renamed from: if */
        public CharSequence mo1187if(Object obj) {
            return obj == qc0.this ? "(this Collection)" : String.valueOf(obj);
        }
    }

    @Override // java.util.Collection
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (isEmpty()) {
            return false;
        }
        for (E e : this) {
            if (nd0.m1870do(e, obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> collection) {
        nd0.m1875new(collection, "elements");
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!contains(obj)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: do */
    public abstract int mo354do();

    @Override // java.util.Collection
    public boolean isEmpty() {
        return mo354do() == 0;
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
    public final /* bridge */ int size() {
        return mo354do();
    }

    @Override // java.util.Collection
    @NotNull
    public Object[] toArray() {
        return ld0.m1626do(this);
    }

    @NotNull
    public String toString() {
        Cdo cdo = new Cdo();
        nd0.m1875new(this, "$this$joinToString");
        nd0.m1875new(", ", "separator");
        nd0.m1875new("[", "prefix");
        nd0.m1875new("]", "postfix");
        nd0.m1875new("...", "truncated");
        StringBuilder sb = new StringBuilder();
        uc0.m2693case(this, sb, ", ", "[", "]", -1, "...", cdo);
        String sb2 = sb.toString();
        nd0.m1872for(sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb2;
    }

    @Override // java.util.Collection
    @NotNull
    public <T> T[] toArray(@NotNull T[] tArr) {
        nd0.m1875new(tArr, "array");
        return (T[]) ld0.m1627if(this, tArr);
    }
}
