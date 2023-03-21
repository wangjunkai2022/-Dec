package com.apk;

import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: ObjectKey.java */
/* loaded from: classes8.dex */
public final class vr implements kj {

    /* renamed from: if  reason: not valid java name */
    public final Object f5195if;

    public vr(@NonNull Object obj) {
        eg.m593else(obj, "Argument must not be null");
        this.f5195if = obj;
    }

    @Override // com.apk.kj
    /* renamed from: do */
    public void mo76do(@NonNull MessageDigest messageDigest) {
        messageDigest.update(this.f5195if.toString().getBytes(kj.f2575do));
    }

    @Override // com.apk.kj
    public boolean equals(Object obj) {
        if (obj instanceof vr) {
            return this.f5195if.equals(((vr) obj).f5195if);
        }
        return false;
    }

    @Override // com.apk.kj
    public int hashCode() {
        return this.f5195if.hashCode();
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("ObjectKey{object=");
        m1016super.append(this.f5195if);
        m1016super.append('}');
        return m1016super.toString();
    }
}
