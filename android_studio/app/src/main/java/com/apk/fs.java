package com.apk;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: MultiClassKey.java */
/* loaded from: classes8.dex */
public class fs {

    /* renamed from: do  reason: not valid java name */
    public Class<?> f1461do;

    /* renamed from: for  reason: not valid java name */
    public Class<?> f1462for;

    /* renamed from: if  reason: not valid java name */
    public Class<?> f1463if;

    public fs() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || fs.class != obj.getClass()) {
            return false;
        }
        fs fsVar = (fs) obj;
        return this.f1461do.equals(fsVar.f1461do) && this.f1463if.equals(fsVar.f1463if) && gs.m1038for(this.f1462for, fsVar.f1462for);
    }

    public int hashCode() {
        int hashCode = (this.f1463if.hashCode() + (this.f1461do.hashCode() * 31)) * 31;
        Class<?> cls = this.f1462for;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("MultiClassKey{first=");
        m1016super.append(this.f1461do);
        m1016super.append(", second=");
        m1016super.append(this.f1463if);
        m1016super.append('}');
        return m1016super.toString();
    }

    public fs(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.f1461do = cls;
        this.f1463if = cls2;
        this.f1462for = cls3;
    }
}
