package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import java.security.MessageDigest;
/* compiled from: Options.java */
/* loaded from: classes8.dex */
public final class mj implements kj {

    /* renamed from: if  reason: not valid java name */
    public final ArrayMap<lj<?>, Object> f3062if = new xr();

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        for (int i = 0; i < this.f3062if.size(); i++) {
            this.f3062if.keyAt(i).update(this.f3062if.valueAt(i), messageDigest);
        }
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        if (obj instanceof mj) {
            return this.f3062if.equals(((mj) obj).f3062if);
        }
        return false;
    }

    @Nullable
    /* renamed from: for  reason: not valid java name */
    public <T> T m1724for(@NonNull lj<T> ljVar) {
        return this.f3062if.containsKey(ljVar) ? (T) this.f3062if.get(ljVar) : ljVar.f2819do;
    }

    @Override // com.apk.kj
    public int hashCode() {
        return this.f3062if.hashCode();
    }

    /* renamed from: new  reason: not valid java name */
    public void m1725new(@NonNull mj mjVar) {
        this.f3062if.putAll((SimpleArrayMap<? extends lj<?>, ? extends Object>) mjVar.f3062if);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("Options{values=");
        m1016super.append(this.f3062if);
        m1016super.append('}');
        return m1016super.toString();
    }
}
