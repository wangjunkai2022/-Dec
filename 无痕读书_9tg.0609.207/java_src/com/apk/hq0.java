package com.apk;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* compiled from: MapCollections.java */
/* loaded from: classes7.dex */
public abstract class hq0<K, V> {

    /* renamed from: do  reason: not valid java name */
    public hq0<K, V>.Cif f1962do;

    /* renamed from: for  reason: not valid java name */
    public hq0<K, V>.Ctry f1963for;

    /* renamed from: if  reason: not valid java name */
    public hq0<K, V>.Cfor f1964if;

    /* compiled from: MapCollections.java */
    /* renamed from: com.apk.hq0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cdo<T> implements Iterator<T> {

        /* renamed from: do  reason: not valid java name */
        public final int f1965do;

        /* renamed from: for  reason: not valid java name */
        public int f1966for;

        /* renamed from: if  reason: not valid java name */
        public int f1967if;

        /* renamed from: new  reason: not valid java name */
        public boolean f1968new = false;

        public Cdo(int i) {
            this.f1965do = i;
            this.f1967if = fq0.this.f2222for;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1966for < this.f1967if;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t = (T) hq0.this.mo874do(this.f1966for, this.f1965do);
                this.f1966for++;
                this.f1968new = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f1968new) {
                int i = this.f1966for - 1;
                this.f1966for = i;
                this.f1967if--;
                this.f1968new = false;
                fq0.this.m1267this(i);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* compiled from: MapCollections.java */
    /* renamed from: com.apk.hq0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cfor implements Set<K> {
        public Cfor() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            fq0.this.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return fq0.this.m1268try(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            fq0 fq0Var = fq0.this;
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!fq0Var.containsKey(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return hq0.m1163for(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int i2 = fq0.this.f2222for - 1; i2 >= 0; i2--) {
                Object mo874do = hq0.this.mo874do(i2, 0);
                i += mo874do == null ? 0 : mo874do.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return fq0.this.f2222for == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new Cdo(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int m1268try = fq0.this.m1268try(obj);
            if (m1268try >= 0) {
                fq0.this.m1267this(m1268try);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            fq0 fq0Var = fq0.this;
            int size = fq0Var.size();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                fq0Var.remove(it.next());
            }
            return size != fq0Var.size();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            fq0 fq0Var = fq0.this;
            int size = fq0Var.size();
            Iterator<K> it = fq0Var.keySet().iterator();
            while (it.hasNext()) {
                if (!collection.contains(it.next())) {
                    it.remove();
                }
            }
            return size != fq0Var.size();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return fq0.this.f2222for;
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return hq0.this.m1164new(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) hq0.this.m1165try(tArr, 0);
        }
    }

    /* compiled from: MapCollections.java */
    /* renamed from: com.apk.hq0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cif implements Set<Map.Entry<K, V>> {
        public Cif() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int i = fq0.this.f2222for;
            for (Map.Entry<K, V> entry : collection) {
                fq0.this.put(entry.getKey(), entry.getValue());
            }
            return i != fq0.this.f2222for;
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            fq0.this.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int mo875if = hq0.this.mo875if(entry.getKey());
                if (mo875if < 0) {
                    return false;
                }
                return gq0.m1029do(hq0.this.mo874do(mo875if, 1), entry.getValue());
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return hq0.m1163for(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int i2 = fq0.this.f2222for - 1; i2 >= 0; i2--) {
                Object mo874do = hq0.this.mo874do(i2, 0);
                Object mo874do2 = hq0.this.mo874do(i2, 1);
                i += (mo874do == null ? 0 : mo874do.hashCode()) ^ (mo874do2 == null ? 0 : mo874do2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return fq0.this.f2222for == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new Cnew();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return fq0.this.f2222for;
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: MapCollections.java */
    /* renamed from: com.apk.hq0$new  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Cnew implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: do  reason: not valid java name */
        public int f1972do;

        /* renamed from: for  reason: not valid java name */
        public boolean f1973for = false;

        /* renamed from: if  reason: not valid java name */
        public int f1974if = -1;

        public Cnew() {
            this.f1972do = fq0.this.f2222for - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this.f1973for) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    return gq0.m1029do(entry.getKey(), hq0.this.mo874do(this.f1974if, 0)) && gq0.m1029do(entry.getValue(), hq0.this.mo874do(this.f1974if, 1));
                }
                return false;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f1973for) {
                return (K) hq0.this.mo874do(this.f1974if, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f1973for) {
                return (V) hq0.this.mo874do(this.f1974if, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1974if < this.f1972do;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.f1973for) {
                Object mo874do = hq0.this.mo874do(this.f1974if, 0);
                Object mo874do2 = hq0.this.mo874do(this.f1974if, 1);
                return (mo874do == null ? 0 : mo874do.hashCode()) ^ (mo874do2 != null ? mo874do2.hashCode() : 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public Object next() {
            if (hasNext()) {
                this.f1974if++;
                this.f1973for = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f1973for) {
                fq0.this.m1267this(this.f1974if);
                this.f1974if--;
                this.f1972do--;
                this.f1973for = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f1973for) {
                hq0 hq0Var = hq0.this;
                int i = (this.f1974if << 1) + 1;
                Object[] objArr = fq0.this.f2223if;
                V v2 = (V) objArr[i];
                objArr[i] = v;
                return v2;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* compiled from: MapCollections.java */
    /* renamed from: com.apk.hq0$try  reason: invalid class name */
    /* loaded from: classes7.dex */
    public final class Ctry implements Collection<V> {
        public Ctry() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            fq0.this.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return fq0.this.m1264else(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return fq0.this.f2222for == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new Cdo(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int m1264else = fq0.this.m1264else(obj);
            if (m1264else >= 0) {
                fq0.this.m1267this(m1264else);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int i = fq0.this.f2222for;
            int i2 = 0;
            boolean z = false;
            while (i2 < i) {
                if (collection.contains(hq0.this.mo874do(i2, 1))) {
                    fq0.this.m1267this(i2);
                    i2--;
                    i--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int i = fq0.this.f2222for;
            int i2 = 0;
            boolean z = false;
            while (i2 < i) {
                if (!collection.contains(hq0.this.mo874do(i2, 1))) {
                    fq0.this.m1267this(i2);
                    i2--;
                    i--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return fq0.this.f2222for;
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return hq0.this.m1164new(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) hq0.this.m1165try(tArr, 1);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static <T> boolean m1163for(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* renamed from: do */
    public abstract Object mo874do(int i, int i2);

    /* renamed from: if */
    public abstract int mo875if(Object obj);

    /* renamed from: new  reason: not valid java name */
    public Object[] m1164new(int i) {
        int i2 = fq0.this.f2222for;
        Object[] objArr = new Object[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = mo874do(i3, i);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: try  reason: not valid java name */
    public <T> T[] m1165try(T[] tArr, int i) {
        int i2 = fq0.this.f2222for;
        if (tArr.length < i2) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i2));
        }
        for (int i3 = 0; i3 < i2; i3++) {
            tArr[i3] = mo874do(i3, i);
        }
        if (tArr.length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }
}
