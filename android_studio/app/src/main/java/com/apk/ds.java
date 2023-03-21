package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: LruCache.java */
/* loaded from: classes8.dex */
public class ds<T, Y> {

    /* renamed from: do  reason: not valid java name */
    public final Map<T, Y> f958do = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: for  reason: not valid java name */
    public long f959for;

    /* renamed from: if  reason: not valid java name */
    public long f960if;

    public ds(long j) {
        this.f960if = j;
    }

    @Nullable
    /* renamed from: do  reason: not valid java name */
    public synchronized Y m511do(@NonNull T t) {
        return this.f958do.get(t);
    }

    /* renamed from: for  reason: not valid java name */
    public void mo512for(@NonNull T t, @Nullable Y y) {
    }

    /* renamed from: if  reason: not valid java name */
    public int mo513if(@Nullable Y y) {
        return 1;
    }

    @Nullable
    /* renamed from: new  reason: not valid java name */
    public synchronized Y m514new(@NonNull T t, @Nullable Y y) {
        long mo513if = mo513if(y);
        if (mo513if >= this.f960if) {
            mo512for(t, y);
            return null;
        }
        if (y != null) {
            this.f959for += mo513if;
        }
        Y put = this.f958do.put(t, y);
        if (put != null) {
            this.f959for -= mo513if(put);
            if (!put.equals(y)) {
                mo512for(t, put);
            }
        }
        m515try(this.f960if);
        return put;
    }

    /* renamed from: try  reason: not valid java name */
    public synchronized void m515try(long j) {
        while (this.f959for > j) {
            Iterator<Map.Entry<T, Y>> it = this.f958do.entrySet().iterator();
            Map.Entry<T, Y> next = it.next();
            Y value = next.getValue();
            this.f959for -= mo513if(value);
            T key = next.getKey();
            it.remove();
            mo512for(key, value);
        }
    }
}
