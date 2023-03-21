package com.apk;

import com.apk.hq0;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Map;
import java.util.Set;

/* compiled from: ArrayMap.java */
/* loaded from: classes7.dex */
public class fq0<K, V> extends iq0<K, V> implements Map<K, V> {

    /* renamed from: goto  reason: not valid java name */
    public hq0<K, V> f1422goto;

    /* compiled from: ArrayMap.java */
    /* renamed from: com.apk.fq0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo extends hq0<K, V> {
        public Cdo() {
        }

        @Override // com.apk.hq0
        /* renamed from: do  reason: not valid java name */
        public Object mo874do(int i, int i2) {
            return fq0.this.f2223if[(i << 1) + i2];
        }

        @Override // com.apk.hq0
        /* renamed from: if  reason: not valid java name */
        public int mo875if(Object obj) {
            return fq0.this.m1268try(obj);
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public final hq0<K, V> m873catch() {
        if (this.f1422goto == null) {
            this.f1422goto = new Cdo();
        }
        return this.f1422goto;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        hq0<K, V> m873catch = m873catch();
        if (m873catch.f1962do == null) {
            m873catch.f1962do = new hq0.Cif();
        }
        return m873catch.f1962do;
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        hq0<K, V> m873catch = m873catch();
        if (m873catch.f1964if == null) {
            m873catch.f1964if = new hq0.Cfor();
        }
        return m873catch.f1964if;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        int size = map.size() + this.f2222for;
        int i = this.f2222for;
        int[] iArr = this.f2221do;
        if (iArr.length < size) {
            Object[] objArr = this.f2223if;
            m1263do(size);
            if (this.f2222for > 0) {
                System.arraycopy(iArr, 0, this.f2221do, 0, i);
                System.arraycopy(objArr, 0, this.f2223if, 0, i << 1);
            }
            iq0.m1259for(iArr, objArr, i);
        }
        if (this.f2222for == i) {
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
            return;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Map
    public Collection<V> values() {
        hq0<K, V> m873catch = m873catch();
        if (m873catch.f1963for == null) {
            m873catch.f1963for = new hq0.Ctry();
        }
        return m873catch.f1963for;
    }
}
