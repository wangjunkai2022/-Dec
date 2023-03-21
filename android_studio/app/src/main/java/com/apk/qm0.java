package com.apk;

import java.util.HashMap;
import java.util.Map;

/* compiled from: CleanerTransformations.java */
/* loaded from: classes7.dex */
public class qm0 {

    /* renamed from: do  reason: not valid java name */
    public Map f3894do = new HashMap();

    /* renamed from: if  reason: not valid java name */
    public nn0 f3895if = new nn0();

    /* renamed from: do  reason: not valid java name */
    public nn0 m2147do(String str) {
        if (str != null) {
            return (nn0) this.f3894do.get(str.toLowerCase());
        }
        return null;
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m2148if(String str) {
        return str != null && this.f3894do.containsKey(str.toLowerCase());
    }
}
