package com.apk;

import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: MyCacheKey.java */
/* loaded from: classes8.dex */
public class u30 implements kj {

    /* renamed from: for  reason: not valid java name */
    public final kj f4840for;

    /* renamed from: if  reason: not valid java name */
    public final kj f4841if;

    public u30(kj kjVar, kj kjVar2) {
        this.f4841if = kjVar;
        this.f4840for = kjVar2;
    }

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        this.f4841if.mo76do(messageDigest);
        this.f4840for.mo76do(messageDigest);
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        if (obj instanceof u30) {
            u30 u30Var = (u30) obj;
            return this.f4841if.equals(u30Var.f4841if) && this.f4840for.equals(u30Var.f4840for);
        }
        return false;
    }

    @Override // com.apk.kj
    public int hashCode() {
        return this.f4840for.hashCode() + (this.f4841if.hashCode() * 31);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("DataCacheKey{sourceKey=");
        m1016super.append(this.f4841if);
        m1016super.append(", signature=");
        m1016super.append(this.f4840for);
        m1016super.append('}');
        return m1016super.toString();
    }
}
