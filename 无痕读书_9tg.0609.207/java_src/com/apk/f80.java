package com.apk;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.AbstractMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* compiled from: SwlSoftReferenceMap.java */
/* loaded from: classes7.dex */
public class f80<K, V> extends HashMap<K, V> {

    /* renamed from: do  reason: not valid java name */
    public final ReferenceQueue<V> f1257do = new ReferenceQueue<>();

    /* renamed from: if  reason: not valid java name */
    public final HashMap<K, Cdo<K, V>> f1258if = new HashMap<>();

    /* compiled from: SwlSoftReferenceMap.java */
    /* renamed from: com.apk.f80$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo<K, V> extends SoftReference<V> {

        /* renamed from: do  reason: not valid java name */
        public K f1259do;

        public Cdo(K k, V v, ReferenceQueue referenceQueue) {
            super(v, referenceQueue);
            this.f1259do = k;
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        m751do();
        HashMap<K, Cdo<K, V>> hashMap = this.f1258if;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        m751do();
        return this.f1258if.containsKey(obj);
    }

    /* renamed from: do  reason: not valid java name */
    public final void m751do() {
        while (true) {
            Cdo cdo = (Cdo) this.f1257do.poll();
            if (cdo == null) {
                return;
            }
            this.f1258if.remove(cdo.f1259do);
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        m751do();
        HashSet hashSet = new HashSet();
        for (Map.Entry<K, Cdo<K, V>> entry : this.f1258if.entrySet()) {
            Cdo<K, V> value = entry.getValue();
            hashSet.add(new AbstractMap.SimpleEntry(value.f1259do, value.get()));
        }
        return hashSet;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        m751do();
        Cdo<K, V> cdo = this.f1258if.get(obj);
        if (cdo == null) {
            return null;
        }
        return cdo.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        m751do();
        Cdo<K, V> put = this.f1258if.put(k, new Cdo<>(k, v, this.f1257do));
        if (put == null) {
            return null;
        }
        return put.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m751do();
        Cdo<K, V> remove = this.f1258if.remove(obj);
        if (remove == null) {
            return null;
        }
        return remove.get();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public int size() {
        m751do();
        return this.f1258if.size();
    }
}
