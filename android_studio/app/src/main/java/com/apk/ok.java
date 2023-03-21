package com.apk;

import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: DataCacheKey.java */
/* loaded from: classes8.dex */
public final class ok implements kj {

    /* renamed from: for  reason: not valid java name */
    public final kj f3447for;

    /* renamed from: if  reason: not valid java name */
    public final kj f3448if;

    public ok(kj kjVar, kj kjVar2) {
        this.f3448if = kjVar;
        this.f3447for = kjVar2;
    }

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        this.f3448if.mo76do(messageDigest);
        this.f3447for.mo76do(messageDigest);
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        if (obj instanceof ok) {
            ok okVar = (ok) obj;
            return this.f3448if.equals(okVar.f3448if) && this.f3447for.equals(okVar.f3447for);
        }
        return false;
    }

    @Override // com.apk.kj
    public int hashCode() {
        return this.f3447for.hashCode() + (this.f3448if.hashCode() * 31);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("DataCacheKey{sourceKey=");
        m1016super.append(this.f3448if);
        m1016super.append(", signature=");
        m1016super.append(this.f3447for);
        m1016super.append('}');
        return m1016super.toString();
    }
}
