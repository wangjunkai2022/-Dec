package com.apk;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: SoftReferenceMap.java */
/* loaded from: classes8.dex */
public class gg<K, V> extends HashMap<K, V> {

    /* renamed from: do  reason: not valid java name */
    public final ReferenceQueue<V> f1562do = new ReferenceQueue<>();

    /* renamed from: if  reason: not valid java name */
    public final HashMap<K, Cdo<K, V>> f1563if = new HashMap<>();

    /* compiled from: SoftReferenceMap.java */
    /* renamed from: com.apk.gg$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo<K, V> extends SoftReference<V> {

        /* renamed from: do  reason: not valid java name */
        public K f1564do;

        public Cdo(K k, V v, ReferenceQueue referenceQueue) {
            super(v, referenceQueue);
            this.f1564do = k;
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        m957do();
        HashMap<K, Cdo<K, V>> hashMap = this.f1563if;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        m957do();
        return this.f1563if.containsKey(obj);
    }

    /* renamed from: do  reason: not valid java name */
    public final void m957do() {
        while (true) {
            Cdo cdo = (Cdo) this.f1562do.poll();
            if (cdo == null) {
                return;
            }
            this.f1563if.remove(cdo.f1564do);
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        m957do();
        HashSet hashSet = new HashSet();
        for (Map.Entry<K, Cdo<K, V>> entry : this.f1563if.entrySet()) {
            Cdo<K, V> value = entry.getValue();
            hashSet.add(new AbstractMap.SimpleEntry(value.f1564do, value.get()));
        }
        return hashSet;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        m957do();
        Cdo<K, V> cdo = this.f1563if.get(obj);
        if (cdo == null) {
            return null;
        }
        return cdo.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        m957do();
        Cdo<K, V> put = this.f1563if.put(k, new Cdo<>(k, v, this.f1562do));
        if (put == null) {
            return null;
        }
        return put.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m957do();
        Cdo<K, V> remove = this.f1563if.remove(obj);
        if (remove == null) {
            return null;
        }
        return remove.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public int size() {
        m957do();
        return this.f1563if.size();
    }
}
