package com.apk;

import java.io.Serializable;

/* compiled from: SerializableCookie.java */
/* loaded from: classes8.dex */
public class qx implements Serializable {

    /* renamed from: do  reason: not valid java name */
    public String f3952do;

    /* renamed from: for  reason: not valid java name */
    public String f3953for;

    /* renamed from: if  reason: not valid java name */
    public String f3954if;

    /* renamed from: new  reason: not valid java name */
    public transient ig0 f3955new;

    public qx(String str, ig0 ig0Var) {
        this.f3955new = ig0Var;
        this.f3952do = str;
        this.f3954if = ig0Var.f2101do;
        this.f3953for = ig0Var.f2106new;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || qx.class != obj.getClass()) {
            return false;
        }
        qx qxVar = (qx) obj;
        String str = this.f3952do;
        if (str == null ? qxVar.f3952do == null : str.equals(qxVar.f3952do)) {
            String str2 = this.f3954if;
            if (str2 == null ? qxVar.f3954if == null : str2.equals(qxVar.f3954if)) {
                String str3 = this.f3953for;
                String str4 = qxVar.f3953for;
                return str3 != null ? str3.equals(str4) : str4 == null;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f3952do;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f3954if;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f3953for;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }
}
