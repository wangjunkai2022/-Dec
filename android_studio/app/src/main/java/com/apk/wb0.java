package com.apk;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: SoftReferenceMap.java */
/* loaded from: classes7.dex */
public class wb0<K, V> extends HashMap<K, V> {

    /* renamed from: do  reason: not valid java name */
    public final ReferenceQueue<V> f5252do = new ReferenceQueue<>();

    /* renamed from: if  reason: not valid java name */
    public final HashMap<K, Cdo<K, V>> f5253if = new HashMap<>();

    /* compiled from: SoftReferenceMap.java */
    /* renamed from: com.apk.wb0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo<K, V> extends SoftReference<V> {

        /* renamed from: do  reason: not valid java name */
        public K f5254do;

        public Cdo(K k, V v, ReferenceQueue referenceQueue) {
            super(v, referenceQueue);
            this.f5254do = k;
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        m2906do();
        HashMap<K, Cdo<K, V>> hashMap = this.f5253if;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        m2906do();
        return this.f5253if.containsKey(obj);
    }

    /* renamed from: do  reason: not valid java name */
    public final void m2906do() {
        while (true) {
            Cdo cdo = (Cdo) this.f5252do.poll();
            if (cdo == null) {
                return;
            }
            this.f5253if.remove(cdo.f5254do);
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        m2906do();
        HashSet hashSet = new HashSet();
        for (Map.Entry<K, Cdo<K, V>> entry : this.f5253if.entrySet()) {
            Cdo<K, V> value = entry.getValue();
            hashSet.add(new AbstractMap.SimpleEntry(value.f5254do, value.get()));
        }
        return hashSet;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        m2906do();
        Cdo<K, V> cdo = this.f5253if.get(obj);
        if (cdo == null) {
            return null;
        }
        return cdo.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        m2906do();
        Cdo<K, V> put = this.f5253if.put(k, new Cdo<>(k, v, this.f5252do));
        if (put == null) {
            return null;
        }
        return put.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m2906do();
        Cdo<K, V> remove = this.f5253if.remove(obj);
        if (remove == null) {
            return null;
        }
        return remove.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public int size() {
        m2906do();
        return this.f5253if.size();
    }
}
