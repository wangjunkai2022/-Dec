package com.apk;

import androidx.appcompat.widget.ActivityChooserView;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* compiled from: PriorityBlockingQueue.java */
/* loaded from: classes8.dex */
public class az<E> extends AbstractQueue<E> implements BlockingQueue<E>, Serializable {

    /* renamed from: case  reason: not valid java name */
    public final Condition f199case;

    /* renamed from: do  reason: not valid java name */
    public final int f200do;

    /* renamed from: else  reason: not valid java name */
    public final ReentrantLock f201else;

    /* renamed from: for  reason: not valid java name */
    public transient az<E>.Cif<E> f202for;

    /* renamed from: goto  reason: not valid java name */
    public final Condition f203goto;

    /* renamed from: if  reason: not valid java name */
    public final AtomicInteger f204if = new AtomicInteger();

    /* renamed from: new  reason: not valid java name */
    public transient az<E>.Cif<E> f205new;

    /* renamed from: try  reason: not valid java name */
    public final ReentrantLock f206try;

    /* compiled from: PriorityBlockingQueue.java */
    /* renamed from: com.apk.az$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Iterator<E> {

        /* renamed from: do  reason: not valid java name */
        public az<E>.Cif<E> f207do;

        /* renamed from: for  reason: not valid java name */
        public E f208for;

        /* renamed from: if  reason: not valid java name */
        public az<E>.Cif<E> f209if;

        public Cdo() {
            az.this.m131do();
            try {
                az<E>.Cif<E> cif = az.this.f202for.f212for;
                this.f207do = cif;
                if (cif != null) {
                    this.f208for = cif.m136do();
                }
            } finally {
                az.this.m133if();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f207do != null;
        }

        @Override // java.util.Iterator
        public E next() {
            az<E>.Cif<E> cif;
            az.this.m131do();
            try {
                if (this.f207do != null) {
                    E e = this.f208for;
                    this.f209if = this.f207do;
                    az<E>.Cif<E> cif2 = this.f207do;
                    while (true) {
                        cif = cif2.f212for;
                        if (cif == cif2) {
                            cif = az.this.f202for.f212for;
                            break;
                        } else if (cif == null || cif.m136do() != null) {
                            break;
                        } else {
                            cif2 = cif;
                        }
                    }
                    this.f207do = cif;
                    this.f208for = cif == null ? null : cif.m136do();
                    return e;
                }
                throw new NoSuchElementException();
            } finally {
                az.this.m133if();
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
            r4.f210new.m130case(r1, r2);
         */
        @Override // java.util.Iterator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void remove() {
            /*
                r4 = this;
                com.apk.az<E>$if<E> r0 = r4.f209if
                if (r0 == 0) goto L2d
                com.apk.az r0 = com.apk.az.this
                r0.m131do()
                com.apk.az<E>$if<E> r0 = r4.f209if     // Catch: java.lang.Throwable -> L26
                r1 = 0
                r4.f209if = r1     // Catch: java.lang.Throwable -> L26
                com.apk.az r1 = com.apk.az.this     // Catch: java.lang.Throwable -> L26
                com.apk.az<E>$if<E> r1 = r1.f202for     // Catch: java.lang.Throwable -> L26
            L12:
                com.apk.az<E>$if<T> r2 = r1.f212for     // Catch: java.lang.Throwable -> L26
                r3 = r2
                r2 = r1
                r1 = r3
                if (r1 == 0) goto L20
                if (r1 != r0) goto L12
                com.apk.az r0 = com.apk.az.this     // Catch: java.lang.Throwable -> L26
                r0.m130case(r1, r2)     // Catch: java.lang.Throwable -> L26
            L20:
                com.apk.az r0 = com.apk.az.this
                r0.m133if()
                return
            L26:
                r0 = move-exception
                com.apk.az r1 = com.apk.az.this
                r1.m133if()
                throw r0
            L2d:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r0.<init>()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.az.Cdo.remove():void");
        }
    }

    /* compiled from: PriorityBlockingQueue.java */
    /* renamed from: com.apk.az$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif<T> {

        /* renamed from: do  reason: not valid java name */
        public boolean f211do = false;

        /* renamed from: for  reason: not valid java name */
        public az<E>.Cif<T> f212for;

        /* renamed from: if  reason: not valid java name */
        public bz<?> f213if;

        public Cif(az azVar, T t) {
            m137if(t);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.apk.bz, T, com.apk.bz<?>] */
        /* JADX WARN: Type inference failed for: r0v1, types: [T, E] */
        /* renamed from: do  reason: not valid java name */
        public T m136do() {
            ?? r0 = (T) this.f213if;
            if (r0 == 0) {
                return null;
            }
            return this.f211do ? r0 : r0.f470if;
        }

        /* renamed from: if  reason: not valid java name */
        public void m137if(T t) {
            if (t == null) {
                this.f213if = null;
            } else if (t instanceof bz) {
                this.f213if = (bz) t;
                this.f211do = true;
            } else {
                this.f213if = new bz<>(0, t);
            }
        }
    }

    public az() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f206try = reentrantLock;
        this.f199case = reentrantLock.newCondition();
        ReentrantLock reentrantLock2 = new ReentrantLock();
        this.f201else = reentrantLock2;
        this.f203goto = reentrantLock2.newCondition();
        this.f200do = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        az<E>.Cif<E> cif = new Cif<>(this, null);
        this.f202for = cif;
        this.f205new = cif;
    }

    /* renamed from: case  reason: not valid java name */
    public void m130case(az<E>.Cif<E> cif, az<E>.Cif<E> cif2) {
        cif.m137if(null);
        cif2.f212for = (az<E>.Cif<E>) cif.f212for;
        if (this.f205new == cif) {
            this.f205new = cif2;
        }
        if (this.f204if.getAndDecrement() == this.f200do) {
            this.f203goto.signal();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        m131do();
        try {
            Cif cif = (az<E>.Cif<E>) this.f202for;
            while (true) {
                Cif cif2 = cif.f212for;
                if (cif2 == null) {
                    break;
                }
                cif.f212for = cif;
                cif2.m137if(null);
                cif = (az<E>.Cif<E>) cif2;
            }
            this.f202for = this.f205new;
            if (this.f204if.getAndSet(0) == this.f200do) {
                this.f203goto.signal();
            }
        } finally {
            m133if();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        m131do();
        try {
            Cif cif = this.f202for;
            do {
                cif = cif.f212for;
                if (cif == null) {
                    return false;
                }
            } while (!obj.equals(cif.m136do()));
            return true;
        } finally {
            m133if();
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m131do() {
        this.f201else.lock();
        this.f206try.lock();
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        return drainTo(collection, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: for  reason: not valid java name */
    public final synchronized E m132for(az<E>.Cif<E> cif) {
        boolean z;
        if (cif == 0) {
            Cif cif2 = (az<E>.Cif<E>) this.f202for;
            az<E>.Cif<E> cif3 = (az<E>.Cif<E>) cif2.f212for;
            cif2.f212for = cif2;
            this.f202for = cif3;
            E m136do = cif3.m136do();
            cif3.m137if(null);
            return m136do;
        }
        Cif cif4 = this.f202for;
        while (true) {
            Cif cif5 = (az<E>.Cif<E>) cif4.f212for;
            if (cif5 == null) {
                z = false;
                break;
            } else if (cif5.f213if.f469do < cif.f213if.f469do) {
                cif4.f212for = cif;
                cif.f212for = cif5;
                z = true;
                break;
            } else {
                cif4 = cif5;
            }
        }
        if (!z) {
            this.f205new.f212for = cif;
            this.f205new = cif;
        }
        return null;
    }

    /* renamed from: if  reason: not valid java name */
    public void m133if() {
        this.f206try.unlock();
        this.f201else.unlock();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new Cdo();
    }

    /* renamed from: new  reason: not valid java name */
    public final void m134new() {
        ReentrantLock reentrantLock = this.f206try;
        reentrantLock.lock();
        try {
            this.f199case.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public boolean offer(E e, long j, TimeUnit timeUnit) throws InterruptedException {
        if (e != null) {
            long nanos = timeUnit.toNanos(j);
            ReentrantLock reentrantLock = this.f201else;
            AtomicInteger atomicInteger = this.f204if;
            reentrantLock.lockInterruptibly();
            while (atomicInteger.get() == this.f200do) {
                try {
                    if (nanos <= 0) {
                        return false;
                    }
                    nanos = this.f203goto.awaitNanos(nanos);
                } finally {
                    reentrantLock.unlock();
                }
            }
            m132for(new Cif<>(this, e));
            int andIncrement = atomicInteger.getAndIncrement();
            if (andIncrement + 1 < this.f200do) {
                this.f203goto.signal();
            }
            if (andIncrement == 0) {
                m134new();
                return true;
            }
            return true;
        }
        throw null;
    }

    @Override // java.util.Queue
    public E peek() {
        if (this.f204if.get() == 0) {
            return null;
        }
        ReentrantLock reentrantLock = this.f206try;
        reentrantLock.lock();
        try {
            az<E>.Cif<E> cif = this.f202for.f212for;
            if (cif == null) {
                return null;
            }
            return cif.m136do();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public E poll(long j, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j);
        AtomicInteger atomicInteger = this.f204if;
        ReentrantLock reentrantLock = this.f206try;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                if (nanos <= 0) {
                    return null;
                }
                nanos = this.f199case.awaitNanos(nanos);
            } finally {
                reentrantLock.unlock();
            }
        }
        E m132for = m132for(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.f199case.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.f200do) {
            m135try();
        }
        return m132for;
    }

    @Override // java.util.concurrent.BlockingQueue
    public void put(E e) throws InterruptedException {
        if (e != null) {
            az<E>.Cif<E> cif = new Cif<>(this, e);
            ReentrantLock reentrantLock = this.f201else;
            AtomicInteger atomicInteger = this.f204if;
            reentrantLock.lockInterruptibly();
            while (atomicInteger.get() == this.f200do) {
                try {
                    this.f203goto.await();
                } finally {
                    reentrantLock.unlock();
                }
            }
            m132for(cif);
            int andIncrement = atomicInteger.getAndIncrement();
            if (andIncrement + 1 < this.f200do) {
                this.f203goto.signal();
            }
            if (andIncrement == 0) {
                m134new();
                return;
            }
            return;
        }
        throw null;
    }

    @Override // java.util.concurrent.BlockingQueue
    public int remainingCapacity() {
        return this.f200do - this.f204if.get();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean remove(Object obj) {
        az<E>.Cif<E> cif;
        if (obj == null) {
            return false;
        }
        m131do();
        try {
            az<E>.Cif<E> cif2 = this.f202for;
            do {
                cif = cif2;
                cif2 = cif2.f212for;
                if (cif2 == null) {
                    return false;
                }
            } while (!obj.equals(cif2.m136do()));
            m130case(cif2, cif);
            return true;
        } finally {
            m133if();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f204if.get();
    }

    @Override // java.util.concurrent.BlockingQueue
    public E take() throws InterruptedException {
        AtomicInteger atomicInteger = this.f204if;
        ReentrantLock reentrantLock = this.f206try;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                this.f199case.await();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        E m132for = m132for(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.f199case.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.f200do) {
            m135try();
        }
        return m132for;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        m131do();
        try {
            Object[] objArr = new Object[this.f204if.get()];
            int i = 0;
            Cif cif = this.f202for.f212for;
            while (cif != null) {
                int i2 = i + 1;
                objArr[i] = cif.m136do();
                cif = cif.f212for;
                i = i2;
            }
            return objArr;
        } finally {
            m133if();
        }
    }

    /* renamed from: try  reason: not valid java name */
    public final void m135try() {
        ReentrantLock reentrantLock = this.f201else;
        reentrantLock.lock();
        try {
            this.f203goto.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i) {
        if (collection != null) {
            if (collection != this) {
                boolean z = false;
                if (i <= 0) {
                    return 0;
                }
                ReentrantLock reentrantLock = this.f206try;
                reentrantLock.lock();
                try {
                    int min = Math.min(i, this.f204if.get());
                    az<E>.Cif<E> cif = this.f202for;
                    int i2 = 0;
                    while (i2 < min) {
                        az<E>.Cif<E> cif2 = cif.f212for;
                        collection.add((Object) cif2.m136do());
                        cif2.m137if(null);
                        cif.f212for = (az<E>.Cif<T>) cif;
                        i2++;
                        cif = cif2;
                    }
                    if (i2 > 0) {
                        this.f202for = cif;
                        if (this.f204if.getAndAdd(-i2) == this.f200do) {
                            z = true;
                        }
                    }
                    return min;
                } finally {
                    reentrantLock.unlock();
                    if (0 != 0) {
                        m135try();
                    }
                }
            }
            throw new IllegalArgumentException();
        }
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        m131do();
        try {
            int i = this.f204if.get();
            if (tArr.length < i) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
            }
            int i2 = 0;
            Cif cif = this.f202for.f212for;
            while (cif != null) {
                tArr[i2] = cif.m136do();
                cif = cif.f212for;
                i2++;
            }
            if (tArr.length > i2) {
                tArr[i2] = null;
            }
            return tArr;
        } finally {
            m133if();
        }
    }

    @Override // java.util.Queue
    public E poll() {
        AtomicInteger atomicInteger = this.f204if;
        E e = null;
        if (atomicInteger.get() == 0) {
            return null;
        }
        int i = -1;
        ReentrantLock reentrantLock = this.f206try;
        reentrantLock.lock();
        try {
            if (atomicInteger.get() > 0) {
                e = m132for(null);
                i = atomicInteger.getAndDecrement();
                if (i > 1) {
                    this.f199case.signal();
                }
            }
            reentrantLock.unlock();
            if (i == this.f200do) {
                m135try();
            }
            return e;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.util.Queue, java.util.concurrent.BlockingQueue
    public boolean offer(E e) {
        if (e != null) {
            AtomicInteger atomicInteger = this.f204if;
            if (atomicInteger.get() == this.f200do) {
                return false;
            }
            int i = -1;
            az<E>.Cif<E> cif = new Cif<>(this, e);
            ReentrantLock reentrantLock = this.f201else;
            reentrantLock.lock();
            try {
                if (atomicInteger.get() < this.f200do) {
                    m132for(cif);
                    i = atomicInteger.getAndIncrement();
                    if (i + 1 < this.f200do) {
                        this.f203goto.signal();
                    }
                }
                if (i == 0) {
                    m134new();
                }
                return i >= 0;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw null;
    }
}
