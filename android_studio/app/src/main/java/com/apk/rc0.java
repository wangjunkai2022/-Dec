package com.apk;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.SinceKotlin;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.litepal.parser.LitePalParser;

/* compiled from: AbstractList.kt */
@SinceKotlin(version = "1.1")
/* loaded from: classes7.dex */
public abstract class rc0<E> extends qc0<E> implements List<E>, ud0 {

    /* compiled from: AbstractList.kt */
    /* renamed from: com.apk.rc0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements Iterator<E>, ud0 {

        /* renamed from: do  reason: not valid java name */
        public int f4025do;

        public Cdo() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4025do < rc0.this.mo354do();
        }

        @Override // java.util.Iterator
        public E next() {
            if (hasNext()) {
                rc0 rc0Var = rc0.this;
                int i = this.f4025do;
                this.f4025do = i + 1;
                return (E) rc0Var.get(i);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* compiled from: AbstractList.kt */
    /* renamed from: com.apk.rc0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cfor<E> extends rc0<E> implements RandomAccess {

        /* renamed from: do  reason: not valid java name */
        public int f4027do;

        /* renamed from: for  reason: not valid java name */
        public final int f4028for;

        /* renamed from: if  reason: not valid java name */
        public final rc0<E> f4029if;

        /* JADX WARN: Multi-variable type inference failed */
        public Cfor(@NotNull rc0<? extends E> rc0Var, int i, int i2) {
            nd0.m1875new(rc0Var, LitePalParser.NODE_LIST);
            this.f4029if = rc0Var;
            this.f4028for = i;
            int mo354do = rc0Var.mo354do();
            if (i >= 0 && i2 <= mo354do) {
                if (i <= i2) {
                    this.f4027do = i2 - this.f4028for;
                    return;
                }
                throw new IllegalArgumentException(Cgoto.m1018synchronized("fromIndex: ", i, " > toIndex: ", i2));
            }
            throw new IndexOutOfBoundsException("fromIndex: " + i + ", toIndex: " + i2 + ", size: " + mo354do);
        }

        @Override // com.apk.qc0
        /* renamed from: do */
        public int mo354do() {
            return this.f4027do;
        }

        @Override // com.apk.rc0, java.util.List
        public E get(int i) {
            int i2 = this.f4027do;
            if (i >= 0 && i < i2) {
                return this.f4029if.get(this.f4028for + i);
            }
            throw new IndexOutOfBoundsException(Cgoto.m1018synchronized("index: ", i, ", size: ", i2));
        }
    }

    /* compiled from: AbstractList.kt */
    /* renamed from: com.apk.rc0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif extends rc0<E>.Cdo implements ListIterator<E>, ud0 {
        public Cif(int i) {
            super();
            int mo354do = rc0.this.mo354do();
            if (i >= 0 && i <= mo354do) {
                this.f4025do = i;
                return;
            }
            throw new IndexOutOfBoundsException(Cgoto.m1018synchronized("index: ", i, ", size: ", mo354do));
        }

        @Override // java.util.ListIterator
        public void add(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f4025do > 0;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f4025do;
        }

        @Override // java.util.ListIterator
        public E previous() {
            if (hasPrevious()) {
                rc0 rc0Var = rc0.this;
                int i = this.f4025do - 1;
                this.f4025do = i;
                return (E) rc0Var.get(i);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f4025do - 1;
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.List
    public void add(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            Collection collection = (Collection) obj;
            nd0.m1875new(this, com.umeng.analytics.pro.ak.aF);
            nd0.m1875new(collection, "other");
            if (size() != collection.size()) {
                return false;
            }
            Iterator<E> it = collection.iterator();
            for (E e : this) {
                if (!nd0.m1870do(e, it.next())) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public abstract E get(int i);

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        nd0.m1875new(this, com.umeng.analytics.pro.ak.aF);
        Iterator<E> it = iterator();
        int i = 1;
        while (it.hasNext()) {
            E next = it.next();
            i = (i * 31) + (next != null ? next.hashCode() : 0);
        }
        return i;
    }

    public int indexOf(Object obj) {
        int i = 0;
        for (E e : this) {
            if (nd0.m1870do(e, obj)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<E> iterator() {
        return new Cdo();
    }

    public int lastIndexOf(Object obj) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (nd0.m1870do(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<E> listIterator() {
        return new Cif(0);
    }

    @Override // java.util.List
    public E remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    @NotNull
    public List<E> subList(int i, int i2) {
        return new Cfor(this, i, i2);
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i) {
        return new Cif(i);
    }
}
