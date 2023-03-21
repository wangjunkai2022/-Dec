package com.apk;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;

/* compiled from: CachedHashCodeArrayMap.java */
/* loaded from: classes8.dex */
public final class xr<K, V> extends ArrayMap<K, V> {

    /* renamed from: do  reason: not valid java name */
    public int f5786do;

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public void clear() {
        this.f5786do = 0;
        super.clear();
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public int hashCode() {
        if (this.f5786do == 0) {
            this.f5786do = super.hashCode();
        }
        return this.f5786do;
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public V put(K k, V v) {
        this.f5786do = 0;
        return (V) super.put(k, v);
    }

    @Override // androidx.collection.SimpleArrayMap
    public void putAll(SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        this.f5786do = 0;
        super.putAll(simpleArrayMap);
    }

    @Override // androidx.collection.SimpleArrayMap
    public V removeAt(int i) {
        this.f5786do = 0;
        return (V) super.removeAt(i);
    }

    @Override // androidx.collection.SimpleArrayMap
    public V setValueAt(int i, V v) {
        this.f5786do = 0;
        return (V) super.setValueAt(i, v);
    }
}
